import pickle

plan_path = 'nnUNet_preprocessed/Task500_BrainTumor/nnUNetPlansv2.1_plans_2D.pkl'

plan = None
with open(plan_path, 'rb') as f:
    plan = pickle.load(f)
    for k in plan:
        data = plan[k]
        if type(data) == list or type(data) == dict and len(data)>5:
            data = "long list/dict"
        print(k, ':', data)
        
plan['plans_per_stage'][0]['batch_size'] = 64 # 168 before
# plan['plans_per_stage'][0]['pool_op_kernel_sizes'] = [[2, 2], [2, 2], [2, 2], [2, 2], [2, 2]], 
# plan['plans_per_stage'][0]['conv_kernel_sizes'] = [[3, 3], [3, 3], [3, 3], [3, 3], [3, 3], [3, 3]]

with open(plan_path, 'wb') as f:
    pickle.dump(plan, f)
