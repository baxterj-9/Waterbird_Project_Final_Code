library(sf)
library(raster)
library(ggplot2)
library(colorspace)
library(metR)
library(ggspatial) 
library(tmap)
library(dplyr)

ND_AMBI <- st_read("North_Dakota/ND_American_Bittern.shp")
plot(ND_AMBI)

ND_BWTE <- st_read("North_Dakota/ND_Blue_Winged_Teal.shp")
plot(ND_BWTE)

ND_Cities <- st_read("North_Dakota/ND_Cities.shp")
plot(ND_Cities)

ND_Highway <- st_read("North_Dakota/ND_Highways.shp")
plot(ND_Highway)

ND_KIDE <- st_read("North_Dakota/ND_Killdeer.shp")
plot(ND_KIDE)

ND_Lake <- st_read("North_Dakota/ND_Lakes.shp")
plot(ND_Lake)

ND_Forest <- st_read("North_Dakota/ND_Nat_Grassland.shp")
plot(ND_Forest)

ND_River <- st_read("North_Dakota/ND_Streams.shp")
plot(ND_River)

ND_state <- st_read("North_Dakota/North_Dakota.shp")
plot(ND_state)

ggplot() +
  geom_sf(data = ND_state, fill = "lightgreen") +
  geom_sf(data = ND_Forest, fill = "darkgreen") +
  geom_sf(data = ND_Lake, fill = "blue", col = "blue") +
  geom_sf(data = ND_River, col = "blue") +
  geom_sf(data = ND_Highway, color = "grey") +
  geom_sf(data = ND_Cities, color = "orange") +
  geom_sf(data = ND_KIDE, color = "cadetblue") +
  geom_sf(data = ND_AMBI, color = "brown") +
  geom_sf(data = ND_BWTE, color = "lightblue") +
  theme_classic() +
  coord_sf()







