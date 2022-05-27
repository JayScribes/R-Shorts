library(tidyverse)
install.packages("cowplot")
library(cowplot)
library(palmerpenguins)
data(penguins)


bmxfl.graph <- ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_point()+theme_classic()

bmxbl.graph <- ggplot(penguins, aes(body_mass_g, bill_length_mm))+
  geom_point()+theme_classic()

bmxbd.graph <- ggplot(penguins, aes(body_mass_g, bill_depth_mm))+
  geom_point()+theme_classic()



plot_grid(bmxfl.graph, bmxbl.graph, bmxbd.graph, labels = c("A","B","C")) ## Horizontal plots

plot_grid(bmxfl.graph, bmxbl.graph, bmxbd.graph, ncol = 1, align = 'v', axis = 1, labels = c("A","B","C")) ## Vertical plots


