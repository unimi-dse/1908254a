##UI
ui <- fluidPage(


  # App title
  titlePanel("Exchange Rates"),

  # Sidebar layout
  sidebarLayout(

    # Sidebar panel
    sidebarPanel(

      selectInput(inputId="data_id",
                 label = ("Select currency"),
                  choices= list('EUR/CNH', 'USD/CNH', 'GBP/CNH', 'JPY/CNH'), selected = 'EUR/CNH'

   )
  )   ,


    # Main panel
    mainPanel(

      # Output
      shinycssloaders::withSpinner(plotly::plotlyOutput(outputId = "ecplotly"),color="#0384fc")

    )
  )
)
