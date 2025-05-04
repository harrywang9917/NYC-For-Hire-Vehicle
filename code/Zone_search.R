## 2017年每个月的使用次数
num_yello <- c(9710124,9168825,10294628,10046188,10102124,9656993,8588486,8422153,8945459,9768815,9284803,9508276)
num_green <- c(1070261,1023263,1158638,1081771,1059463,976467,914783,867407,882464,925737,874173,906240)
num_fhv <- c(13657212,13284950,15703039,14764853,15397388,15362154,15671625,15902607,16613554,17886709,18027302,19821305)

months <- c(1,2,3,4,5,6,7,8,9,10,11,12)

## 基础绘图
plot(months,num_yello,col=2,type="b",ylim=c(800000,25000000),xlab = "Months in 2017",ylab ="Number")
lines(months,num_green,col=3,type="b")
lines(months,num_fhv,col=4,type="b")
legend("topleft",pch=c(15,15),legend=c("Yellow","Green","FHV"),col=c(2,3,4),bty="n")


#############################################################################################################################


### 获取纽约市的区域信息
getwd()
setwd("./Srtp")
taxi_zone <- read.table("taxi _zone_lookup.csv",header = TRUE,sep = ",")

zone <- taxi_zone[1:2]

freq_zone <- table(zone[2:2])
#freq_zone

zone <- as.data.frame(zone)
bronx <- which(zone$Borough == "Bronx")
brooklyn <- which(zone$Borough == "Brooklyn")
ewr <- which(zone$Borough == "EWR")
manhattan <- which(zone$Borough == "Manhattan")
queens <- which(zone$Borough == "Queens")
staten_island <- which(zone$Borough == "Staten Island")
unknown <- which(zone$Borough == "Unknown")


#############################################################################################################################



### 上客地的地址
for (i in a1$PULocationID) {
  if (i %in% bronx) {
    print("Bronx")
  }else if(i %in% brooklyn){
    print("Brooklyn")
  }else if(i %in% manhattan){
    print("Manhattan")
  }else if(i %in% queens){
    print("Queens")
  }else if(i %in% staten_island){
    print("Staten Island")
  }else if(i == 1){
    print(EWR)
  }else{
    print("Unknown")
  }
}


### 下客地的地址
for (i in a1$DOLocationID) {
  if (i %in% bronx) {
    print("Bronx")
  }else if(i %in% brooklyn){
    print("Brooklyn")
  }else if(i %in% manhattan){
    print("Manhattan")
  }else if(i %in% queens){
    print("Queens")
  }else if(i %in% staten_island){
    print("Staten Island")
  }else if(i == 1){
    print(EWR)
  }else{
    print("Unknown")
  }
}

### 查看选出来的区是什么
taxi_zone[taxi_zone$LocationID == 132,]  #132 JFK Airport


#############################################################################################################################
