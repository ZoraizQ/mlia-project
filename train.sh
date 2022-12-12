trap 'exit 130' INT

## training
# for FOLD in 0 1 2 3 4 "all"
# do
#     echo "Training Fold=$FOLD"
#     python nnunet/run/run_training.py 2d nnUNetTrainerV2_mlia Task500_BrainTumor $FOLD --npz
# done

# for TRAINER_CLASS in "nnUNetTrainerV2BraTSRegions_DA4_BN"
# do
#     echo "Trainer Class=$TRAINER_CLASS"
#     for FOLD in 0 # 0 1 2 3 4 
#     do
#         echo "Training Fold=$FOLD"
#         python nnunet/run/run_training.py 2d $TRAINER_CLASS Task500_BrainTumor $FOLD
#     done
# done


for TRAINER_CLASS in "nnUNetTrainerV2BraTSRegions" "nnUNetTrainerV2BraTSRegions_DA3_BN_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN_BD" "nnUNetTrainerV2BraTSRegions_BN" "nnUNetTrainerV2BraTSRegions_Dice" "nnUNetTrainerV2BraTSRegions_DA3" "nnUNetTrainerV2BraTSRegions_DA3_BN" "nnUNetTrainerV2BraTSRegions_DA3_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN" 
do
    echo "Trainer Class=$TRAINER_CLASS"
    for FOLD in "all" 0 # 0 1 2 3 4 
    do
        echo "Training Fold=$FOLD"
        python nnunet/run/run_training.py 2d $TRAINER_CLASS Task500_BrainTumor $FOLD
    done
done


# # 
# for TRAINER_CLASS in "nnUNetTrainerV2BraTSRegions" "nnUNetTrainerV2BraTSRegions_DA3_BN_BD" "nnUNetTrainerV2BraTSRegions_BN" "nnUNetTrainerV2BraTSRegions_Dice" "nnUNetTrainerV2BraTSRegions_DA3" "nnUNetTrainerV2BraTSRegions_DA3_BN" "nnUNetTrainerV2BraTSRegions_DA3_BD" "nnUNetTrainerV2BraTSRegions_DA4_BN" "nnUNetTrainerV2BraTSRegions_DA4_BN_BD"
# do
#     echo "Trainer Class=$TRAINER_CLASS"
#     for FOLD in "all" # 0 1 2 3 4 
#     do
#         echo "Training Fold=$FOLD"
#         python nnunet/run/run_training.py 2d $TRAINER_CLASS Task501_BrainTumor $FOLD
#     done
# done