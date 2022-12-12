## DATA SETUP (run once only)

# rm -rf nnUNet_raw_data_base
# rm -rf nnUNet_preprocessed
# rm -rf nnUNet_trained_models

mkdir -p nnUNet_raw_data_base/nnUNet_raw_data
mkdir nnUNet_preprocessed
mkdir nnUNet_trained_models

## download / upload Task500_BrainTumor.zip
pip install gdown
pip install --upgrade gdown

python download_data.py

# unzip Task500_BrainTumor.zip -d nnUNet_raw_data_base/nnUNet_raw_data
unzip Task500_BrainTumor_128_128.zip -d nnUNet_raw_data_base/nnUNet_raw_data

ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTr | wc -l
ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/imagesTs | wc -l
ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/labelsTr | wc -l
ls nnUNet_raw_data_base/nnUNet_raw_data/Task500_BrainTumor/labelsTs | wc -l

python create_braintumor_dataset_json.py

# preprocessing 
# python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 --verify_dataset_integrity -no_pp -pl3d None
python nnunet/experiment_planning/nnUNet_plan_and_preprocess.py -t 500 -pl3d None