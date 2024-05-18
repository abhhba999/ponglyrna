# PONglyRNA

PONglyRNA is a tool for identifying potential O-linked and N-linked glycosylation sites from RNA base sequences.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
  - [Method 1: Train from Scratch](#method-1-train-from-scratch)
  - [Method 2: Use Pre-trained Model](#method-2-use-pre-trained-model)
- [License](#license)
- [Contributing](#contributing)


## Introduction

PONglyRNA is designed to help researchers identify potential O-linked and N-linked glycosylation sites in RNA sequences. The tool includes dataset preprocessing, training code, and the source code for a web server.

## Features

- **Dataset Preprocessing:** Tools for preparing and cleaning RNA sequence data.
- **Training Code:** Scripts and notebooks for training glycosylation site prediction models.
- **Web Server:** Source code to run a web-based interface for predicting glycosylation sites.

## Usage

### Method 1: Train from Scratch

1. Clone the repository:
    ```bash
    git clone https://github.com/abhhba999/ponglyrna.git
    cd ponglyrna
    ```

2. Create a conda environment:
    ```bash
    conda create -n ponglyrna python=3.8
    conda activate ponglyrna
    ```

3. Install the required dependencies:
    ```bash
    pip install -r requirements.txt
    ```

4. Run the preprocessing script:
    ```bash
    bash preprocess.sh
    ```

5. Open `train.ipynb` in Jupyter Notebook or Jupyter Lab, and follow the instructions to train your model.
6. Select your own trained model and place it in the specified directory "./model".

### Method 2: Use Pre-trained Model

1. Set up the Python environment (refer to steps 2 and 3 above).

2. Download the pre-trained model and place it in the specified directory "./model".

### Start Webserver

Run the webserver using Streamlit:
    ```bash
    streamlit run webserver.py
    ```
Then, navigate to the provided local URL in your web browser.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Contributing

We welcome contributions! Please read our [CONTRIBUTING](./CONTRIBUTING.md) guidelines for details on how to submit pull requests and report issues.





