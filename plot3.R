data<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
data<-subset(data, data$Date=="1/2/2007" | data$Date=="2/2/2007")

png("plot3.png",width=480, height=480)
time<-data$Time
date<-data$Date
datetime<-paste(date, time, sep=" ")
dat<-strptime(datetime, "%d/%m/%Y %H:%M:%S")
plot(dat,as.numeric(as.character(data$Sub_metering_1)), col="black", type="l", ylab = "Energy sub metering", xlab="")
lines(dat,as.numeric(as.character(data$Sub_metering_2)), col="red", type="l")
lines(dat,as.numeric(as.character(data$Sub_metering_3)), col="blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lty=1:1,cex=1)
dev.off()