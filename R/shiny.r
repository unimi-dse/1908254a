#' Create a Graphic User Interface
#'
#' @export
library(shiny)
GUI <- function(){

  runApp(system.file("shiny/GUI", package = "eurcnh"))

}
