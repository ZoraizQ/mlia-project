import gdown

id = '1-7aUhoZE93XjjgiOpPVffyJKbznW_Cxq' # 128_128
url = f"https://drive.google.com/uc?id={id}"
output = "Task500_BrainTumor_128_128.zip"
gdown.download(url, output, quiet=False)