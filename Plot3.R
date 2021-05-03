## Plot 3
## Load data
consumption <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE)
data <- subset(consumption, consumption$Date == "1/2/2007" | consumption$Date == "2/2/2007")
Date_and_time <- paste(data$Date, data$Time)
Date_and_time1 <- strptime(Date_and_time, format = "%d/%m/%Y %H:%M:%S")

## Create plot
png(file = "plot3.png", width = 480, height = 480)
plot(Date_and_time1, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type ="l")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
lines(Date_and_time1, data$Sub_metering_2, col = "red")
lines(Date_and_time1, data$Sub_metering_3, col = "blue")
dev.off()

