
rm(list = ls())
library(spdep)
library(rgdal)
library(GISTools)
library(zoom)

TWPOP <- readOGR(dsn = ".", layer = "Popn_TWN2", encoding="utf8")
TWPOP$Area <- poly.areas(TWPOP)/1000000  #km2



# 1. Defining Spatial Neighbors
TWN_nb<-poly2nb(TWPOP)

# 2. Building Weighting Matrix
TWN_nb_w<- nb2listw(TWN_nb, zero.policy=T)

# 3. Attribute
Popn <- as.numeric(as.character(TWPOP$A15A64_CNT+TWPOP$A0A14_CNT+TWPOP$A65UP_CNT))
TWPOP$POP = Popn 
TWPOP$ODD = as.numeric(TWPOP$A65UP_CNT/TWPOP$POP)
ODD=TWPOP$ODD
#write.csv(TWPOP@data,"數據.csv", row.names = FALSE)

# 原始數據畫圖
my.palette <- brewer.pal(n = 7, name = "OrRd")
#lm.palette <- colorRampPalette(c("white","orange", "red"), space = "rgb")
drawTW=gUnaryUnion(TWPOP,as.character(TWPOP$COUNTY))

freeway.layer <- list("sp.lines", drawTW, col = "black")
spplot(TWPOP, zcol="ODD",col='transparent',col.regions=my.palette,cuts=6,sp.layout = freeway.layer)

#我自己畫
par(bg = 'transparent')
my.palette <- brewer.pal(n = 7, name = "OrRd")
vacant.shades = auto.shading(TWPOP$ODD, n=7, cols=my.palette, cutter=rangeCuts,)
#    畫圖              sp               variable                    
choropleth(TWPOP,  TWPOP$ODD,  shading=vacant.shades ,border='transparent',xlim=c(-50172.1 ,413851.5),ylim=c(2389490 ,2941302))
plot(drawTW,add=T,border='grey',cex=0.4)
#plot(NULL ,xaxt='n',yaxt='n',bty='n',ylab='',xlab='', xlim=0:1, ylim=0:1)
choro.legend(-151102.2,2492096,sh = vacant.shades ,cex=0.3)

legendChoro()
locator()
zm()
?plot

# 找出前五名
ID=levels(TWPOP$COUNTY_ID)
data=data.frame()
for(i in 1:length(ID)){
  index=TWPOP$COUNTY_ID==ID[i]
  TA=TWPOP[index,]
  sort=sort(TWPOP$ODD[index],decreasing = T)
  w=which(TA$ODD %in% sort[1:5])
  
  mean=mean(TA$ODD)
    
    
  data=rbind(data,data.frame(TA$COUNTY[w],TA$TOWN[w],TA$ODD[w]),mean)
}
data
write.csv(data,"各縣市前五名.csv", row.names= F)


#套件畫圖

library(RColorBrewer)
library(rgdal)
#summary(TWPOP$ODD)
par(bg = 'transparent')
mycolours <- brewer.pal(8, "OrRd")
mybreaks <- c(0.07, 0.07+0.02875,0.07+0.02875*2, 0.07+0.02875*3, 0.07+0.02875*4, 0.07+0.02875*5, 0.30)
cut(TWPOP$ODD, mybreaks)
mycolourscheme <- mycolours[findInterval(TWPOP$ODD, vec = mybreaks)]
plot(TWPOP, col = mycolourscheme, cex = 10,border='transparent',xlim=c(-50172.1 ,413851.5),ylim=c(2389490 ,2941302))
plot(drawTW,add=T,border='grey',cex=0.4)
legend(-151102.2,2553096,legend = levels(cut(TWPOP$ODD, mybreaks)), fill = mycolourscheme, cex = 0.5, title = "老人比例")


# spplot
library(sp)
library(RColorBrewer)
mycolours <- brewer.pal(8, "YlOrRd")
spplot(TWPOP,"ODD", par.settings = list(axis.line = list(col ="transparent")), cuts = 5, col ="transparent", col.regions = mycolours)

#TMap
library(tmap)
tm_shape(TWPOP) + tm_polygons(col='ODD', palette =mycolours) + tm_scale_bar(position = c("right", "top")) 

#ggplot
library(ggplot2)
library(scales)
library(ggmap)
library(viridis)

newUS <- fortify(TWPOP, region = "id")
newdf <- merge(newUS, US3@data, by = "id")
Myplot <- ggplot() +
  
  geom_polygon(data = newdf, aes(fill = Bush_pct, 
                                 x = long, 
                                 y = lat, 
                                 group = group)) +
  theme_nothing(legend = TRUE) + coord_map() + ggtitle("Vote Percentage for Bush, 2004") + theme(plot.title = element_text(hjust =0.5))

NicerPlot <- Myplot + scale_fill_viridis(option = "magma", direction = -1)
NicerPlot