data <- read.csv("house.txt",sep=";")
newdata <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
x <- paste(newdata$Date,newdata$Time)
x1<- strptime(x,"%d/%m/%Y %H:%M:%S")
png("Plot3.png",width = 480 , height = 480)
plot(x1,as.numeric(newdata$Sub_metering_1), type = "l",col="black",ylab = "Energy sub metering",xlab = "")
lines(x1,as.numeric(newdata$Sub_metering_2),col = "red")
lines(x1,as.numeric(newdata$Sub_metering_3),col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1, cex=1)

dev.off()