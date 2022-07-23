# Question 1.

sessionInfo()

# Question 2.

pack_info <- installed.packages(fields = c("Package", "Version"))
pack_info[,c("Package", "Version")]

# Question 3.

 # a. integer
 a <- 100L
 class(a)

 # b. numeric
 b <- 5
 class(b)

 # c. character
 c <- "My name is Salman"
 class(c)

 # d. logical
 d <- TRUE
 class(d)

 # e. complex
 e <- 100+5i
 class(e)

# Question 4.

object_1 <- "my_text"
object_2 <- "123.456"
object_3 <- 123.456
object_4 <- 0
object_5 <- FALSE

# character to logical
object_1_ <- as.logical(object_1)

# character to numeric
object_2_ <- as.numeric(object_2)

# numeric to integer
object_3_ <- as.integer(object_3)

# numeric to logical
object_4_ <- as.logical(object_4)

# logical to character
object_5_ <- as.character(object_5)

# Question 5.

ls()

# Question 6.

data <- "1/December/1998"
date <- as.Date(data, "%d/%B/%Y")

# Question 7.

date_1 <- as.Date("1947-08-15")
date_2 <- as.Date(Sys.Date())
No._of_Years <- seq(from=date_1, to=date_2, by='year')
length(No._of_Years)-1

# Question 8.

text <- "On the 16th of December the hostilities between the two countries ended and a new nation was formed in the winter of 1971"
library(lubridate)
Date <- dmy(text)

# Question 9.

string <- "December-31-2018"
string_to_Date <- mdy(string)
month(string_to_Date)

# Question 10.

vector_10 <- c(10, 20, 30, 40, 50)
class(vector_10)

# Question 11.

vector_11 <- c(10, 20, 30, 40, 50, "text")
class(vector_11)

# Question 12.

vector_12 <- 1:1000
range <- seq(from=1, to=1000, by=10)
print(range)

# Question 13.

V1 <- 11:20

# Question 14.

V2 <- V1[c(5, 7, 9)]

# Question 15.

V3 <- V1[1:9]

# Question 16.

Airport.Codes <- c("DEL", "BOM", "PUN", "MAA", "DEL", "MAA", "PUN", "DEL", "MAA", "PUN", "PUN", "DEL", "BOM")

# Question 17.

Airport.Codes[c(3,7,10,11)] <- "PNQ"
print(Airport.Codes)

# Question 18.

x <- c(4,4,5,6,7,2,9)

 # a.
 length(x)
 mean(x)
 sum(x)
 max(x)
 min(x)
 var(x)

 # b.
 print(x[3])
 print(x[c(1,3,5,7)])
 print(x[2:6]) 

# Question 19.

Age <- 1:99

# Question 20.

Young.Old <- Age[c(1:18, 80:99)]
print(Young.Old)

# Question 21.

length(Young.Old)

# Question 22.

sum(Young.Old)
mean(Young.Old)
median(Young.Old)
min(Young.Old)
max(Young.Old)

# Question 23.

matrix <- matrix(data=1:24, nrow=6)

# Question 24.

for.m <- 1.5:30.5
my_matrix <- matrix(data=for.m, nrow=10)

# Question 25.

my_matrix[c(1,5,9), c(1,2)]

# Question 26.

data_frame <- data.frame(StoreID = c(111, 208, 113, 408),
                         Tenure = c(25, 34, 28, 52),
                         StoreType = c("Type1", "Type2", "Type1", "Type1"),
                         status = c("Poor", "Improved", "Excellent", "Poor")
                         )

# Question 27.

 # a.
 data_frame[c(1,2)]

 # b.
 data_frame[c(3,4)]

 # c.
 data_frame$Tenure

# Question 28.

Employee.Info <- data.frame(
  Employee.ID = c(1001, 1002, 1003, 1004, 1005), 
  Employee.Name = c("Aman", "Naman", "Prince", "Rahul", "Atul"), 
  Employee.Salary = c(20000, 25000, 28000, 30000, 35000), 
  Employee.Department = c("Marketing", "Accounts", "HR", "Sales", "IT"))

# Question 29.

 # a.
 ethnicity <- factor(c("White", "African amrican", "White", "Asian"))
 print(ethnicity)

 # b.
 status <- factor(c("Poor", "Improved", "Excellent", "Poor"))
 print(status)

 # c.
 outcome <- factor(c(1,3,2,4,3,1,1), labels = c("Poor", "Average", "Good", "Excellent"))
 print(outcome)

# Question 30.

 # h.
 mylist_h <- list(ages=c(25,26,18,39))

 # j.
 mylist_j <- list(ages=matrix(c(1:10), nrow=5))

 # k.
 mylist_k <- list(ages=c("one", "two", "three"))

"My First List" <- c(mylist_h, mylist_j, mylist_k)
print(c(mylist_h, mylist_j))
print(c(mylist_j, mylist_k))
print(c(mylist_h, mylist_k))

# Question 31.

df1 <- read.csv("./Datasets/stores.csv")

# Question 32.

class(df1)
names(df1)
length(df1)
dim(df1)
str(df1)
head(df1)
tail(df1)
fix(df1)
summary(df1)
Hmisc::describe(df1)

# Question 33.

library(readxl)
Car.Info <- read_excel("./Datasets/CarData.xlsx", sheet = "Sample")

# Question 34.

save(df1, file = "df1.RData")

# Question 35.

save(list = ls(), file = "My_Backup.RData")

# Question 36.

rm(df1,Car.Info)

# Question 37.

Current_objects_in_GE <- ls()
print(Current_objects_in_GE)

# Question 38.

rm(list = ls())

# Question 39.

load("df1.RData")

# Question 40.

summary(df1)

# Question 41.

str(df1)

# Question 42.

Staff_Count <- df1$Staff_Cnt
print(Staff_Count)

# Question 43.

add_calculator <- function(x){
  print(x+10)
}

Updated_Staff_Count <- add_calculator(Staff_Count)

# Question 44.

df1$Updated_Staff_Count <- Updated_Staff_Count

# Question 45.

Store_Details <- df1[,c("StoreCode", "StoreName", "StoreType", "Location", "OwnStore")]

# Question 46.

class(Store_Details)

# Question 47.

df1$StoreName <- factor(df1$StoreName)
class(df1$StoreName)

df1$StoreName <- as.character(df1$StoreName)
class(df1$StoreName)

# Question 48.

colnames(df1)[9] <- "ACPC"
colnames(df1)[11] <- "PPC"

# Question 49.

df1$MarketingSpend <- 200
library(dplyr)
df1<- df1 %>% mutate(UpdatedOperatingCost= OperatingCost+MarketingSpend)

# Question 50.

df1 <- df1 %>% select(-MarketingSpend)

# Question 51.

df1 <- df1[,c(1,2,3,4,5,17,6,7,8,9,10,11,12,13,14,15,16)]
print(df1)

# Question 52.

df1 <- df1 %>% mutate(store_class=
                        case_when(TotalSales<120 ~ "Low Perform store",
                                  TotalSales>=120 &
                                    TotalSales<240 ~ "Average Perform store",
                                  TotalSales>240 ~ "High Perform store")
)

# Question 53.

df1 %>% group_by(StoreName) %>% filter(StoreType=="Super Market", Location=="Delhi") %>% select(c("StoreName", "TotalSales")) %>% arrange(desc(TotalSales))

# Question 54.

df1 %>% filter(OwnStore==1, OnlinePresence==1) %>% select(c("StoreName", "TotalSales", "OperatingCost", "Staff_Cnt"))

# Question 55.

duplicated(df1)

# Question 56.

duplicated(df1[,1])

# Question 57.

unique_dataset <- df1 %>% distinct(StoreName, StoreCode)

# Question 58.

df1[is.na(df1)] = 0

# Question 59.

 # a.
 newstores_a <- df1 %>% arrange(StoreType)

 # b.
 newstores_b <- df1 %>% arrange(Location, desc(TotalSales))

# Question 60.

 # a.
 subset_a <- df1[,c(5,7,8,9)]

 # b.
 subset_b <- df1[,-c(5,7,8,9)]

 # c.
 subset_c <- df1[1:10,]

 # d.
 subset_d <- df1 %>% filter(StoreType=="Apparel", TotalSales>100)

 # e.
 subset_e <- df1 %>% filter(TotalSales>=100 & TotalSales<=300) %>% select(c("StoreCode", "StoreName", "Location", "TotalSales"))

 # f.
 subset_f <- df1 %>% filter(StoreType=="Electronincs", TotalSales>100) %>% select(c(1:11))
