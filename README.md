# A-Comparative-Study-on-the-Behavior-of-Traditional-Taxi-and-For-Hire-Vehicle-Based-on-Big-Data
Southwest Jiaotong University -- University SRTP (Student Research Training Program)

Tutor: Prof Hongtai Yang

2018-05 ---– 2019-04

Get the data
===
## R and R Studio is required in this project
**The data used in this project is from the NYC Taxi and Limousine Commission website and is very detailed for FHV (For-Hire Vehicle) and taxi (Yellow/Green) vehicles and is well labelled and comprehensive.**

NYC Taxi and Limousine Commission: [<https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page>](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page)

(NYC Citi Bike data can be found on another website which can also be using the code in this project to do some analysis: [<https://www.citibikenyc.com/system-data>](https://www.citibikenyc.com/system-data))


**1. You are supposed to use the code from the Get_Data file to select the useful data that will be used in this project**
- Srtp_Yellow.R
- Srtp_Green.R
- Srtp_FHV.R

**2. Using the code in Analysis to give a further level of analysis**
- Yellow_Analysis.R
- Green_Analysis.R
- FHV_Analysis.R

**3. Finally, you can use another two R files to draw pictures and get the most popular pick-up and drop-off zone**
- Pic_plot.R
- Zone_search.R

Update -- 2021.05.17
===
> During the Master's study at the University of Southampton, there is a module called **COMP6237 Data Mining**, in this module I have a coursework in which I have selected the same dataset to do something different.

## Kaggle -- Playground Prediction Competition
The original competition is to challenge you to build a model that predicts the total ride duration of taxi trips in New York City. But I will only upload the code that I am responsible for, mainly the part of pre-processing and feature engineering of the data, as well as a simple linear model to check the results.

Kaggle: [<https://www.kaggle.com/c/nyc-taxi-trip-duration/overview>](https://www.kaggle.com/c/nyc-taxi-trip-duration/overview)


**Unlike my use of the R language before, I have now started to choose to use python for the new processing of the data.**

```bash
Features of the data obtained by the code：
 #   Column              Non-Null Count    Dtype  
---  ------              --------------    -----  
 0   passenger_count     1444061 non-null  int64       乘客数量  
 1   distance            1444061 non-null  float64     欧式距离
 2   manhattan_distance  1444061 non-null  float64     曼哈顿距离
 3   haversine_distance  1444061 non-null  float64     Haversine距离
 4   miles_distance      1444061 non-null  float64     考虑球面弧度后的距离
 5   bearing             1444061 non-null  float64     航向角
 6   month               1444061 non-null  object      月份
 7   day                 1444061 non-null  object      日期 
 8   weekday             1444061 non-null  int64       星期（星期一=0  ...  星期日=6）
 9   pickup_time         1444061 non-null  float64     上车时间
 10  pickup_pca0         1444061 non-null  float64     经过PCA 2D-2D之后的上车纬度
 11  pickup_pca1         1444061 non-null  float64     经过PCA 2D-2D之后的上车经度
 12  dropoff_pca0        1444061 non-null  float64     经过PCA 2D-2D之后的下车纬度
 13  dropoff_pca1        1444061 non-null  float64     经过PCA 2D-2D之后的下车经度
 14  pickup_borough      1444061 non-null  int64       上车区域  
 15  dropoff_borough     1444061 non-null  int64       下车区域  
 16  borough_speed       1444061 non-null  float64     区域速度
dtypes: float64(11), int64(4), object(2)
```

#### Please note that the updated code is a Jupyter Notebook (.ipynb) rather than a .py file, I wrote and tested it on Google's Colab and it works fine, but running it locally on your PC requires some modifications
