library(librarian)
shelf(readxl, metafor)
dat <- read_xlsx(path="secondary_outcomes-2.xlsx", range="A1:M48", col_names=TRUE)
vignette("metafor")

dat2 <- escalc(measure="MD", data=dat, m1i=m1i, sd1i=sd1i, n1i=n1i, m2i=m2i, sd2i=sd2i, n2i=n2i, subset=outcome1=="pO2")
rma(yi, vi, data=dat2)
