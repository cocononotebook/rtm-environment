library(shiny)
library(ggplot2)

shinyUI(
  navbarPage(
    "School Theory",
    position = "fixed-bottom",
    #location:"static-top","fixed-top","fixed-bottom"
    tabPanel("The First Time Investigation"),
    tabPanel("The Second Time Investigation"),
 
    sidebarLayout(
        fluid=FALSE,
        sidebarPanel(  
          checkboxGroupInput("CBGI","checkboxGroupInput",c("A","B","c","D","E","F")
                         #checkboxGroupInput(id="",label="",GroupBoxName="c("","")")
          ),
        navlistPanel(id="NLP",
          "Student_List",
          well=FALSE,
          tabPanel("Student1"),
          tabPanel("Student2"),
          tabPanel("Student3")
          )
        ),
          
        mainPanel(
          tabsetPanel(
            tabPanel("Summary"),
            tabPanel("Cloud"),
            tabPanel("Frequency")
          )
        )
      
    )
  )
)
