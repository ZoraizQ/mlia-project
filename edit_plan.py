import pickle

plan_path = 'nnUNet_preprocessed/Task500_BrainTumor/nnUNetPlansv2.1_plans_2D.pkl'
with open(plan_path, 'rb') as f:
    res = pickle.load(f)
    for k in res:
        data = res[k]
        if type(data) == list or type(data) == dict and len(data)>3:
            data = "list/dict"
        print(k, ':', data)
        
    