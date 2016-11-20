# real_estate

## 统计研究中心房地产项目的代码

### frequency
计算47个csv文件中，小区名称出现的次数，并按降序排列

### input_csv
读取47个文件中的小区名称，删去重复项

### real\_estate\_location
查询小区的坐标，并对无查询结果的小区名称进行适当处理（保存有百度地图API的秘钥）

### 0\_coordinate_cities
爬取百城的经纬度坐标  
cities.csv -> cities_coordinate.csv

### 1\_location_price
将百城2010年6月到2016年3月的房价整合到包含坐标的excel表中  
cities_coordinate.csv -> 100cities\_location\_price.csv

### 2\_distance
计算长三角区域各城市之间的距离及倒数  
location\_changsanjiao.csv -> distance\_changsanjiao.csv & distance\_inverse\_changsanjiao

### 3\_reverse
取出长三角区域的城市样本，保留价格数据，并将价格按日期从近到远排列  
location\_changsanjiao.csv & 100cities\_location_price -> price\_reverse\_changsanjiao.csv

### 4\_product  
计算距离倒数矩阵与价格矩阵的乘积  
distance\_inverse\_changsanjiao.csv & price\_reverse\_changsanjiao.csv -> product\_changsanjiao.csv

### 5\_final\_data
按照论文中的要求，将长三角19个城市的价格、乘积数据及滞后项整理出来  
price\_changsanjiao\_reverse.csv & product\_changsanjiao.csv -> regression文件夹

### 6\_core\_city.R  
在中心城市的24个线性回归模型中，选出预测误差最低的模型，并输出残差、系数

### 7\_each\_city.R
在周边城市的144个线性回归模型中，选出预测误差最低的模型，并输出残差、系数

### 8\_matrix
按照论文要求，对模型的残差、系数进行一系列处理，最终得到脉冲响应函数的图示