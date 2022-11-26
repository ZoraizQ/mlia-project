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



# for FOLD in 0 1 2 3 4 "all"
# do
#     echo "Training Fold=$FOLD"
# python nnunet/run/run_training.py 2d nnUNetTrainerV2_mlia Task500_BrainTumor $FOLD --npz
# done

# nnUNetTrainerV2BraTSRegions
# nnUNetTrainerV2BraTSRegions_BN
# nnUNetTrainerV2BraTSRegions_Dice

# nnUNetTrainerV2BraTSRegions_DA3
# nnUNetTrainerV2BraTSRegions_DA3_BN
# nnUNetTrainerV2BraTSRegions_DA3_BD
# nnUNetTrainerV2BraTSRegions_DA3_BN_BD

# nnUNetTrainerV2BraTSRegions_DA4_BN
# nnUNetTrainerV2BraTSRegions_DA4_BN_BD

# python nnunet/inference/predict_simple.py -i "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTs" -o "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/predTs" -t Task500_BrainTumor -m 2d --save_npz -tr nnUNetTrainerV2_mlia -f 'all'