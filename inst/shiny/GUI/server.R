## SERVER
library(plotly)
server <- function(input, output) {

  #ec <- as.data.frame(quantmod::getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  #ec_date <- as.Date(ec[,1])
  #endv <- nrow(ec)

 ec<-data_acq()

  output$distPlot <- renderPlotly({


   # endate<- input$ec_date #widget

#ecdate{inizioFISSO:fineENDDATE
    plot_ly(x=ec$ec_date, y=ec$EUR.CNH ,type = 'scatter', mode = 'lines+markers') #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

  })

}

