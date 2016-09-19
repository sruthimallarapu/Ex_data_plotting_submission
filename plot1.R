
data<- read.csv("E:/R/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data_subset <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
data_subset_convert_data <- paste(as.Date(data_subset$Date))
png("plot1.png", width=480, height=480)
hist(data_subset$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()

