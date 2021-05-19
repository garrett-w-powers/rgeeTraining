install.packages("rgee")
library(remotes)
install_github("r-spatial/rgee")

#install python packages
rgee::ee_install()
rgee::ee_install_upgrade()

library(rgee)

ee_check()

#sync rgee with other python packages
library(reticulate)
library(rgee)

# 1. Initialize the Python Environment  
ee_Initialize()

# 2. Install geemap in the same Python ENV that use rgee
py_install("geemap")
gm <- import("geemap")

library(rgee)
ee_Initialize()
ee_install_upgrade()
