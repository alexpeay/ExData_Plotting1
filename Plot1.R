## Ensure the data file is in the working directory
if (!"Data_Processing.R" %in% list.files()) {
  setwd("/Users/alexpeay/Desktop/RClass/Month4/")
} 
source("Data_Processing.R")
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))
dev.off()
