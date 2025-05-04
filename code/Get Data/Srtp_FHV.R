getwd()
setwd("/Users/harry./Desktop/Srtp")
fhv_data <- read.table("fhv_tripdata_2017-01.csv",header = TRUE,sep = ",")


### 得到 PULocation 和 DOLocation 的数据
Datas_of_area_drop_fhv_data <- fhv_data[5]
Datas_of_area_pull_fhv_data <- fhv_data[4]

freq_of_area_drop_fhv_data <- table(Datas_of_area_drop_fhv_data) #整理数据频率
freq_of_area_pull_fhv_data <- table(Datas_of_area_pull_fhv_data)

names(freq_of_area_drop_fhv_data) #提取table()中的元素
names(freq_of_area_pull_fhv_data)
as.numeric(freq_of_area_drop_fhv_data) #提取table()中的频率
as.numeric(freq_of_area_pull_fhv_data)

area_freq_drop_fhv_data <- as.data.frame(freq_of_area_drop_fhv_data) #将数据转换成Dataframe
area_freq_pull_fhv_data <- as.data.frame(freq_of_area_pull_fhv_data)

area_freq_drop_fhv_data
area_freq_pull_fhv_data

area_freq_drop_fhv_data[which(area_freq_drop_fhv_data$Freq==1),] #选取次数为1的


### 得到 tpep_pickup_datetime 和 tpep_dropoff_datetime 的信息
Datas_of_time_drop_fhv_data <- fhv_data[3]
Datas_of_time_pull_fhv_data <- fhv_data[2]

time_drop_fhv_data <- as.data.frame(Datas_of_time_drop_fhv_data) #把日期放进Dataframe
time_pull_fhv_data <- as.data.frame(Datas_of_time_pull_fhv_data)


time_drop_fhv_data$DropOff_datetime <- as.character (time_drop_fhv_data$DropOff_datetime) #将数据格式转化为character
time_pull_fhv_data$Pickup_DateTime <- as.character (time_pull_fhv_data$Pickup_DateTime)
Date_Time_drop_fhv_data <- strsplit((time_drop_fhv_data$DropOff_datetime), " ") #将数据分为 日期 和 时间
Date_Time_pull_fhv_data <- strsplit((time_pull_fhv_data$Pickup_DateTime), " ")
#Date_Time_drop_fhv_data

Date_drop_fhv_data <- sapply(Date_Time_drop_fhv_data,"[",1) #Drop的日期
Date_pull_fhv_data <- sapply(Date_Time_pull_fhv_data,"[",1)
Time_drop_fhv_data <- sapply(Date_Time_drop_fhv_data,"[",2) #Drop的时间 
Time_pull_fhv_data <- sapply(Date_Time_pull_fhv_data,"[",2)
#Date_drop_fhv_data
#Time_drop_fhv_data

freq_of_date_drop_fhv_data <- table(Date_drop_fhv_data) #Drop的日期频率
freq_of_date_pull_fhv_data <- table(Date_pull_fhv_data) #Pull的日期频率
freq_of_date_drop_fhv_data
freq_of_date_pull_fhv_data

plot(freq_of_date_pull_fhv_data)
