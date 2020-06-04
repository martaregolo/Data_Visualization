unzip("exdata_data_household_power_consumption.zip")
data<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
data<-subset(data, data$Date=="1/2/2007" | data$Date=="2/2/2007")

png("plot1.png",width=480, height=480)
G<-as.numeric(as.character(data$Global_active_power))
hist(G, col="red", main="Global Active Power", xlab="Gloval Active Power (kilowatts)")
dev.off()