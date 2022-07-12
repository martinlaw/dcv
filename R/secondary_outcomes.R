library(librarian)
shelf(readxl, metafor)
# vignette("metafor")

initial.data <- read_xlsx(path="secondary_outcomes-2.xlsx", range="A1:M48", col_names=TRUE)
dat <- escalc(measure="MD", data=initial.data, m1i=m1i, sd1i=sd1i, n1i=n1i, m2i=m2i, sd2i=sd2i, n2i=n2i, slab=study)


forestMA <- function(outc, time1){
  forest(rma(yi, vi, data=dat, subset = outcome1==outc & time==time1),
         header=paste(outc, " (", time1, ")", sep=""), cex=1.5)
}

# Arterial oxygen pressure (pO2)
forestMA(outc="pO2", time1="TLV")
forestMA(outc="pO2", time1="OLV")
# TLV and OLV results have been mixed up in the document
# (assuming the Excel sheet is correct)

# Peak inspiratory pressure (Peak)
forestMA(outc="Peak", time1="TLV")
forestMA(outc="Peak", time1="OLV")
# No problems.
# Fig 4 has TLV first, while Figs 3 and 5 have OLV first.

# Plateau pressure (Plat)
forestMA(outc="Plat", time1="TLV")
forestMA(outc="Plat", time1="OLV")
# No problems.
# Figure 3 has different terminology c.f. Figs 4 and 5.

# Respiratory compliance (Cdyn)
forestMA(outc="Cdyn", time1="OLV")
# No problems.



