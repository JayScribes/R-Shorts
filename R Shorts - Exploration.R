library(tidyverse)
library(palmerpenguins)
data(penguins)
library(psych)

## Data Exploration

pairs.panels(penguins[,c('bill_length_mm','bill_depth_mm','species','body_mass_g','flipper_length_mm','island')])


ggplot(penguins, aes(body_mass_g)) +
  geom_point(aes(y=flipper_length_mm, color = species))+
  theme_classic()