library(tidyverse)
library(modeldata)

#We load our data called "ames"
data(ames)

#To have an overview of the data:
summary(ames)
#We see that our data includes information about housing features

#To see the different paved drives in different garage types:
ames %>%
  group_by(Garage_Type)%>%
  count(Paved_Drive)

#At this point we will focus on the Deattached garages and their characteristics (filter (Garage_Type == "Dtchd"))
detchd <- ames %>%
	select(Longitude, Latitude, Sale_Price, Garage_Type, Paved_Drive) %>%
	filter(Garage_Type == "Detchd")
#After this command, we only work with deattached garages included on "detchd"

#In order to see significative differences between the sale prices between the entrances of the cars:
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

#After running this command we perform a t-test that shows us that paved 
#entrances cost more on the market than gravel entrances


