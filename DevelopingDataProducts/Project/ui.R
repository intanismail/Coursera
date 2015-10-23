library(shiny)
library(ggplot2)

# prep mtcars data
data(mtcars)
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual")) 

fluidPage(
   
   titlePanel("Motor Trend Car Road Tests Analysis"),
   
   sidebarPanel(
      
      h4("Overview"),
      
      p("The data is based on Motor Trend Car Road Tests dataset that comprises
      fuel consumption and ten aspects of automobile design performance for 32 
      automobiles (1973-74 models)."),
      
      p("In this analysis, we will look at the distribution of the fuel 
      consumption based on transmission types, number of cylinders and number 
      of gears for each model."),
       
      p("Based on these factors, a distribution of gas mileages is plotted and 
      a list of automobile models is displayed as a result."),
      
      br(),
      
      h4("Please select the selection criteria as follow:"),
      
      radioButtons("transId", "Transmission", unique(levels(mtcars$am))),
      selectInput('typeId', 'Type', c("Cylinder","Gear"))
   ),
   
   mainPanel(
      plotOutput("plot"),
      verbatimTextOutput("models")
   )
)