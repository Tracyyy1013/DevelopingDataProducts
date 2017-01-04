#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Perform all necessary initialization
#install.packages("shiny")
library(shiny)
Currency <- function(dollar) dollar * 1
shinyServer(
  function(input, output) {
    output$USD <- renderPrint({input$dollar})
    output$Euro <- renderPrint({Currency(input$dollar*.96)})
    output$Peso <- renderPrint({Currency(input$dollar*21.09)})
    output$Yen <- renderPrint({Currency(input$dollar*118)})
    
  }
)