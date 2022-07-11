library(librarian)
shelf(readxl, metafor)
dat <- read_xlsx(path="secondary_outcomes-2.xlsx", range="A1:M48", col_names=TRUE)
