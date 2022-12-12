# TASK_NAME="Task501_BrainTumor"
TASK_NAME="Task500_BrainTumor"

PRED_PATH="nnUNet_raw_data_base/nnUNet_raw_data/$TASK_NAME/predTs"

# C1="nnUNetTrainerV2BraTSRegions_BN"
C1="nnUNetTrainerV2BraTSRegions_DA4_BN"
C2="nnUNetTrainerV2BraTSRegions_DA3_BN_BD"
C3="nnUNetTrainerV2BraTSRegions_DA4_BN_BD"

P1="$PRED_PATH"_"$C1"
P2="$PRED_PATH"_"$C2"
P3="$PRED_PATH"_"$C3"
OE="$PRED_PATH"_"ensemble"

echo $P1
echo $P2
echo $P3
echo $OE

python "nnunet/inference/ensemble_predictions.py" -f $P1 $P2 $P3 -o $OE
