# Data-Driven-Insight for Stocks Prediction
This project analyzes Tesla's stock performance for the year 2024 using R. It leverages financial data from Yahoo Finance to calculate key metrics, visualize trends, and measure market volatility. The project is designed to demonstrate skills in data cleaning, time series analysis, and data visualization.


Key Features

Data Extraction: Retrieved Tesla stock data from Yahoo Finance using the quantmod package.
Data Cleaning: Removed missing values to ensure accuracy in analysis.
Daily Returns Calculation: Computed daily percentage changes in stock price.
Moving Averages: Calculated 50-day and 200-day moving averages to analyze short-term and long-term trends.
Volatility Measurement: Determined the standard deviation of daily returns to assess stock risk.
Data Visualization: Used ggplot2 to create insightful visualizations for stock price trends and daily returns.


Tools and Libraries

R Packages:
quantmod: For stock data extraction.
ggplot2: For creating visualizations.
TTR: For calculating moving averages.


Visualizations

Stock Prices and Moving Averages: A line chart displaying Tesla’s closing price along with its 50-day and 200-day moving averages.
Daily Returns: A line chart showing Tesla’s daily stock returns, highlighting day-to-day performance.


Outputs

CSV File: Processed data exported as Stock_Analysis_TSLA.csv.
Visualizations: Clear and interactive plots showcasing key trends and insights.



Future Improvements

Adding advanced metrics like Relative Strength Index (RSI) or Bollinger Bands.
Expanding the analysis to include comparisons with other companies.
Automating the analysis for real-time data updates.


Contributing

Feel free to fork this repository and suggest improvements or add features. Contributions are always welcome!

