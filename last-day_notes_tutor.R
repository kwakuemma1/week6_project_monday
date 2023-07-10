# To check for packages
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg) #, dependencies = TRUE
  sapply(pkg, require, character.only = TRUE)
}

ipak("all.primer.tutorials")

# Tutorial Packages
# library(r4ds.tutorials)
library(all.primer.tutorials)
# library(tidycensus.tutorials)

# remotes::install_github("PPBDS/all.primer.tutorials")
