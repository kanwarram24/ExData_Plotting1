data <- read.csv("house.txt",sep=";")
newdata <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
y<- as.numeric(as.character(newdata$Global_active_power))
x <- paste(newdata$Date,newdata$Time)
x1<- strptime(x,"%d/%m/%Y %H:%M:%S")
png("Plot2.png",width = 480 , height = 480)
plot(x1,y,type = "l", ylab = "Global Active Power (killowatts)",xlab = "")
dev.off()