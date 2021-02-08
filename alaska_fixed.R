library (tidyverse)
list.files()
a <- readxl::read_excel(path= "Alaska.xlsx", sheet=1)
head(a)
str(a)

yr <- as.character(a$year)
mo <- as.character(a$month)
head(mo)
mo <- str_c("0",mo, sep="")
head(mo)

yr_mo <- str_c(yr,mo, sep="-")
head(yr_mo)

a$Year <- yr_mo 
head(a)

write.csv(x=a, file= "Alaska_date.csv")
str(a)

