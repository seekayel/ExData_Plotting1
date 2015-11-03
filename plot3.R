source("./tidy-data.R")

#Plot3
png("plot3.png", width = 480, height = 480)
plot(data$Time+data$Date, data$Sub_metering_1, type='l', ylab="Energy sub metering", xlab="") 
lines(data$Time+data$Date, data$Sub_metering_2, col="red")
lines(data$Time+data$Date, data$Sub_metering_3, col="blue")
legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'))
dev.off()
