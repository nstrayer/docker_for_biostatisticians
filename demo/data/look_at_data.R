library(tidyverse)
library(visdat)

bus_stops <- read_csv('host_data/Metro_Transit_Authority_Bus_Stops.csv')

vis_miss(bus_stops)

bus_stops %>% 
  select_if(is.numeric) %>% 
  vis_cor()
