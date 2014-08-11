## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Question 1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
## Information provided: Using the base plotting system, make a plot showing the total 
## PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

<<<<<<< HEAD
names(data)
##[1] "X31.1.2007" "X23.59.00"  "X0.326"     "X0.126"     "X242.800"   "X1.400"     "X0.000"    
##[8] "X0.000.1"   "X0.000.2"  

names(data)[1] <- "Date"
names(data)[2] <- "Time"
names(data)[3] <- "Global_active_power"
names(data)[4] <- "Global_reactive_power"
names(data)[5] <- "voltage"
names(data)[6] <- "Global_intensity"
names(data)[7] <- "Sub_metering_1"
names(data)[8] <- "Sub_metering_2"
names(data)[9] <- "Sub_metering_3"

names(data)
##[1] "Date"                  "Time"                  "Global_active_power"   "Global_reactive_power"
##[5] "voltage"               "Global_intensity"      "Sub_metering_1"        "Sub_metering_2"       
##[9] "Sub_metering_3"       
=======
# Save png
dev.copy(png,"plot1.png", width=480, height=480)

# Release screen device
dev.off()
>>>>>>> 05f179ab027fbb90c948fd0ca3b3ba25171944d7


<<<<<<< HEAD
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
=======
## Answer 1: 
>>>>>>> 05f179ab027fbb90c948fd0ca3b3ba25171944d7
