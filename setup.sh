## DEPENDENCY SETUP

# git clone https://github.com/MIC-DKFZ/nnUNet.git
# cd nnUNet

python -c 'import torch;print(torch.backends.cudnn.version())'
## 7605

python -c 'import torch;print(torch.__version__)'   
## 1.9.1+cu102

pip install -e .

pip install --upgrade git+https://github.com/FabianIsensee/hiddenlayer.git@more_plotted_details#egg=hiddenlayer

pip install gdown
pip install --upgrade gdown

module load gcc/9.2.0


## DATA SETUP

# rm -rf nnUNet_raw_data_base
# rm -rf nnUNet_preprocessed
# rm -rf nnUNet_trained_models

# mkdir -p nnUNet_raw_data_base/nnUNet_raw_data
# mkdir nnUNet_preprocessed
# mkdir nnUNet_trained_models

# python download_data.py

export nnUNet_raw_data_base="$(pwd)/nnUNet_raw_data_base"
export nnUNet_preprocessed="$(pwd)/nnUNet_preprocessed"
export RESULTS_FOLDER="$(pwd)/nnUNet_trained_models"

echo $nnUNet_raw_data_base
echo $nnUNet_preprocessed
echo $RESULTS_FOLDER

