# 1.1) Load the package into R:
library(immunarch)

# 1.2) Replace with the path to the folder with your processed MiXCR data.
file_path = "/mnt/f/Dongfang/BTCR/data/"

# 1.3) Load MiXCR data with repLoad
immdata_mixcr <- repLoad(file_path)