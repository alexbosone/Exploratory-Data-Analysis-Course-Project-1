power<-read.table("household_power_consumtion.txt", sep=";", skip=66636,nrow=2880)  ## read the txt file, only the selected period

power$ts<-strptime(paste(power$V1,power$V2),format="%d/%m/%Y %H:%M:%S")

library(datasets)

plot(power$ts,power$V7,main="",type="n",ylab="Energy sub metering",xlab="")
points(power$ts,power$V7,type="l",col="black") ## black line
points(power$ts,power$V8,type="l",col="red") ## red line
points(power$ts,power$V9,type="l",col="blue") ## blue line
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid") ##legend

dev.copy(png,width=400, height=400, file="plot3.png")

graphics.off()