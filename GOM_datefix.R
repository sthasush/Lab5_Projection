data <- read.csv(file="GOM.csv")
head(data)
str(data)
yr <- as.character(data$Year)
mo <- as.character(data$Month)
d <- as.character(data$Day)
head(mo)
head(yr)
head(d)
mo <- str_c("0",mo, sep="")
head(mo)

yr_mo_d <- str_c(yr,mo,d, sep="-")
head(yr_mo_d)

data$Year <- yr_mo_d
head(data)
tail(data)

write.csv(data, file= "GOM_date.csv")
str(a)