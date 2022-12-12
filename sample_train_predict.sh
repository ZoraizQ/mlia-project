TRAINER_CLASS="nnUNetTrainerV2BraTSRegions_DA4_BN_BD"

# train
python "nnunet/run/run_training.py" 2d $TRAINER_CLASS Task500_BrainTumor all

# predict
python "nnunet/inference/predict_simple.py" -i "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTs" -o "nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/predTs_$TRAINER_CLASS" -t Task500_BrainTumor -m 2d -tr $TRAINER_CLASS -f 'all' --save_npz


# zip -r nnUNet_trained_models.zip nnUNet_trained_models/nnUNet/2d/Task500_BrainTumor/nnUNetTrainerV2BraTSRegions_DA4_BN_BD__nnUNetPlansv2.1 -x '*validation*' -x '*gt_niftis*'