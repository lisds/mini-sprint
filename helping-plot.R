##### 

## load packages
library("tidyverse")

## load data
helping <- tibble(
  area_type = rep(c("city", "town"), each = 3),
  help_type = rep(c("dropped", "crossing", "letter"), times = 2),
  percentage = c(32.7, 30.6, 58.7, 32.5, 32.1, 48.7)
)

##### 

## generate plot!
helping %>%
  ggplot() +
  aes(x = help_type, y = percentage, fill = area_type) +
  geom_bar(position = "dodge", stat = "identity")