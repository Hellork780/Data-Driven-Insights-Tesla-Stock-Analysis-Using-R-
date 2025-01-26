install.packages("quantmod")
library(quantmod)
getSymbols("TSLA", src = "yahoo", from = "2024-01-01", to = "2025-01-01")
View(TSLA)
chartSeries(TSLA)
sum(is.na(TSLA))# check for missing values
clean_data <- na.omit(TSLA) #Remove rows with missing data( if any) 
stock_data <- data.frame(Date = index(clean_data),coredata(clean_data)) # convert to a data frame
head(stock_data)
stock_data$Daily_Return <- dailyReturn(Cl(clean_data)) #Calculate daily returns
#calculate moving average
stock_data$MA_50 <- SMA(Cl(clean_data), n = 50)
stock_data$MA_200 <- SMA(Cl(clean_data), n = 200)
#Measure volatility(standards deviation of daily result)
volatility <- sd(stock_data$Daily_Return, na.rm = TRUE)
print(paste("Volatility:",round(volatility,4)))
# Install and load ggplot2
install.packages("ggplot2")
library(ggplot2)

# Plot stock prices with moving averages
ggplot(stock_data, aes(x = Date)) +
  geom_line(aes(y = TSLA.Close, color = "Close Price")) +
  geom_line(aes(y = MA_50, color = "50-Day MA")) +
  geom_line(aes(y = MA_200, color = "200-Day MA")) +
  labs(title = "Stock Prices and Moving Averages", x = "Date", y = "Price") +
  theme_minimal() +
  scale_color_manual(values = c("blue", "red", "green"))

# Plot daily returns
ggplot(stock_data, aes(x = Date, y = Daily_Return)) +
  geom_line(color = "purple") +
  labs(title = "Daily Returns", x = "Date", y = "Daily Return") +
  theme_minimal()
write.csv(stock_data,"Stock_Analysis_TSLA.csv")