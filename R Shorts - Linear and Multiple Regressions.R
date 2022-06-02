library(tidyverse)
library(psych)
library(palmerpenguins)
data(penguins)
options(scipen = 999)


pairs.panels(penguins[,c('bill_length_mm','bill_depth_mm','species','flipper_length_mm','island')])

penguins.linear.regression <- lm(flipper_length_mm ~ bill_depth_mm, data=penguins)
summary(penguins.linear.regression)



penguins.multiple.regression <- lm(flipper_length_mm ~  bill_depth_mm + bill_length_mm, data = penguins)
summary(penguins.multiple.regression)
