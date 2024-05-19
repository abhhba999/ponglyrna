import os
import pandas as pd
import numpy as np  

def read_data(a):
    # 拼接文件路径
    folder_path = a
    pos_file_path = os.path.join(folder_path, 'positive.txt')
    neg_file_path = os.path.join(folder_path, 'negative.txt')

    # 读取正样本和负样本文件，生成DataFrame
    pos_df = pd.read_csv(pos_file_path, header=None, names=['sequence'])
    pos_df['label'] = 1
    neg_df = pd.read_csv(neg_file_path, header=None, names=['sequence'])
    neg_df['label'] = 0
    df = pd.concat([pos_df, neg_df], ignore_index=True)
    return df