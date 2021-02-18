library(MASS)
attach(Boston)
?Boston

# Comments included for notes on what each of the functions do

head(Boston) # Gets the first rows
#head(Boston, 10) #First 10 rows

dim(Boston) # dimensions of the dataset

names(Boston) # column names

str(Boston) # str function shows the structure of the dataset

nrow(Boston) # function shows the number of rows

ncol(Boston) # function shows the number of columns

summary(Boston) # summary() function shows the summary statistics

summary(Boston$crim)# summary of the "crime" column in the Boston dataset

https://community.rstudio.com/t/missing-rtools-should-i-be-worried/27817/3