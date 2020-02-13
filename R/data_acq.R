#' Data acquisition
#'
#' @return data.frame
#' @export
#' @param id Symbol selected for data acquisition
#'
data_acq <- function(id) { #, start = "2020-01-01", end = Sys.Date()
 return(as.data.frame(quantmod::getSymbols(Symbols = id,
                                          src = 'oanda',
                                          auto.assign = FALSE)))
}
