
nonfunziona <- function() {

  library(shiny)
  library(quantmod)
  library(datasets)
  library(plotly)
  library(ggplot2)

  ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  ec_date<-as.Date(ec[,1])


  ui <- fluidPage(

    titlePanel("DISPERAZIONE"),

    sidebarLayout(

        sidebarPanel(

            sliderInput(dateRangeInput("ecdate", "Date:", max=(Sys.Date() , min=as.Date("2019-11-01") ,value = 10)


          #inputId = "ec_date",
                    #min=as.Date('2019-11-01'), max=as.Date('2020-02-01'), value = 30,
                    #timeFormat = '%Y-%m-%d'),
        #selectInput('ec',  c('EUR/CNH')
      #)



      mainPanel(

          plotOutput(outputId = "distPlot",
                   value=1)

      #))))


  server <- function(input, output) {

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



  shinyApp(ui, server)

}
}
