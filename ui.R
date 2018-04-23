library(shiny) 
# Define UI for application that draws the Distribution histogram
shinyUI(fluidPage(                                                                                                                                                                                                                                                                                                                                                                                                              
    # Application header
    titlePanel(title = h4("Iris dataset plot", align="center")),
    sidebarLayout(
        # Sidebar panel
        sidebarPanel(
            p("The app loads the iris dataset and creates a simple histogram based on one of the variables availiable.
                The user can choose the variable and set the number of bins of the histogram."),
            
            selectInput("var","1. User, select a variable from the iris dataset",
                        choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4),selected = 1),
            br(),
            sliderInput("bins", "2. User, select the number of bins for histogram", min=5, max=25, value=15)
        ),
        # Main Panel    
        mainPanel(
            plotOutput("myhist")
        )
    )
)
)
