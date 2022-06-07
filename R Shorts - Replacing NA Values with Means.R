library(tidyverse)
library(palmerpenguins)
data(penguins)
library(skimr)

skim(penguins)

penguins$bill_length_mm[is.na(penguins$bill_length_mm)] <- mean(penguins$bill_length_mm, na.rm = TRUE)
penguins$bill_depth_mm[is.na(penguins$bill_depth_mm)] <- mean(penguins$bill_depth_mm, na.rm = TRUE)
penguins$flipper_length_mm[is.na(penguins$flipper_length_mm)] <- mean(penguins$flipper_length_mm, na.rm = TRUE)
penguins$body_mass_g[is.na(penguins$body_mass_g)] <- mean(penguins$body_mass_g, na.rm = TRUE)

skim(penguins)