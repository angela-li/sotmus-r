# All the code from the RMarkdown doc, in one script

pkgs <- installed.packages()
head(pkgs)

nrow(pkgs)

## update.packages()
## remove.packages("osmdata")

library(magrittr)
library(osmdata)
library(sf)
library(sp)

## opq(bbox = 'detroit') %>%
##     add_osm_feature(key = 'highway', value = "cycleway") %>%
##     osmdata_sp()

detroit_bb <- getbb(place_name = "detroit")

opq(detroit_bb)
opq(bbox = "detroit") # Produces the same thing
opq(bbox = c("42.255192,-83.287959,42.450232,-82.9104391")) # Also produces the same thing

opq(detroit_bb) %>% 
  add_osm_feature(key = "highway", value = "cycleway")

opq(detroit_bb) %>% 
  add_osm_feature(key = "highway", value = "cycleway") %>% 
  opq_string()

available_features()

available_tags("highway")

opq(detroit_bb) %>% 
  add_osm_feature(key = "highway", value = "cycleway") %>% 
  osmdata_sp()

opq(detroit_bb) %>% 
  add_osm_feature(key = "highway", value = "cycleway") %>% 
  osmdata_sf()

detroit_cycleways <- opq(detroit_bb) %>% 
  add_osm_feature(key = "highway", value = "cycleway") %>% 
  osmdata_sp()

plot(detroit_cycleways$osm_lines)

## kunming_water <- opq(bbox = 'Kunming, China') %>%
##     add_osm_feature(key = 'natural', value = 'water') %>%
##     osmdata_sf()
## 
## kunming_dian_names <- opq(bbox = 'Kunming, China') %>%
##     add_osm_feature(key = 'name:en', value = 'Dian', value_exact = FALSE) %>%
##     osmdata_sf()
## 
## kunming_all_features <- c(kunming_water, kunming_dian_names)
