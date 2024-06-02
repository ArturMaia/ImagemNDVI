#processamento de immagens
library(raster)
library(rasterVis)
library(geobr)
library(mapview)

#localização
paragominas<-read_municipality(code_muni = 1505502)
mapview(paragominas)

file.choose()
#RBG
img<-stack("C:\\ARTUR\\imagem\\b13.tif",
           "C:\\ARTUR\\imagem\\b14.tif",
           "C:\\ARTUR\\imagem\\b15.tif")
plot(img)
plotRGB(img, r=3,g=2,b=1,stretch='lin')#coloração e contraste

#NDVI
red=raster("C:\\ARTUR\\imagem\\b15.tif")
nir=raster("C:\\ARTUR\\imagem\\b16.tif")
ndvi=(nir-red)/(red+nir)
plot(ndvi)
