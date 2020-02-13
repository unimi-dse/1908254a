## SERVER
server <- function(input, output, session) {

  output$ecplotly <- plotly::renderPlotly({

    id <- input$data_id
    ec <- data_acq(id)

    #colnames(ec)[1] <- id
    plotly::plot_ly(x=rownames(ec), y=ec[,1] ,type = 'scatter', mode = 'lines+markers', color = ec[,1]) #%>% add_trace(x=uc$date, y=uc$USD.CNH ,type = 'scatter', mode = 'lines+markers')

  })

}

