
library(readxl)
e <- read_xlsx(path="Peru.xlsx")
head(e)


library(stringr)  
?str_sub
str(e)

a <- as.numeric(str_extract(e$LAT, "^[0-9]+"))
b <- str_extract(e$LAT, "[0-9]*\\.?[0-9A-Za-z]*$")
c <-as.numeric(str_extract(b, "^[0-9]*\\.?[0-9]*"))
View(a)
View(b)
View(c)
str(c)

min <- c/60
head(min)
deg <- (a + min)*-1
head(deg)

e$LAT <- deg
View(e)
A <- as.numeric(str_extract(e$LONG, "^[0-9]+"))
B <- str_extract(e$LONG, "[0-9]*\\.?[0-9A-Za-z]*$")
C <-as.numeric(str_extract(B, "^[0-9]*\\.?[0-9]*"))
View(C)

deg_long <- (A + C/60)*-1
head(deg_long)

e$LONG <-deg_long
View(e)

write.csv(x=e, file="peru_fixed.csv")


