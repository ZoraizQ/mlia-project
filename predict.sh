# for file in *; do mv "${file}" "${file//\_0000/}"; done

# predict on test images with all trainer class models
for TRAINER_CLASS in "nnUNetTrainerV2BraTSRegions" "nnUNetTrainerV2BraTSRegions_BN" "nnUNetTrainerV2BraTSRegions_DA3" "nnUNetTrainerV2BraTSRegions_Dice" "nnUNetTrainerV2BraTSRegions_DA3_BN" "nnUNetTrainerV2BraTSRegions_DA3_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN" "nnUNetTrainerV2BraTSRegions_DA3_BN_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN_BD"
do
    echo "predTs_$TRAINER_CLASS"
    python "nnunet/inference/predict_simple.py" -i "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTs" -o "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/predTs_$TRAINER_CLASS" -t Task500_BrainTumor -m 2d -tr $TRAINER_CLASS -f 'all' --save_npz
done


# for TRAINER_CLASS in "nnUNetTrainerV2BraTSRegions" "nnUNetTrainerV2BraTSRegions_BN" "nnUNetTrainerV2BraTSRegions_Dice" "nnUNetTrainerV2BraTSRegions_DA4_BN" "nnUNetTrainerV2BraTSRegions_DA3_BN_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN_BD"
# do
#     echo "predTs_$TRAINER_CLASS"
#     python "nnunet/inference/predict_simple.py" -i "nnUNet_raw_data_base/nnUNet_raw_data/Task501_BrainTumor/imagesTs" -o "nnUNet_raw_data_base/nnUNet_raw_data/Task501_BrainTumor/predTs_$TRAINER_CLASS" -t Task501_BrainTumor -m 2d -tr $TRAINER_CLASS -f 'all' --save_npz
# done



