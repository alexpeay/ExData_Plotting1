## Ensure the data file is in the working directory
if (!"Data_Processing.R" %in% list.files()) {
  setwd("/Users/alexpeay/Desktop/RClass/Month4/")
} 
source("Data_Processing.R")
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2, 2))
## Upper-left
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
## Upper-right
plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
## Lower-left
plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
## Lower-right
plot(DateTime, Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = colnames(newData)[4])
dev.off()