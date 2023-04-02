#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(sbo)

t <- readRDS(file = "./t.rda")
p <- sbo_predictor(t)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$outputText <- renderText({

        # generate bins based on input$bins from ui.R
        text <- input$inputText

        # draw the histogram with the specified number of bins
        pred <- predict(p,text)
        paste(pred[1],pred[2],pred[3],sep=", ")

    })

})
