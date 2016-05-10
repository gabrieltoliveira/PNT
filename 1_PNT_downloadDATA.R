# This code:
  # 1 downloads and unzips the Census tracts of the 2010 Brazilian Census 
  # 2 ....
  # 3 .....
  # 4 .....



# Data: 2010 Demographic Census, Brazil (IBGE)
# By, Rafael Pereira and 
# 09-May-2016, Oxford
# R version:  RRO 3.2.4 (64 bits)


# set working Directory
setwd("R:/github/PNT")



##################### Load packages --------

library(data.table)   # to manipulate data frames (fread is ultrafast for reading CSV files)
library(readr)        #fast read of fixed witdh files
library(readxl)       # readto read excel spreadsheets
library(beepr)        # Beeps at the end of the command
library(survey)       #complex sample surveys
library(beepr)        # Beeps at the end of the command
library(ggplot2)      # to use google map tiles
library(RColorBrewer) # to get more color options 
library(dplyr)        # to manipulate data frames
library(ineq)         # Inequality and concentration   measures
#library(stringr)      # detect string patterns


options(digits=3)   # number of digits to show
options(scipen=999) # disable scientific notation


  

  
########################################################################################
######## 1. Download Brazilian Census tracts -------------------------------------------

# List of Brazilian States
  UFlist <- c("ac","al","am","ap","ba","ce","df","es","go","ma","mg","ms","mt","pa","pb","pe","pi","pr","rj","rn","ro","rr","rs","sc","se","sp" ,"to")

# URL address to download files from
  ftppath <- "ftp://geoftp.ibge.gov.br/malhas_digitais/censo_2010/setores_censitarios/"
  
# create folder where census-tract files will be saved
    destfolder <- "./census_tracts/"
    dir.create(file.path( destfolder ))
    
# Loop to Download files
  for (i in UFlist){
                    file_url <- paste0(ftppath, i, "/",i,"_setores_censitarios.zip")
                    file_name <- paste0(destfolder,i,".zip")
                    print(i)
                    download.file(file_url, file_name, mode="wb")
                    }

# unzip all files
  
  setwd("R:/github/PNT/census_tracts") # temporary change of working Directory
     
  # unzip and rename files
    for (stem in UFlist ) { zf <- paste0(stem,'.zip'); ## derive zip file name
                            unzip(zf); ## extract all compressed files
                            files <- unzip(zf,list=T)$Name; ## get their orig names
                            for (file in files) file.rename(file,paste0(stem,'.',sub('.*\\.','',file))); ## rename
                            }
  beep() # beep alert

  
  
# set working Directory
  setwd("R:/github/PNT")

########################################################################################
######## 2.  ...   -------------------------------------------


  
  
  
  
########################################################################################
######## 3.  ...   -------------------------------------------

  
  
  
  
########################################################################################
######## 4.  ...   -------------------------------------------

  
  
  
  
  
########################################################################################
######## 5.  ...   -------------------------------------------



