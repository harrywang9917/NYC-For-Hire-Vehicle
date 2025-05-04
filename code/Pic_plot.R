### 检测 bronx区 每个区域的上客量
tt <- c()
kk <- c()
for(i in bronx){
  k1 <- as.data.frame(which(c$PULocationID == i))
  k2 <- nrow(k1)
  tt <- append(tt, k2)
}
tt <- as.data.frame(tt)
kk <- as.data.frame(bronx)

bronx_taxi <- cbind(kk,tt)
names(bronx_taxi) <- c("bronx","freq")
bronx_taxi

### 绘图
with(bronx_taxi,plot(bronx,freq,main = "The number of Pull_up in Bronx",type = "h"))

#############################################################################################################################


### 检测 brooklyn区 每个区域的上客量
tt <- c()
kk <- c()
for(i in brooklyn){
  k1 <- as.data.frame(which(c$PULocationID == i))
  k2 <- nrow(k1)
  tt <- append(tt, k2)
}
tt <- as.data.frame(tt)
kk <- as.data.frame(brooklyn)

brooklyn_taxi <- cbind(kk,tt)
names(brooklyn_taxi) <- c("brooklyn","freq")
brooklyn_taxi

### 绘图
with(brooklyn_taxi,plot(brooklyn,freq,main = "The number of Pull_up in Brooklyn",type = "h"))

#############################################################################################################################

### 检测 manhattan区 每个区域的上客量
tt <- c()
kk <- c()
for(i in manhattan){
  k1 <- as.data.frame(which(c$PULocationID == i))
  k2 <- nrow(k1)
  tt <- append(tt, k2)
}
tt <- as.data.frame(tt)
kk <- as.data.frame(manhattan)

manhattan_taxi <- cbind(kk,tt)
names(manhattan_taxi) <- c("manhattan","freq")
manhattan_taxi

### 绘图
with(manhattan_taxi,plot(manhattan,freq,main = "The number of Pull_up in Manhattan",type = "h"))


#############################################################################################################################


### 检测 queens区 每个区域的上客量
tt <- c()
kk <- c()
for(i in queens){
  k1 <- as.data.frame(which(c$PULocationID == i))
  k2 <- nrow(k1)
  tt <- append(tt, k2)
}
tt <- as.data.frame(tt)
kk <- as.data.frame(queens)

queens_taxi <- cbind(kk,tt)
names(queens_taxi) <- c("queens","freq")
queens_taxi

### 绘图
with(queens_taxi,plot(queens,freq,main = "The number of Pull_up in Queens",type = "h"))


#############################################################################################################################


### 检测 staten_island区 每个区域的上客量
tt <- c()
kk <- c()
for(i in staten_island){
  k1 <- as.data.frame(which(c$PULocationID == i))
  k2 <- nrow(k1)
  tt <- append(tt, k2)
}
tt <- as.data.frame(tt)
kk <- as.data.frame(staten_island)

staten_island_taxi <- cbind(kk,tt)
names(staten_island_taxi) <- c("staten_island","freq")
staten_island_taxi

### 绘图
with(staten_island_taxi,plot(staten_island,freq,main = "The number of Pull_up in Staten Island",type = "h"))



write.csv(bronx_taxi,file="/Users/harry./Desktop/result_pic/bronx区域的搭乘量 yellow_01.csv",quote=F,row.names = F)
write.csv(brooklyn_taxi,file="/Users/harry./Desktop/result_pic/brooklyn区域的搭乘量 yellow_01.csv",quote=F,row.names = F)
write.csv(manhattan_taxi,file="/Users/harry./Desktop/result_pic/manhattan区域的搭乘量 yellow_01.csv",quote=F,row.names = F)
write.csv(queens_taxi,file="/Users/harry./Desktop/result_pic/queens区域的搭乘量 yellow_01.csv",quote=F,row.names = F)
write.csv(staten_island_taxi,file="/Users/harry./Desktop/result_pic/staten island区域的搭乘量 yellow_01.csv",quote=F,row.names = F)



write.csv(bronx_taxi,file="/Users/harry./Desktop/result_pic/bronx区域的搭乘量 green_01.csv",quote=F,row.names = F)
write.csv(brooklyn_taxi,file="/Users/harry./Desktop/result_pic/brooklyn区域的搭乘量 green_01.csv",quote=F,row.names = F)
write.csv(manhattan_taxi,file="/Users/harry./Desktop/result_pic/manhattan区域的搭乘量 green_01.csv",quote=F,row.names = F)
write.csv(queens_taxi,file="/Users/harry./Desktop/result_pic/queens区域的搭乘量 green_01.csv",quote=F,row.names = F)
write.csv(staten_island_taxi,file="/Users/harry./Desktop/result_pic/staten island区域的搭乘量 green_01.csv",quote=F,row.names = F)



write.csv(bronx_taxi,file="/Users/harry./Desktop/result_pic/bronx区域的搭乘量 fhv_01.csv",quote=F,row.names = F)
write.csv(brooklyn_taxi,file="/Users/harry./Desktop/result_pic/brooklyn区域的搭乘量 fhv_01.csv",quote=F,row.names = F)
write.csv(manhattan_taxi,file="/Users/harry./Desktop/result_pic/manhattan区域的搭乘量 fhv_01.csv",quote=F,row.names = F)
write.csv(queens_taxi,file="/Users/harry./Desktop/result_pic/queens区域的搭乘量 fhv_01.csv",quote=F,row.names = F)
write.csv(staten_island_taxi,file="/Users/harry./Desktop/result_pic/staten island区域的搭乘量 fhv_01.csv",quote=F,row.names = F)


