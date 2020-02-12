##UI
ui <- fluidPage(


  # App title ----
  titlePanel("Rates Eur/Cnh"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      selectInput(inputId="data_id",
                 label = ("Select"),
                  choices= list('EUR/CNH', 'USD/CNH'), selected = 'EUR/CNH'

      #selectInput("select", label = h3("Select box"),
                  #choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                  #selected = 1),


   )
  )   ,


    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Histogram ----
      plotly::plotlyOutput(outputId = "ecplotly")

    )
  )
)
