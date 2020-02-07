
#' Data acquisition
#'
#' @return Data frame
#' @export
#'
data_acq <- function(){
return(as.data.frame(quantmod::getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE)))
}
