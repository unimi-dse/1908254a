## SERVER
server <- function(input, output, session) {

  #ec <- as.data.frame(quantmod::getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
  #ec_date <- as.Date(ec[,1])
  #endv <- nrow(ec)


  output$ecplotly <- plotly::renderPlotly({

    id <- input$data_id
    #id2<- stringr::str_replace(id,"/",".")
    ec <- data_acq(id)

    colnames(ec)[1] <- id
    #if (input$data_id==1){
    #  ec<-data_acq('EUR/CNH')
    #}
    # else if(input$data_id==2){
    #   ec<-data_acq('USD/CNH')
    # }

   # endate<- input$ec_date #widget


#ecdate{inizioFISSO:fineENDDATE
    print(id)
    print(head(ec))
    print(ec$id)
    plotly::plot_ly(x=rownames(ec), y=ec[,1] ,type = 'scatter', mode = 'lines+markers', color = ec[,1]) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

  })

}

