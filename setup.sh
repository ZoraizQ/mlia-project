## DEPENDENCY SETUP

python -c 'import torch;print(torch.backends.cudnn.version())'
## 7605

python -c 'import torch;print(torch.__version__)'   
## 1.9.1+cu102

pip install -e .

pip install --upgrade git+https://github.com/FabianIsensee/hiddenlayer.git@more_plotted_details#egg=hiddenlayer

pip install torch-summary

module load gcc/9.2.0

export nnUNet_raw_data_base="$(pwd)/nnUNet_raw_data_base"
export nnUNet_preprocessed="$(pwd)/nnUNet_preprocessed"
export RESULTS_FOLDER="$(pwd)/nnUNet_trained_models"

echo $nnUNet_raw_data_base
echo $nnUNet_preprocessed
echo $RESULTS_FOLDER

