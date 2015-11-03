source("./tidy-data.R")

#Plot4
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(data$Time+data$Date, data$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="") 
plot(data$Time+data$Date, data$Voltage, type='l', ylab="Voltage", xlab="datetime") 
plot(data$Time+data$Date, data$Sub_metering_1, type='l', ylab="Energy sub metering", xlab="") 
lines(data$Time+data$Date, data$Sub_metering_2, col="red")
lines(data$Time+data$Date, data$Sub_metering_3, col="blue")
legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n", lty=1, col=c('black', 'red', 'blue'))
plot(data$Time+data$Date, data$Global_reactive_power, type='l', ylab="Global_reactive_power", xlab="datetime") 
dev.off()
par(mfrow=c(1,1))

