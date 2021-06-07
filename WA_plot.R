library(sf)
library(raster)
library(ggplot2)
library(colorspace)
library(metR)
library(ggspatial) 
library(tmap)
library(dplyr)

WA_AMBI <- st_read("Washington/WA_American_Bittern.shp")
plot(WA_AMBI)

WA_BWTE <- st_read("Washington/WA_Blue_Winged_Teal.shp")
plot(WA_BWTE)

WA_Cities <- st_read("Washington/WA_Cities.shp")
plot(WA_Cities)

WA_Highway <- st_read("Washington/WA_Highways.shp")
plot(WA_Highway)

WA_KIDE <- st_read("Washington/WA_Killdeer.shp")
plot(WA_KIDE)

WA_Lake <- st_read("Washington/WA_Lakes.shp")
plot(WA_Lake)

WA_Forest <- st_read("Washington/WA_Nat_Forest.shp")
plot(WA_Forest)

WA_River <- st_read("Washington/WA_Rivers.shp")
plot(WA_River)

WA_state <- st_read("Washington/Washington.shp")
plot(WA_state)

ggplot() +
  geom_sf(data = WA_state, fill = "lightgreen") +
  geom_sf(data = WA_Forest, fill = "darkgreen") +
  geom_sf(data = WA_Lake, fill = "blue", col = "blue") +
  geom_sf(data = WA_River, col = "blue") +
  geom_sf(data = WA_Highway, color = "grey") +
  geom_sf(data = WA_Cities, color = "orange") +
  geom_sf(data = WA_KIDE, color = "cadetblue") +
  geom_sf(data = WA_AMBI, color = "brown") +
  geom_sf(data = WA_BWTE, color = "lightblue") +
  theme_classic() +
  coord_sf()

 

ggplot() +
  geom_sf(data = WA_state, fill = "lightgreen") +
  geom_sf(data = WA_Forest, fill = "darkgreen") +
  geom_sf(data = WA_Lake, fill = "blue", col = "blue") +
  geom_sf(data = WA_River, col = "blue") +
  geom_sf(data = WA_Highway, color = "grey") +
  geom_sf(data = WA_Cities, color = "orange") +
  geom_sf(data = WA_KIDE, color = "cadetblue") +
  geom_sf(data = WA_AMBI, color = "brown") +
  geom_sf(data = WA_BWTE, color = "lightblue") +
  theme_classic() +
  coord_sf()
