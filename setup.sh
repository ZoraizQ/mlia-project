## DEPENDENCY SETUP

# git clone https://github.com/MIC-DKFZ/nnUNet.git
# cd nnUNet

# python -c 'import torch;print(torch.backends.cudnn.version())'
## 7605

# python -c 'import torch;print(torch.__version__)'   
## 1.9.1+cu102

# pip install -e .

# pip install --upgrade git+https://github.com/FabianIsensee/hiddenlayer.git@more_plotted_details#egg=hiddenlayer

## DATA SETUP

## mkdir -p nnUNet_raw_data_base/nnUNet_raw_data
## mkdir nnUNet_preprocessed
## mkdir nnUNet_trained_models

# export nnUNet_raw_data_base="$(pwd)/nnUNet_raw_data_base"
# export nnUNet_preprocessed="$(pwd)/nnUNet_preprocessed"
# export RESULTS_FOLDER="$(pwd)/nnUNet_trained_models"

# echo $nnUNet_raw_data_base
# echo $nnUNet_preprocessed
# echo $RESULTS_FOLDER

## download / upload Task500_BrainTumor.zip
## unzip Task500_BrainTumor.zip -d nnUNet_raw_data_base/nnUNet_raw_data

## python create_braintumor_dataset_json.py

# python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 --verify_dataset_integrity

## preprocessing
# python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 -no_pp

## training

for FOLD in 0 1 2 3 4
do
    echo "Training Fold=$FOLD"
# python nnunet/run/run_training.py 2d nnUNetTrainerV2 Task500_BrainTumor $FOLD --npz
done

