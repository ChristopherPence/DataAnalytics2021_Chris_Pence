
# Exercise 1
gpw3 <- read.csv('/data/GPW3_GRUMP_SummaryInformation_2010.csv', header = T)
view(gpw3)

epi <- read.csv('./data/2010EPI_data.csv', header = T)
view(epi)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

# Best way to get rid of unwanted values in a dataframe
# water_df = read.csv('../../Data_Labs/water-treatment.csv', header = T)
# str(water_df)
# #get rid of "?" via NA OMIT function in DF...
# water_df[water_df=="?"]<-NA
# View(water_df)
# water_df = na.omit(water_df)

data <- read.csv(file.choose(), header = T)
View(data)
data[data=="?"]<-NA
View(data)
data = na.omit(data)

summary(data)
fivenum(data, na.rm=TRUE)
stem(EPI)
plot(ecdf(data), do.points=FALSE, verticals=TRUE)

qqnorm(data)

qqline(data)

# From the slides
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")

boxplot(data)

# Filtering part 2
EPILand <- data[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)

# Slide 23 problem
EPI_region_europe <- data[data$x.2 == "Europe"]



