library(shiny)
library(ggplot2)

shinyUI(
  navbarPage(
    "School Theory",
    position = "fixed-bottom",
    #location:"static-top","fixed-top","fixed-bottom"
    tabPanel("The First Time Investigation"),
    tabPanel("The Second Time Investigation"),
    
    mainPanel(
      headerPanel("GodDamnTitle"),
      checkboxGroupInput("CBGI","checkboxGroupInput",c("A","B","c","D","E","F")
      #checkboxGroupInput(id="",label="",GroupBoxName="c("","")")
      ,
      tabsetPanel(
        tabPanel("Summary"),
        tabPanel("Cloud"),
        tabPanel("Frequency")
      )
    )
  )
)
)
