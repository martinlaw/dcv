library(metafor)
dat <- escalc(measure="RR",
              ai=c(3, 5, 2, 0, 1),
              bi=c(32, 39, 43, 15, 24),
              ci=c(6, 7, 4, 1, 2),
              di=c(29, 35, 41, 14, 23))

# Check:
exp(dat$yi) # agrees with draft RRs

# NOTE: Yao et al. has N=50 but draft states N=60.

# FE model:
rma(yi, vi, data=dat, method="FE") # NOTE: different results to draft
# RE model (Hartung-Knapp / Sidik-Jonkman):
rma(yi, vi, data=dat, method="SJ") # NOTE: different results to draft





