##UI
ui <- fluidPage(


  # App title
  titlePanel("Rates Eur/Cnh"),

  # Sidebar layout
  sidebarLayout(

    # Sidebar panel
    sidebarPanel(

      selectInput(inputId="data_id",
                 label = ("Select"),
                  choices= list('EUR/CNH', 'USD/CNH'), selected = 'EUR/CNH'

   )
  )   ,


    # Main panel
    mainPanel(

      # Output
      shinycssloaders::withSpinner(plotly::plotlyOutput(outputId = "ecplotly"),color="#0384fc")

    )
  )
)
