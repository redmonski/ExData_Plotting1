p <- read.table("./data/household_power_consumption.txt", sep = ";", na = "?",stringsAsFactors = F, header = T)
power <- p[p$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime <- strptime(paste(power$Date, power$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(dateTime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
