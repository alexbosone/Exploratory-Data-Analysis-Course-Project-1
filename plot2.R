power<-read.table("household_power_consumtion.txt", sep=";", skip=66636,nrow=2880)  ## read the txt file, only the selected period

library(datasets)

power$ts<-strptime(paste(power[,1],power[,2]),format="%d/%m/%Y %H:%M:%S")

plot(power$ts,power[,3],main="",type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.copy(png,width=400, height=400, file="plot2.png")

graphics.off()