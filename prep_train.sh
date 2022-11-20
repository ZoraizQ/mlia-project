## download / upload Task500_BrainTumor.zip

## shen
## unzip Task500_BrainTumor.zip -d nnUNet_raw_data_base/nnUNet_raw_data
# unzip Task500_BrainTumor_128_128.zip -d nnUNet_raw_data_base/nnUNet_raw_data

# ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTr | wc -l
# ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTs | wc -l
# ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/labelsTr | wc -l
# ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/labelsTs | wc -l

# python create_braintumor_dataset_json.py

## preprocessing 
# python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 --verify_dataset_integrity -no_pp -pl3d None

# python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 -pl3d None

## training



for FOLD in 0 # 1 2 3 4
do
    echo "Training Fold=$FOLD"
python nnunet/run/run_training.py 2d nnUNetTrainerV2 Task500_BrainTumor $FOLD --npz
done

# python nnunet/inference/predict_simple.py -i "imagesTs" -o "predTs" -t 500 -m 2d --save_npz
