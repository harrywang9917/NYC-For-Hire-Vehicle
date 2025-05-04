### 关于获取上下车的地点
#c <- as.data.frame(yellow_12[8:9])#真实有效
#c <- as.data.frame(green_12[6:7])
c <- as.data.frame(fhv_12[4:5])


#c[c==0] <- NA
c[c==264] <- NA
c[c==265] <- NA
c <- na.omit(c)
names(c) <- c("PULocationID","DOLocationID")

#############################################################################################################################

### 绘图
#with(c,plot(PULocationID,DOLocationID,pch=19,main = "上车点与下车点的散点图"))     #  标准散点图
#with(c,smoothScatter(PULocationID,DOLocationID,pch=19,main = "上车点与下车点的散点图"))   #  改进散点图

library(hexbin)   #  进阶散点图
with(c,{
     bin <- hexbin(PULocationID,DOLocationID,xbins = 50)
     plot(bin , main ="PUll and Drop Location")
    })


#############################################################################################################################

### 获取频率

d <- table(c)
 #sort(d,decreasing=T) #降序排列 
e <- as.data.frame(d)
# 获取最大值 d[which.max(d)]
# 获取最小值 d[which.min(d)]

d_t <- d[order(d,decreasing = T)[1:50]]
a <- c(d_t)   # 将频率放进去
b = c()
a1 = c()

for (i in a) {
  b = append(b,which(e$Freq == i)) # 将频数对应的序列号输入近b中
}

for (i in b) {
  a2 = as.data.frame(e[i:i,])
  a1 <- rbind(a1, a2)   # 将序列号对应的内容放入到 a1 中
}

#a1

#############################################################################################################################

### 上客地的地址的统计
jojo <- c()

for (i in a1$PULocationID) {
  if (i %in% bronx) {
    jojo <- append(jojo,"Bronx")
  }else if(i %in% brooklyn){
    jojo <- append(jojo,"Brooklyn")
  }else if(i %in% manhattan){
    jojo <- append(jojo,"Manhattan")
  }else if(i %in% queens){
    jojo <- append(jojo,"Queens")
  }else if(i %in% staten_island){
    jojo <- append(jojo,"Staten Island")
  }else if(i == 1){
    jojo <- append(jojo,"EWR")
  }else{
    jojo <- append(jojo,"Unknown")
  }
}
as.data.frame(jojo)
table(jojo)


### 下客地的地址的统计
koko <- c()

for (i in a1$DOLocationID) {
  if (i %in% bronx) {
    koko <- append(koko,"Bronx")
  }else if(i %in% brooklyn){
    koko <- append(koko,"Brooklyn")
  }else if(i %in% manhattan){
    koko <- append(koko,"Manhattan")
  }else if(i %in% queens){
    koko <- append(koko,"Queens")
  }else if(i %in% staten_island){
    koko <- append(koko,"Staten Island")
  }else if(i == 1){
    koko <- append(koko,"EWR")
  }else{
    koko <- append(koko,"Unknown")
  }
}
as.data.frame(koko)
table(koko)

a1 <- cbind(a1,jojo)
a1 <- cbind(a1,koko)

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！

write.csv(a1,file="/Users/harry./Desktop/result_pic/Top50_of_yellow_12.csv",quote=F,row.names = F)

write.csv(a1,file="/Users/harry./Desktop/result_pic/Top50_of_green_12.csv",quote=F,row.names = F)

write.csv(a1,file="/Users/harry./Desktop/result_pic/Top50_of_fhv_12.csv",quote=F,row.names = F)



#############################################################################################################################


### 获取上下车的日期
date_big <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31)
date_small <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
date_special <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28)

y_date_asis <- c(100000,200000,300000,400000,500000,600000,700000,800000)


###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
freq_of_date_pull_fhv_12 <- as.data.frame(freq_of_date_pull_fhv_12)
freq_of_date_pull_green_12 <- as.data.frame(freq_of_date_pull_green_12)
freq_of_date_pull_yellow_12 <- as.data.frame(freq_of_date_pull_yellow_12)

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
plot(date_big,freq_of_date_pull_yellow_12$Freq, col=6, ylim=c(10000,800000), type = "l", main = "Freq of Date", xlab = "Date",ylab ="Freq",yaxt="n")
lines(date_big,freq_of_date_pull_green_12$Freq,col=3,type="l")
lines(date_big,freq_of_date_pull_fhv_12$Freq,col=1,type="l")
legend("topright",pch=c(15,15),legend=c("Yellow","Green","FHV"),col=c(7,3,1),bty="n")
axis(2,y_date_asis)




### 获取上下车的时间
time <- c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23)

y_time_asis_yellow <- c(0,100000,200000,300000,400000,500000,600000)
y_time_asis_green <- c(0,10000,20000,30000,40000,50000,60000,70000,80000)
y_time_asis_fhv <- c(0,100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000)

#细分后仅计算小时的情况

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
hour_minute_second  <- strsplit((Time_pull_yellow_12),":")   ### Yellow
hour <- sapply(hour_minute_second, "[",1)
hour <- table(hour)
#sort(hour_yellow1,decreasing = T)

plot(time,hour,xlab = "Hour",ylab = "Freq",type = "h", main = " Freq of Hours Yellow_12")
axis(2,y_time_asis_yellow)

###########################################################################################################################

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
hour_minute_second  <- strsplit((Time_pull_green_12),":")   ### Green
hour <- sapply(hour_minute_second, "[",1)
hour <- table(hour)
#sort(hour,decreasing = T)

plot(time,hour,xlab = "Hour",ylab = "Freq",type = "h", main = " Freq of Hours Green_12")
axis(2,y_time_asis_green)

###########################################################################################################################

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
hour_minute_second  <- strsplit((Time_pull_fhv_12),":")   ### FHV
hour <- sapply(hour_minute_second, "[",1)
hour <- table(hour)
#sort(hour,decreasing = T)

plot(time,hour,xlab = "Hour",ylab = "Freq",type = "h", main = " Freq of Hours fhv_12")
axis(2,y_time_asis_fhv)



###########################################################################################################################
###########################################################################################################################
###########################################################################################################################


#粗暴的全部带分带秒计算的情况

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
plot(table(Time_pull_yellow_12))
plot(table(Time_pull_green_12))
plot(table(Time_pull_fhv_12))


#plot(hour_yellow_01)



###########################################################################################################################
###########################################################################################################################
###########################################################################################################################





### 上下车地区的数量

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！
as.data.frame(freq_of_area_pull_yellow_12)
as.data.frame(freq_of_area_pull_green_12)
as.data.frame(freq_of_area_pull_fhv_12)

plot(freq_of_area_pull_yellow_12, col=7, type = "h", xlab = "zone", ylab ="Freq")
lines(freq_of_area_pull_fhv_12, col=1, type = "h")
lines(freq_of_area_pull_green_12, col=3, type = "h")
legend("topleft",pch=c(15,15),legend=c("Yellow","Green","FHV"),col=c(7,3,1),bty="n")

###################### 要改名字！！！！！
###################### 要改名字！！！！！
###################### 要改名字！！！！！

write.csv(freq_of_area_pull_yellow_12,file="/Users/harry./Desktop/result_pic/freq_of_area_pull_yellow_12.csv",quote=F,row.names = F)
write.csv(freq_of_area_pull_green_12,file="/Users/harry./Desktop/result_pic/freq_of_area_pull_green_12.csv",quote=F,row.names = F)
write.csv(freq_of_area_pull_fhv_12,file="/Users/harry./Desktop/result_pic/freq_of_area_pull_fhv_12.csv",quote=F,row.names = F)




