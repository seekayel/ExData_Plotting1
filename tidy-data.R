
library("data.table")
library("lubridate")

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"


if(!file.exists("./data.csv")) {
    download.file(fileURL, destfile="exdata-data-household_power_consumption.zip", method="curl")
    unzip("./exdata-data-household_power_consumption.zip", exdir=".")
    system('grep -E "Date|^[12]/2/2007" household_power_consumption.txt | grep -v "?" > data.csv')
}

data<-read.csv("data.csv",header=TRUE, sep=";", colClasses=c("character","character",rep("numeric",7)))
data$Date<-dmy(data$Date)
data$Time<-hms(data$Time)


