#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Next-Word Prediction"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            textInput("inputText",
                      "Input a phrase:",
                      value = "Good"),
            submitButton("Predict the next word")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            strong("Predicted words (in order of likelihood):"),
            textOutput("outputText"),
        )
    )
))
