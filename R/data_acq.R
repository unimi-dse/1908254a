#' Data acquisition
#'
#' @description Acquisition of data from 'oanda' website through quantmod package
#'
#' @return data.frame
#'
#' @export
#'
#' @param id Symbol selected for data acquisition
#'
#' @examples
#' # Data acquisition currency rate between Euro and US dollars
#' data_acq("EUR/USD")
#'
data_acq <- function(id) {
 return(as.data.frame(quantmod::getSymbols(Symbols = id,
                                          src = 'oanda',
                                          auto.assign = FALSE)))
}
