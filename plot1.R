p <- read.table("./data/household_power_consumption.txt", sep = ";", na = "?",stringsAsFactors = F, header = T)
power <- p[p$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)
hist(power$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
