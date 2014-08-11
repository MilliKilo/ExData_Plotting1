## Question 4: Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

<<<<<<< HEAD
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "household_power_consumption.zip")
unzip("household_power_consumption.zip")

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

data <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
data1$Date <- as.character(data1$Date)
data1$Time <- as.character(data1$Time)
data1$Date <- rep(c("1/2/07","2/2/07"), each=1440)
x <- paste(data1$Date,data1$Time)
new.time <- strptime(x,"%d/%m/%y %H:%M:%S")
data.new <- data.frame(new.time,data1)

## plot4
png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(data.electric.formal,{plot(new.time,as.numeric(data.new$Global_active_power)/1000,type="l", xlab="", ylab="Global Active Power(kilowatts)")
                           plot(new.time,as.numeric(data.new$Voltage),type="l", xlab="datetime", ylab="Voltage")
                           plot(new.time,as.numeric(data.new$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering")
                           lines(new.time,as.numeric(data.new$Sub_metering_2),type="l",col="red")
                           lines(new.time,as.numeric(data.new$Sub_metering_3),type="l",col="blue")
                           legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
                           plot(new.time,as.numeric(data.new$Global_reactive_power)/1000,type="l", xlab="datetime", ylab="Global_reactive_power")})
dev.off()
=======
# Save png
dev.copy(png,"plot4.png", width=480, height=480)

# Release screen device
dev.off()

## Answer 4: 
>>>>>>> 05f179ab027fbb90c948fd0ca3b3ba25171944d7
