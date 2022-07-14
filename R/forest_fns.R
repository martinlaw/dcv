
#' forestMA
#'
#' @param outc
#' @param time1
#'
#' @return
#' @export
#'
#' @examples
forestMA <- function(outc, time1){
  mod <- rma(yi, vi, data=dat, subset = outcome1==outc & time==time1)
  forest(mod, header=paste(outc, " (", time1, ")", sep=""), cex=1.5)
  mod
}

#' forestMA.PM
#'
#' @param outc
#' @param time1
#'
#' @return
#' @export
#'
#' @examples
forestMA.PM <- function(outc, time1){
  mod <- rma(yi, vi, data=dat, subset = outcome1==outc & time==time1, method="PM")
  forest(mod, header=paste(outc, " (", time1, ")", sep=""), cex=1.5)
  mod
}


#' forestMA.PM.HK
#'
#' @param outc
#' @param time1
#'
#' @return
#' @export
#'
#' @examples
forestMA.PM.HK <- function(outc, time1){
  mod <- rma(yi, vi, data=dat, subset = outcome1==outc & time==time1, method="PM", test="knha")
  forest(mod, header=paste(outc, " (", time1, ")", sep=""), cex=1.5)
  mod
}
