power<-read.table("household_power_consumtion.txt", sep=";", skip=66636,nrow=2880)  ## read the txt file, only the selected period

   library(datasets)
   
hist(power$V3,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)") ## create the histogram

   dev.copy(png,width=400, height=400, file="plot1.png") ##create the png file 
   
graphics.off()  ##generate the png file