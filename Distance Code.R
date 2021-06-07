###
WA_BWTE_sf <- as_Spatial(WA_BWTE)
WA_BWTE_sf <- spTransform(WA_BWTE_sf,("+init=epsg:4326"))

WA_Forest_sf <- as_Spatial(WA_Forest)
WA_Forest_sf <- spTransform(WA_Forest_sf,("+init=epsg:4326"))

dist.mat <- geosphere::dist2Line(p = WA_BWTE_sf, line = WA_Forest_sf)

# bind results with original points
WA_BWTE_sf.wit.dist <- cbind(WA_BWTE_sf, dist.mat)
WA_BWTE_sf.wit.dist[1:3,]
##      x1   x2 distance        lon      lat ID
## 1 -10.0 40.2 767133.6 -1.7808770 43.35992  2
## 2  -0.2 40.2 282022.2  0.1894124 42.71846  2
## 3   9.6 40.2 134383.0  9.1808320 41.36472  2

#Plot some results to get an idea
head(WA_BWTE_sf.wit.dist)

WA_BWTE_sf.wit.dist <- as.data.frame(WA_BWTE_sf.wit.dist)
saveRDS(WA_BWTE_sf.wit.dist, file = "Washington/WA_BWTE_sf.wit.dist_forest")



WA_BWTE_forest_dist <- ggplot(WA_BWTE_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "yellow") + 
  labs(x="Meters Between Blue-winged Teal and Nearest National Forest") +
  theme_minimal()

WA_BWTE_forest_dist


###
ND_BWTE_sf <- as_Spatial(ND_BWTE)
ND_BWTE_sf <- spTransform(ND_BWTE_sf,("+init=epsg:4326"))

ND_Forest_sf <- as_Spatial(ND_Forest)
ND_Forest_sf <- spTransform(ND_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = ND_BWTE_sf, line = ND_Forest_sf)

# bind results with original points
ND_BWTE_sf.wit.dist <- cbind(ND_BWTE_sf, dist.mat)

head(ND_BWTE_sf.wit.dist)

ND_BWTE_sf.wit.dist <- as.data.frame(ND_BWTE_sf.wit.dist)
saveRDS(ND_BWTE_sf.wit.dist, file = "North_Dakota/ND_BWTE_sf.wit.dist_forest")



ND_BWTE_forest_dist <- ggplot(ND_BWTE_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "yellow") + 
  labs(x="Meters Between Blue-winged Teal and Nearest National Grasslands") +
  theme_minimal()

ND_BWTE_forest_dist




###

WA_AMBI_sf <- as_Spatial(WA_AMBI)
WA_AMBI_sf <- spTransform(WA_AMBI_sf,("+init=epsg:4326"))

WA_Forest_sf <- as_Spatial(WA_Forest)
WA_Forest_sf <- spTransform(WA_Forest_sf,("+init=epsg:4326"))

# compute the shortest distance between points and polygons
# (from ?dist2Line): "returns matrix with distance and lon/lat of the nearest point" & 
# "the ID (index) of (one of) the nearest objects"; distance is in meters (default)
dist.mat <- geosphere::dist2Line(p = WA_AMBI_sf, line = WA_Forest_sf)

# bind results with original points
WA_AMBI_sf.wit.dist <- cbind(WA_AMBI_sf, dist.mat)
head(WA_AMBI_sf.wit.dist)

WA_AMBI_sf.wit.dist <- as.data.frame(WA_AMBI_sf.wit.dist)
saveRDS(WA_AMBI_sf.wit.dist, file = "Washington/WA_AMBI_sf.wit.dist_forest")


WA_AMBI_forest_dist <- ggplot(WA_AMBI_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "brown") + 
  labs(x="Meters Between American Bittern and Nearest National Forest") +
  theme_minimal()

WA_AMBI_forest_dist




###

WA_AMBI_sf <- as_Spatial(WA_AMBI)
WA_AMBI_sf <- spTransform(WA_AMBI_sf,("+init=epsg:4326"))

WA_Forest_sf <- as_Spatial(WA_Forest)
WA_Forest_sf <- spTransform(WA_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = WA_AMBI_sf, line = WA_Forest_sf)

# bind results with original points
WA_AMBI_sf.wit.dist <- cbind(WA_AMBI_sf, dist.mat)

head(WA_AMBI_sf.wit.dist)

WA_AMBI_sf.wit.dist <- as.data.frame(WA_AMBI_sf.wit.dist)


geom_histogram(aes(x=distance), fill = "brown") + 
  labs(x="Meters Between American Bittern and Nearest National Forest") +
  theme_minimal()






###

WA_AMBI_sf <- as_Spatial(WA_AMBI)
WA_AMBI_sf <- spTransform(WA_AMBI_sf,("+init=epsg:4326"))

WA_Forest_sf <- as_Spatial(WA_Forest)
WA_Forest_sf <- spTransform(WA_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = WA_AMBI_sf, line = WA_Forest_sf)

# bind results with original points
WA_AMBI_sf.wit.dist <- cbind(WA_AMBI_sf, dist.mat)

head(WA_AMBI_sf.wit.dist)

WA_AMBI_sf.wit.dist <- as.data.frame(WA_AMBI_sf.wit.dist)


geom_histogram(aes(x=distance), fill = "brown") + 
  labs(x="Meters Between American Bittern and Nearest National Forest") +
  theme_minimal()






###

ND_AMBI_sf <- as_Spatial(ND_AMBI)
ND_AMBI_sf <- spTransform(ND_AMBI_sf,("+init=epsg:4326"))

ND_Forest_sf <- as_Spatial(ND_Forest)
ND_Forest_sf <- spTransform(ND_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = ND_AMBI_sf, line = ND_Forest_sf)

# bind results with original points
ND_AMBI_sf.wit.dist <- cbind(ND_AMBI_sf, dist.mat)

head(ND_AMBI_sf.wit.dist)

ND_AMBI_sf.wit.dist <- as.data.frame(ND_AMBI_sf.wit.dist)
saveRDS(ND_AMBI_sf.wit.dist, file = "North_Dakota/ND_AMBI_sf.wit.dist_forest")


ND_AMBI_forest_dist <- ggplot(ND_AMBI_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "brown") + 
  labs(x="Meters Between American Bittern and Nearest National Grasslands") +
  theme_minimal()

ND_AMBI_forest_dist


###

WA_KIDE_sf <- as_Spatial(WA_KIDE)
WA_KIDE_sf <- spTransform(WA_KIDE_sf,("+init=epsg:4326"))

WA_Forest_sf <- as_Spatial(WA_Forest)
WA_Forest_sf <- spTransform(WA_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = WA_KIDE_sf, line = WA_Forest_sf)


WA_KIDE_sf.wit.dist <- cbind(WA_KIDE_sf, dist.mat)
WA_KIDE_sf.wit.dist[1:3,]

head(WA_KIDE_sf.wit.dist)

WA_KIDE_sf.wit.dist <- as.data.frame(WA_KIDE_sf.wit.dist)
saveRDS(WA_KIDE_sf.wit.dist, file = "Washington/WA_KIDE_sf.wit.dist_forest")


WA_KIDE_forest_dist <- ggplot(WA_KIDE_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "cadetblue") + 
  labs(x="Meters Between American Bittern and Nearest National Forest") +
  theme_minimal()

WA_KIDE_forest_dist




###

ND_KIDE_sf <- as_Spatial(ND_KIDE)
ND_KIDE_sf <- spTransform(ND_KIDE_sf,("+init=epsg:4326"))

ND_Forest_sf <- as_Spatial(ND_Forest)
ND_Forest_sf <- spTransform(ND_Forest_sf,("+init=epsg:4326"))


dist.mat <- geosphere::dist2Line(p = ND_KIDE_sf, line = ND_Forest_sf)

# bind results with original points
ND_KIDE_sf.wit.dist <- cbind(ND_KIDE_sf, dist.mat)

head(ND_KIDE_sf.wit.dist)

ND_KIDE_sf.wit.dist <- as.data.frame(ND_KIDE_sf.wit.dist)
saveRDS(ND_KIDE_sf.wit.dist, file = "North_Dakota/ND_KIDE_sf.wit.dist_forest")


ND_KIDE_forest_dist <- ggplot(ND_KIDE_sf.wit.dist) + 
  geom_histogram(aes(x=distance), fill = "cadetblue") + 
  labs(x="Meters Between American Bittern and Nearest National Grasslands") +
  theme_minimal()

ND_KIDE_forest_dist