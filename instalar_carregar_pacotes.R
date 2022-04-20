pacotes <- c("tidyverse","sf","tmap","rgdal","rgeos","adehabitatHR","knitr",
             "kableExtra", "tidyr", "ggplot2", "readxl", "maptools", "broom",
             "kableExtra", "dplyr")

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}