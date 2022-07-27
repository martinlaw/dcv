library(readxl, metafor)
# vignette("metafor")



#### Load data ####

initial.data <- read_xlsx(path="data/secondary_outcomes-2.xlsx", range="A1:M48", col_names=TRUE)
dat <- escalc(measure="MD", data=initial.data, m1i=m1i, sd1i=sd1i, n1i=n1i, m2i=m2i, sd2i=sd2i, n2i=n2i, slab=study)




#### Check results figures: secondary outcomes ####
# Fig 2: Respiratory compliance (Cdyn)
forestMA(outc="Cdyn", time1="OLV")
forestMA.PM.HK(outc="Cdyn", time1="OLV")

# No problems.
# Evidence of an effect.

# Fig 3: Plateau pressure (Plat)
forestMA(outc="Plat", time1="TLV")
forestMA.PM.HK(outc="Plat", time1="TLV")
forestMA(outc="Plat", time1="OLV")
forestMA.PM.HK(outc="Plat", time1="OLV")
# No problems.
# Figure 3 has different terminology c.f. Figs 4 and 5.
# Effect for OLV only, and not if HK modification is used.

# Fig 4: Peak inspiratory pressure (Peak)
forestMA(outc="Peak", time1="TLV")
forestMA.PM.HK(outc="Peak", time1="TLV")
forestMA(outc="Peak", time1="OLV")
forestMA.PM.HK(outc="Peak", time1="OLV")
# No problems.
# Fig 4 has TLV first, while Figs 3 and 5 have OLV first.
# Effect for both TLV and OLV, even with HK modification.

# Fig 5: Arterial oxygen pressure (pO2)
forestMA(outc="pO2", time1="TLV")
forestMA.PM.HK(outc="pO2", time1="TLV")
forestMA(outc="pO2", time1="OLV")
# forestMA.PM.HK(outc="pO2", time1="OLV") # error. Fixed below.
forest(rma(yi, vi, data=dat, subset = outcome1=="pO2" & time=="OLV", method="PM", test="knha", control=list(tau2.max=1000)))
# TLV and OLV results have been mixed up in the document
# (assuming the Excel sheet is correct)

# NOTE: Using PM estimator and HK modification has negligible effect on results.
# One exception: Plateau+OLV summary estimate is not significant when using PM estimator and HK modification.


