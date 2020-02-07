##UI
ui <- fluidPage(


  # App title ----
  titlePanel("Rates Eur/Cnh"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input: Slider for the number of bins ----
      #sliderInput(
       # inputId = "ec_date",
        #label = "Date:",
        #min =  1,
        #max = function(){ec <- as.data.frame(getSymbols(Symbols = "EUR/CNH", src = 'oanda', auto.assign = FALSE))
        #ec_date <- as.Date(ec[,1])
        #return(nrow(ec))},
       # format = "yy/mm/dd",
        #value = 50 )

    ),


    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Histogram ----
      plotly::plotlyOutput(outputId = "distPlot")

    )
  )
)
