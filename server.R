library(shiny)
shinyServer(
    function(input, output){
        output$myhist <- renderPlot({
            colm <- as.numeric(input$var)
            hist(iris[,colm], breaks=seq(0, max(iris[,colm]), l=input$bins+1), main="Histogram of the Iris dataset", xlab=names(iris[colm])) 
        })
    }
)