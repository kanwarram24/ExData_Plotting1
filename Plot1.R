
data <- read.csv("house.txt",sep=";")
newdata <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
png("Plot1.png",width = 480 , height = 480)
hist(as.numeric(as.character(newdata$Global_active_power)),xlab = "Global Active Power (killowatts)",main = "Global Active Power", col = "red")
dev.off()