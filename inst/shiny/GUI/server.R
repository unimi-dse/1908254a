## SERVER
server <- function(input, output) {

  #ec <- as.data.frame(quantmod::getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  #ec_date <- as.Date(ec[,1])
  #endv <- nrow(ec)

 ec<-data_acq()

  output$ecplotly <- plotly::renderPlotly({


   # endate<- input$ec_date #widget


#ecdate{inizioFISSO:fineENDDATE
    plotly::plot_ly(x=rownames(ec), y=ec$EUR.CNH ,type = 'scatter', mode = 'lines+markers', color = ec$EUR.CNH) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

  })

}

