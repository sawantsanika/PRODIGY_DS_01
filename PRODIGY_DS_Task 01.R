library(readxl)

data = read_excel("C:/Users/HP/Desktop/INTERNSHIP/PRODIGY/task 1 world population data.xlsx")   #to load the data

dim(data)   #266 countries in rows & 67 variables in column

str(data)   #To display the internal structure of the data

summary(data)  
"Used to summarize the values in dataset,
 This will return Type of the variable & 
 the minimum, maximum, median, and quartiles 
 for numeric variables in data"

"It shows that there is population total for 
 266 countries from year 1960 to 2022"

#To Create a histogram of the population data
par(mfrow = c(3,3))
hist(data$"1960", main = "Population Histogram 1960", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"1970", main = "Population Histogram 1970", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"1980", main = "Population Histogram 1980", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"1990", main = "Population Histogram 1990", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"2000", main = "Population Histogram 2000", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"2010", main = "Population Histogram 2010", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"2020", main = "Population Histogram 2020", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"2021", main = "Population Histogram 2021", xlab = "Population Range",
     ylab = "Frequency", col = "pink")

hist(data$"2022", main = "Population Histogram 2022", xlab = "Population Range",
     ylab = "Frequency", col = "pink")



"The X-axis of the histogram represents the range of population values."
"The Y-axis represents how many countries or regions fall into each population range."


"INTERPRETATION" 

"1)The overall population of the world has been increasing over time. 
  This is from the fact that the histograms are getting taller over time."

"2)The distribution of population sizes has become more skewed to the right 
 over time. This means that there are now more countries and regions with large 
 populations than there were in the past."
 
"3)The number of countries and regions with populations between 0 and 50 million 
  has decreased over time. This is evident from the fact that the first bar in 
  the histograms is getting shorter over time."
  
"4)The number of countries and regions with populations greater than 50 million 
  has increased over time. This is evident from the fact that the bars to the 
  right of the first bar in the histograms are getting taller over time."  

"Overall, the population histograms show that the world is becoming more populous 
and that the distribution of population sizes is becoming more skewed to the right."






"To check increase in population after 20 years(in year 1960, 1980, 2000, 2020)"

library(readxl)
data1 = read_excel("C:/Users/HP/Desktop/INTERNSHIP/PRODIGY/countries & count of task 1.xlsx")  


year1960 = head(sort(data1$'1960',decreasing=TRUE),n=10)

yearindex1960 = order(data1$'1960',decreasing=TRUE)[1:10]

year1960_country = data1$`Country Name`[yearindex1960]

df1 = data.frame(year1960_country, year1960)
df1

library(ggplot2)

plot = ggplot(df1, aes(x = year1960_country, y = year1960, 
                       fill = year1960_country)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(x = "Country", y = "Population Count (1960)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))   

print(plot)



year1980 = head(sort(data1$'1980',decreasing=TRUE),n=10)

yearindex1980 = order(data1$'1980',decreasing=TRUE)[1:10]

year1980_country = data1$`Country Name`[yearindex1980]

df1 = data.frame(year1980_country, year1980)
df1

library(ggplot2)

plot = ggplot(df1, aes(x = year1980_country, y = year1980, 
                       fill = year1980_country)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(x = "Country", y = "Population Count (1980)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))   

print(plot)


year2000 = head(sort(data1$'2000',decreasing=TRUE),n=10)

yearindex2000 = order(data1$'2000',decreasing=TRUE)[1:10]

year2000_country = data1$`Country Name`[yearindex2000]

df1 = data.frame(year2000_country, year2000)
df1

library(ggplot2)

plot = ggplot(df1, aes(x = year2000_country, y = year2000, 
                       fill = year2000_country)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(x = "Country", y = "Population Count (2000)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))   

print(plot)


year2020 = head(sort(data1$'2020',decreasing=TRUE),n=10)

yearindex2020 = order(data1$'2020',decreasing=TRUE)[1:10]

year2020_country = data1$`Country Name`[yearindex2020]

df1 = data.frame(year2020_country, year2020)
df1

library(ggplot2)

plot = ggplot(df1, aes(x = year2020_country, y = year2020, 
                       fill = year2020_country)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(x = "Country", y = "Population Count (2020)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))   

print(plot)

























