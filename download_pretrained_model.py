import gdown

id = '1JPkJMjT8dQja0S8RiA5EWYUVIlONGmJl' 
url = f"https://drive.google.com/uc?id={id}"
output = "nnUNet_trained_models.zip"
gdown.download(url, output, quiet=False)
