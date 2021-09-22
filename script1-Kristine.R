library(tidyverse)
library(modeldata)

#these are the packages we need to run and have available in order to analyse the datasets

data(ames)
#the dataset is called ames

ames %>%
  group_by(Garage_Type) %>%
  count(Paved_Drive)
#the dataset is called ames

detchd <- ames %>%
	select(Longitude, Latitude, Sale_Price, Garage_Type, Paved_Drive) %>%
	filter(Garage_Type == "Detchd")

my_fun <- function(a, b){
	a_price <- detchd %>%
		filter(Paved_Drive == a) %>%
		pull(Sale_Price)
	
	b_price <- detchd %>%
		filter(Paved_Drive == b) %>%
		pull(Sale_Price)
	
	return(
		t.test(a_price, b_price)
	)
}

my_fun("Dirt_Gravel", "Paved")
