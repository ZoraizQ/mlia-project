import numpy as np
from batchgenerators.utilities.file_and_folder_operations import *
from nnunet.dataset_conversion.utils import generate_dataset_json
from nnunet.paths import nnUNet_raw_data, preprocessing_output_dir

task_name = 'Task500_BrainTumor'
target_base = join(nnUNet_raw_data, task_name)
target_imagesTr = join(target_base, "imagesTr")
target_imagesTs = join(target_base, "imagesTs")
target_labelsTs = join(target_base, "labelsTs")
target_labelsTr = join(target_base, "labelsTr")

print(target_imagesTr)
print(target_imagesTs)

# finally we can call the utility for generating a dataset.json
generate_dataset_json(join(target_base, 'dataset.json'), target_imagesTr, target_imagesTs, ['MRI'],
                      labels={0: 'BG', 1: 'NCR', 2: 'ED', 3: 'ET'}, dataset_name=task_name, license='UVA') 
# https://www.med.upenn.edu/cbica/brats2020/tasks.html#Task1BrainTumorSegmentationinMRIscans1