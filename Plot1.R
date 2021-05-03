## Plot 1
## Load data
consumption <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data <- subset(consumption, consumption$Date == "1/2/2007" | consumption$Date == "2/2/2007")
str(data)

## Create plot
png(file = "plot1.png", width = 480, height = 480)
with(data, hist(Global_active_power, xlab = "Global Active Power(kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red"))
dev.off()
