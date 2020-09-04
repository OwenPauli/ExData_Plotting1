complete_dataset <-
  read.csv(
    "household_power_consumption.txt",
    header = T,
    sep = ';',
    na.strings = "?",
    nrows = 2075259,
    check.names = F,
    stringsAsFactors = F,
    comment.char = "",
    quote = '\"'
  )
relevant_dates <-
  subset(complete_dataset, Date %in% c("1/2/2007", "2/2/2007"))
relevant_dates$Date <-
  as.Date(relevant_dates$Date, format = "%d/%m/%Y")
hist(
  relevant_dates$Global_active_power,
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency",
  col = "Red"
)
dev.copy(png,
         file = "plot1.png",
         height = 480,
         width = 480)
dev.off()
