
data<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
data<-subset(data, data$Date=="1/2/2007" | data$Date=="2/2/2007")

png("plot2.png",width=480, height=480)
time<-data$Time
date<-data$Date
datetime<-paste(date, time, sep=" ")
dat<-strptime(datetime, "%d/%m/%Y %H:%M:%S")
plot(dat,as.numeric(as.character(data$Global_active_power)),type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
