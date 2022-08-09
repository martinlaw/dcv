 library(metafor)
# ?escalc
# dat.resp <- escalc(measure="MD",
#               m1i=c(31.74, 29.8, 27.7, 23, 38.6, 23.6),
#               sd1i=c(2.71, 4.57, 6.13, 3.06, 6.2, 5.8),
#               m2i=c(27, 20.53, 26.3, 19.9, 29.6, 17.3),
#               sd2i=c(2.43, 2.61, 6.13, 1.73, 3.2, 4.6),
#               n1i=c(25, 15, 45, 44),
#               n2i=c(25, 15, 45, 42),
#               slab=c("Yao et al, 2020",
#                      "Ammar et al, 2021",
#                      "Li et al (OLA), 2020",
#                      "Li et al (Standard), 2020",
#                      "Xukai et al, 2021",
#                      "Sahutoglu et al, 2020")
#               )

# dat.plat.end <- escalc(measure="MD",
#                        m1i=c(21.25, 16.9, 12.2, 11.4),
#                        sd1i=c(4.87, 4, 3.7, 3.28),
#                        m2i=c(21, 16.7, 19.1, 15.41),
#                        sd2i=c(5.1, 3.8, 3.5, 1.36),
#                        n1i=c(),
#                        n2i=c(),
#                        slab=c("Sahutoglu et al, 2020",
#                               "Lin et al, 2017",
#                               "Mahmoud et al, 2020",
#                               "Boules et al, 2020"
#                               ))
#
# dat.plat.60 <- escalc(measure="MD",
#                        m1i=c(21, 21.2),
#                        sd1i=c(5, 5),
#                        m2i=c(21.6, 23.1),
#                        sd2i=c(5.6, 4.6),
#                        n1i=c(),
#                        n2i=c(),
#                        slab=c("Sahutoglu et al, 2020",
#                               "Lin et al, 2017"
#                               ))
#
# dat.plat.30 <- escalc(measure="MD",
#                        m1i=c(21.25, 21.7, 17, 14.12, 23),
#                        sd1i=c(4.4, 4.1, 3.5, 2.41, 4.1),
#                        m2i=c(23.25, 22.3, 26.1, 17.24, 25.3),
#                        sd2i=c(6.72, 4.4, 4.1, 3.61, 3),
#                        n1i=c(),
#                        n2i=c(),
#                        slab=c("Sahutoglu et al, 2020",
#                               "Lin et al, 2017",
#                               "Mahmoud et al, 2020",
#                               "Boules et al, 2020",
#                               "Pu et al, 2021"
#                               ))

fabric.vec <- c(5,9,2,4,7,4,7,8,1,7,1,1,1,8,5,6,1,2,5,5,6,1,6,6,5,7,7,2,3,5,3,1,4,3,
                                 4,8,7,3,6,6,1,7,3,6,2,8,3,1,3,3,2,6)
length(fabric.vec)
hist(fabric.vec, breaks=seq(0.5, 9.5, by=1))
fabric.df <- data.frame(digit=c(5,9,2,4,7,4,7,8,1,7,1,1,1,8,5,6,1,2,5,5,6,1,6,6,5,7,7,2,3,5,3,1,4,3,
                                 4,8,7,3,6,6,1,7,3,6,2,8,3,1,3,3,2,6))
# library(ggplot2)
# ggplot(fabric.df, aes(x=digit)) +
#   geom_histogram(breaks=seq(0.5, 9.5, by=1), col="black", fill=hue_pal()(1))+
#   scale_x_continuous(breaks=1:9)


# dat <- escalc(measure="RR",
#               ai=c(3, 5, 2, 0, 1),
#               bi=c(32, 39, 43, 15, 24),
#               ci=c(6, 7, 4, 1, 2),
#               di=c(29, 35, 41, 14, 23),
#               slab=c("Mahmoud et al, 2017",
#                      "Li et al (Standard), 2020",
#                      "Li et al (OLA), 2020",
#                      "Ammar et al, 2021",
#                      "Yao et al, 2020"))

# df <- data.frame(slab=c("Mahmoud et al, 2017",
#                      "Li et al (Standard), 2020",
#                      "Li et al (OLA), 2020",
#                      "Ammar et al, 2021",
#                      "Yao et al, 2020"),
#                  ai=c(3, 5, 2, 0, 1),
#                  bi=c(32, 39, 43, 15, 24),
#                  ci=c(6, 7, 4, 1, 2),
#                  di=c(29, 35, 41, 14, 23),
#                  tidal=c(6, ),
#                  peep=c(10, ),
#                  anes=c("TIVA", )
#                  )





dat <- escalc(measure="RR",
              ai=c(3,   5,  2,  0,  1),
              bi=c(32, 39, 43, 15, 24),
              ci=c(6,   7,  4,  1,  2),
              di=c(29, 35, 41, 14, 23),
              slab=c("Mahmoud et al, 2017",
                     "Li et al (Standard), 2020",
                     "Li et al (OLA), 2020",
                     "Ammar et al, 2021",
                     "Yao et al, 2020"))
dat
