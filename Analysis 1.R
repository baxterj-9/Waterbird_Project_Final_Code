library(tidyverse)
library(spatstat)
library(sf)
library(stars)
library(gstat)
library(tidyverse)
library(raster)
library(fields)

WA_AMBI_MPPP <- sp_data("Washington/WA_American_Bittern.shp")

WA_BWTE_MPPP <- st_read("Washington/WA_Blue_Winged_Teal.shp")

WA_KIDE_MPPP <- st_read("Washington/WA_Killdeer.shp")


WA_AMBI_MPPP <- as.ppp(WA_AMBI)
WA.AMBI.den <- density(WA_AMBI_MPPP)
plot(WA.AMBI.den, main = "Washington American Bittern")
contour(WA.AMBI.den,add=TRUE)
points(WA_AMBI_MPPP, pch=20)

plot(envelope(WA_AMBI_MPPP, fun = Lest, verbose=FALSE), main="Washington American Bittern L")


WA_BWTE_MPPP <- ppp(WA_BWTE, window = owin(poly = WA_state))

WA_BWTE_MPPP <- as.ppp(WA_BWTE)
WA_BWTE.den <- density(WA_BWTE_MPPP)
plot(WA_BWTE.den, main = "Washington Blue-winged Teal")
contour(WA_BWTE.den,add=TRUE)
points(WA_BWTE_MPPP, pch=20)

plot(envelope(WA_BWTE_MPPP, fun = Lest, verbose=FALSE), main="Washington Blue-winged Teal L")




WA_KIDE_MPPP <- as.ppp(WA_KIDE)
WA_KIDE.den <- density(WA_KIDE_MPPP)
plot(WA_KIDE.den, main = "Washington Killdeer")
contour(WA_KIDE.den,add=TRUE)
points(WA_KIDE_MPPP, pch=20)

plot(envelope(WA_KIDE_MPPP, fun = Lest, verbose=FALSE), main="Washington Killdeer L")

KIDE.den_df <- as.data.frame(KIDE.den)
KIDE.den_df <- as_Spatial(KIDE.den_df)








ND_AMBI_MPPP <- as.ppp(ND_AMBI)
ND_AMBI.den <- density(ND_AMBI_MPPP)
plot(ND_AMBI.den, main = "North Dakota American Bittern")
contour(ND_AMBI.den,add=TRUE)
points(ND_AMBI_MPPP, pch=20)

plot(envelope(WA_AMBI_MPPP, fun = Lest, verbose=FALSE), main="North Dakota American Bittern L")

ND_BWTE_MPPP <- as.ppp(ND_BWTE)
ND_BWTE.den <- density(ND_BWTE_MPPP)
plot(ND_BWTE.den, main = "North Dakota Blue-winged Teal")
contour(ND_BWTE.den,add=TRUE)
points(ND_BWTE_MPPP, pch=20)

plot(envelope(WA_BWTE_MPPP, fun = Lest, verbose=FALSE), main="North Dakota Blue-winged Teal L")

ND_KIDE_MPPP <- as.ppp(ND_KIDE)
ND_KIDE.den <- density(ND_KIDE_MPPP, xlim)
plot(ND_KIDE.den, main = "North Dakota Killdeer")
contour(ND_KIDE.den,add=TRUE)
points(ND_KIDE_MPPP, pch=20)

plot(envelope(WA_KIDE_MPPP, fun = Lest, verbose=FALSE), main="North Dakota Killdeer L")





BWTE.den

foo <- expand_grid(x=ND_KIDE.den$xcol,y=ND_KIDE.den$yrow)
foo$z <- as.vector(ND_KIDE.den$v)

ggplot() +
  geom_tile(data = foo, aes(x=x,y=y,fill=z)) +
  scale_fill_continuous(type = "viridis",na.value="transparent") +
  geom_sf(data = ND_state, col = "lightgreen", alpha = 0) +
  geom_sf(data = ND_KIDE, color = "cadetblue") +
  theme_classic() +
  coord_sf()



str(BWTE.den)





