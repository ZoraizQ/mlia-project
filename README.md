# nnU-Net for Brain Tumor Segmentation (MLIA)
#### Group 5 - Connor Cole, Shen Zhu, Zoraiz Qureshi (cdc3hf, sz9jt, zce5py)

On a GPU-powered HPC cluster (Rivanna) or local machine. 
Clone repository, and cd into it. All scripts should be run from inside the cloned main directory.
```
git clone https://github.com/MIC-DKFZ/nnUNet.git
cd nnUNet
```

We provide a modified version of the source nnUNet github repository (some edits were to internal trainer classes), which also has some of our main custom bash and python scripts - for everything from pre-processing, downloading structured & pre-processed data, preparation, training, predictions, evaluation, and visualization. 

```
source setup.sh
```

The next script downloads a pre-processed, structured dataset, unzips to the right paths, creates associated metadata files for training. To go through our pre-processing, have a look at `preprocessing.ipynb`.
```
source prep_dataset.sh
```

Optionally, if you want to train some existing trainer modules on certain folds (requires manual edits). Training time per epoch (~40s) on A100, 16 CPU cores, 32 GB system RAM. Takes almost 1 hour per run (each fold per class).
```
source train.sh
```

You can also run predictions on the test set again directly, for saved best models trained for each improvement class on the training set.
Predict using specified saved trained models.
```
source predict.sh
```

To get final metrics and visualize test set predictions, please run sections of the `evaluate_visualize.ipynb`.



