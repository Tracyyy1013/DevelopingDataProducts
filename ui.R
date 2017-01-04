#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
#install.packages("shiny")
library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Convert your US Dollars to Foreign Currency"),
    sidebarPanel(
      numericInput('dollar', 'Dollar amount you want to convert', 1, min = 1, max = 12, step = 1
      ),
      submitButton('Convert!')
    ),
    mainPanel(
      h3('Conversions'),
      h4('Amount of USD to be converted:'),
      verbatimTextOutput("USD"),
      h4('USD to Euros:'),
      verbatimTextOutput("Euro"),
      h4('USD to Pesos:'),
      verbatimTextOutput("Peso"),
      h4('USD to Yen:'),
      verbatimTextOutput("Yen")
    )
  )
)