
#' Data acquisition
#'
#' @return data.frame
#' @export
#'
data_acq <- function(id = "EUR/CNH", start = "2020-01-01", end = Sys.Date()){
return(as.data.frame(quantmod::getSymbols(Symbols = id,
                                          src = 'oanda',
                                          auto.assign = FALSE)))
}
