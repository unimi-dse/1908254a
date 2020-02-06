# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

nonfunziona <- function() {

  library(shiny)
  library(quantmod)
  library(datasets)
  library(plotly)
  library(ggplot2)

  ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  ec$date<-as.Date(rownames(ec))

  dateInput(ec, ec$date , value = NULL, min = NULL, max = NULL,
            format = "yyyy-mm-dd", weekstart = 0,
             width = NULL)

  # Define UI for app that draws a histogram ----
  ui <- fluidPage(

    # App title ----
    titlePanel("DISPERAZIONE"),

    # Sidebar layout with input and output definitions ----
    sidebarLayout(

      # Sidebar panel for inputs ----
      sidebarPanel(

        # Input: Slider for the number of bins ----
        sliderInput(inputId = "ec",
                    min=as.Date('2019-11-01'), max=as.Date('2020-02-01'), value = 30,
                    timeFormat = '%Y-%m-%d'),
        selectInput('ec',  c('EUR/CNH')
      )

      ),

      # Main panel for displaying outputs ----
      mainPanel(

        # Output: Histogram ----
        plotOutput(outputId = "distPlot",
                   value=1)

      )
    )
  )

  # Define server logic required to draw a histogram ----
  server <- function(input, output) {

    dataInput <- reactive({
      ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
                 from = input$dates[1]
                 to = input$dates[2]
                 auto.assign = FALSE
    })



    output$plot<- renderPlot({

      ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
      ec$date<-rownames(ec)

      #uc <- as.data.frame(getSymbols(Symbols = "USD/CNH", src= 'oanda', auto.assign = FALSE))
        #uc$date<-rownames(uc)
      plot_ly(x=ec$date, y=ec$EUR.CNH ,type = 'scatter', mode = 'lines+markers',color =~ec$EUR.CNH) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')
      # hist(x, col = "#75AADB", border = "white",
      #      xlab = "Waiting time to next eruption (in mins)",
      #      main = "Histogram of waiting times")

    })

  }

  shinyApp(ui, server)

}
