library(tidyverse)
library(janitor)
library(tigris)

options(tigris_use_cache = TRUE)

coco_tracts <- tracts(
  state = "AZ",
  county = "Coconino"
)


ggplot(data = coco_tracts) +
  geom_sf(mapping = aes(fill = GEOID))


coco_blocks <- blocks(
  state = "AZ",
  county = "Coconino"
)


ggplot(data = coco_blocks) +
  geom_sf()

