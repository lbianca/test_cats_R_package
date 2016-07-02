# Nach Tutorial https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

# Step 0: load packages
install.packages("devtools")
library(devtools)
install_github("devtools", "hadley")
devtools::install_github("klutometis/roxygen")
library(roxygen2)

# Step 1: create package directory 
setwd("/Users/bianca/Documents/_Masterarbeit")
create("cats")
# creates a folder with two subfolders and a file called Description - edit that file 

# Step 2: add functions -> cat_function.R, save in R folder 

# Step 3: Add documentation 
# use package roxygen2: add special comments to the beginning of each function, which will later be compiled into the correct 
# format for package documentation 

# Step 4: Process the documentation?
# how to create the documentation from these annotations?
setwd("./cats")
getwd()
document()

# nach install_github("devtools", "hadley") funktioniert das jetzt auch und erzeugt das man-directory
# This automatically adds in the .Rd files to the man directory, and adds a NAMESPACE file to the main directory


# Step 5: Install the package
# needs to be done from the parent working directory that contains the cats folder
setwd("..")
install("cats")

?cat_function
# tatsache, zeigt Hilfsseite! 
cat_function()
cat_function(FALSE)


# Optional Step 6: Make the package a github repository

