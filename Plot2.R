## Plot 2
## Load data
consumption <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data <- subset(consumption, consumption$Date == "1/2/2007" | consumption$Date == "2/2/2007")
Date_and_time <- paste(data$Date, data$Time)
Date_and_time1 <- strptime(Date_and_time, format = "%d/%m/%Y %H:%M:%S")

## Create plot
png(file = "plot2.png", width = 480, height = 480)
plot(Date_and_time1, data$Global_active_power, xlab = "", ylab = "Global Active Power(kilowatts)", type = "l")
dev.off()
