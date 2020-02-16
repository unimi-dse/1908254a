#' Graphic User Interface (Shiny App)
#'
#' @description Create a graphic user interface and acquire data
#'
#' @return shiny app
#'
#' @export
#'
GUI <- function(){

  shiny::runApp(system.file("shiny/GUI", package = "oandacnh"))

}
