#!/bin/bash

# 输入文件夹路径
input_folder="./"

# 输出文件夹路径
output_folder="./fastp_output/"

# 创建输出文件夹（如果不存在）
mkdir -p "$output_folder"

# 循环处理每个FASTQ文件
for input_file in "$input_folder"/*.fq; do
    # 获取文件名（不包含路径和扩展名）
    filename=$(basename -- "$input_file")
    filename_noext="${filename%.*}"

    # 构造输出文件路径
    output_file="$output_folder/$filename_noext.fq"

    # 执行Fastp处理
    fastp -i "$input_file" -o "$output_file" -w 16 -q 20 -l 18
done

echo "Fastp processing completed for all files in the folder."
