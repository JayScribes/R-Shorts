library(tidyverse)
library(palmerpenguins)
data(penguins)
library(skimr)

skim(penguins)

penguins <- penguins %>% 
  drop_na(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g) %>% 
  mutate(bill_length_mm = ifelse(is.na(bill_length_mm), mean(bill_length_mm, na.rm = TRUE), bill_length_mm),
         bill_depth_mm = ifelse(is.na(bill_depth_mm), mean(bill_depth_mm, na.rm = TRUE), bill_depth_mm),
         flipper_length_mm = ifelse(is.na(flipper_length_mm), mean(flipper_length_mm, na.rm = TRUE), flipper_length_mm),
         body_mass_g = ifelse(is.na(body_mass_g), mean(body_mass_g, na.rm = TRUE), body_mass_g))


skim(penguins)