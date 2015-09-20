png("plot1.png", height=480, width=480)
#read all hte file 
dt<-read.table("household_power_consumption.txt",header = T,sep = ";", stringsAsFactors = F,na.strings = "?")

# parse Date col
dt$Date<- as.Date(dt$Date,"%d/%m/%Y")

# # subset
dt<-dt[dt$Date <= as.Date("2007-02-02","%Y-%m-%d"),]
dt<-dt[dt$Date >= as.Date("2007-02-01","%Y-%m-%d"),]

dt$Time<- strptime(paste(as.character(dt$Date),dt$Time),"%Y-%m-%d %H:%M:%S",tz="PDT")


# plot 1 

hist(dt$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")



dev.off()
