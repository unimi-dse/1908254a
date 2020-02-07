library(shiny)

ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
ec_date<-as.Date(ec[,1])

ui1 <- fluidPage(

  # App title ----
  titlePanel("Rates Eur/Cnh"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input: Slider for the number of bins ----
      sliderInput(dateRangeInput(
                  inputId = "ec$ec_date",
                  label = "Date:",
                  min =  as.Date("2019-11-01"),
                  max = Sys.Date(),
                  format = "dd/mm/yy",
                  value = 10))

    ),

    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Histogram ----
      plotOutput(outputId = "distPlot")

    )
  )
)
server1 <- function(input, output) {

  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({

    ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
    ec_date<-as.Date(ec[,1])

    plot_ly(x=ec$ec_date, y=ec$EUR.CNH ,type = 'scatter', mode = 'lines+markers',color =~ec$EUR.CNH) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

  })

}


shinyApp(ui = ui1, server = server1)






##
nonfunziona <- function() {

  library(shiny)
  library(quantmod)
  library(datasets)
  library(plotly)
  library(ggplot2)

  ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  ec_date<-as.Date(ec[,1])


  ui2 <- fluidPage(

    titlePanel("DISPERAZIONE"),
    sidebarLayout(

        sidebarPanel(

            sliderInput("ecdate", "Date:", max=(Sys.Date()), min=as.Date("2019-11-01"), value = 10)



      mainPanel(

          plotOutput(outputId = "distPlot",
                   value=1)

      #))))


  server2 <- function(input, output) {

    dataInput <- reactive({
      ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
                 from = input$dates[1]
                 to = input$dates[2]
                 auto.assign = FALSE
    })


))
    output<- renderPlot({

      ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
      ec$date<-rownames(ec)

      #uc <- as.data.frame(getSymbols(Symbols = "USD/CNH", src= 'oanda', auto.assign = FALSE))
        #uc$date<-rownames(uc)
      plot_ly(x=ec$ec_date, y=ec$EUR.CNH ,type = 'scatter', mode = 'lines+markers',color =~ec$EUR.CNH) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

    })



  shinyApp(ui2, server2)

}
}


#inputId = "ec_date",
#min=as.Date('2019-11-01'), max=as.Date('2020-02-01'), value = 30,
#timeFormat = '%Y-%m-%d'),
#selectInput('ec',  c('EUR/CNH')
#)
