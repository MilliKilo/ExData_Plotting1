##  1day = 24 * 60 = 1440 minutes.  Need for 2 days in feb, therefore 1440 * 2 = 2880

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "household_power_consumption.zip")
unzip("household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, skip= 66636, nrow=2880)

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

#plot4
png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(data.electric.formal,{plot(formal.time,as.numeric(data.electric.formal$Global_active_power)/1000,type="l",ylab="Global active power(kilowatts)")
                           plot(formal.time,as.numeric(data.electric.formal$Voltage),type="l", xlab="datetime", ylab="Voltage")
                           plot(formal.time,as.numeric(data.electric.formal$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering")
                           lines(formal.time,as.numeric(data.electric.formal$Sub_metering_2),type="l",col="red")
                           lines(formal.time,as.numeric(data.electric.formal$Sub_metering_3),type="l",col="blue")
                           legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
                           plot(formal.time,as.numeric(data.electric.formal$Global_reactive_power)/1000,type="l", xlab="datetime", ylab="Global_reactive_power")})
dev.off()