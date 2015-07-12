## Ensure the data file is in the working directory
if (!"Data_Processing.R" %in% list.files()) {
  setwd("/Users/alexpeay/Desktop/RClass/Month4/")
} 
source("Data_Processing.R")
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()