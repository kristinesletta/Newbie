Questions

#1.
#after importing the csvfile, when trying to add the delim function: myData<-read_delim(here("DATA","Konsultasjoner.csv",delim="/t"))
#Error: '/Users/kristine/Desktop/RMED901/DATA/Konsultasjoner.csv//t' does not exist.

#2
#myData<-read_csv("DATA","Konsultasjoner.csv",delim=/t") - Error: unexpected '/' in "myData<-read_csv("DATA","Konsultasjoner.csv",delim=/"




install.packages("patchwork")
install.packages(patchwork)
library(tidyverse)
library(patchwork)


myData<-read_csv("DATA","Konsultasjoner.csv",delim=/t")


