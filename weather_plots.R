library(tidyverse)
library(ggplot2)

# load files
berlin <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/berlin_data_mov_avg.csv')
global <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/global_data_mov_avg.csv')

# cut-off berlin data to start at 1750
berlin <- berlin %>% filter(year>1749)

ggplot() + geom_line(data=global, aes(year, moving_avg_20, color= "Berlin")) + 
  geom_line(data=berlin, aes(year, moving_avg_20, color = "Global")) +
  scale_colour_manual("",values = c("Berlin"="royalblue", "Global"="darkorange")) +
  theme_bw() + labs(title ="Temperature change 1750-2013", x = "Year", y = "Temperature [°C]") +
  scale_x_continuous(limits=c(1750, 2010))

