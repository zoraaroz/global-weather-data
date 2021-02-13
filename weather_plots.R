library(tidyverse)
library(ggplot2)

# load files
berlin <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/berlin_data_mov_avg.csv')
bern <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/bern_data_mov_avg.csv')
london <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/london_data_mov_avg.csv')
global <- read.csv('Documents/Studium/Data Science/Udacity/Data Analyst/udacity-weather-project/global_data_mov_avg.csv')

# cut-off berlin data to start at 1750
berlin <- berlin %>% filter(year>1749)

ggplot() + geom_line(data=berlin, aes(year, moving_avg_20, color= "Berlin")) +
  geom_line(data=bern, aes(year, moving_avg_20, color= "Bern")) +
  geom_line(data=london, aes(year, moving_avg_20, color= "London")) +
  geom_line(data=global, aes(year, moving_avg_20, color = "Global")) +
  scale_colour_manual("",values = c("Berlin"="royalblue", "Global"="darkorange", "Bern" = "gray", "London" = "cyan4")) +
  theme_bw() + labs(title ="Temperature change 1750-2013", x = "Year", y = "Temperature [°C]") +
  scale_x_continuous(limits=c(1750, 2010)) + scale_y_continuous(limits=c(5, 10))

