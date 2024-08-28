setwd("~/R/Mag/JBtc")

install.packages("cryptoQuotes")
library(cryptoQuotes)

install.packages("quantmod")
library(quantmod)


btc <- getSymbols("BTC-USD", env = NULL,  src = "yahoo", from = "2024-01-01", to = Sys.Date())

# Preglej podatke
head(btc)

# dnevni returns
btc_returns <- dailyReturn(Cl(btc)); head(btc_returns * 100)

chartSeries(btc_returns, type="line", name = "Dnevni donosi Bitcoin", theme = chartTheme("white") )


# Roc 

btc_roc <- ROC(Cl(btc), type = "continuous")

# Nariši graf RoC
chartSeries(btc_roc, name = "Rate of Change (RoC) BTC", type = "line", theme = chartTheme("white"))

plot(btc_roc, main = "Rate of Change (RoC) BTC", col = "blue", type = "l", ylab = "RoC", xlab = "Datum")






