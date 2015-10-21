library(shiny)
library(ggplot2)

# prep mtcars data
data(mtcars)
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual")) 
mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                      labels=c("3gears","4gears","5gears")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                     labels=c("4cyl","6cyl","8cyl")) 

function(input, output) {
   
   # subset transmission
   trans <- reactive({
      mtcars <- mtcars[mtcars$am == input$transId,]
   })
   
   # subset type
   type <- reactive({
      
      data <- trans()

      if(input$typeId == "Cylinder")
         data$cyl
      else
         data$gear
   })

   # get models based on type
   models <- reactive({
      
      data <- trans()
      
      if(input$typeId == "Cylinder"){
         
         fourCyl <- data[data$cyl == "4cyl",]
         cat("Four Cylinders:\n")
         cat(row.names(fourCyl), sep="\n")
         cat("\n")
         
         sixCyl <- data[data$cyl == "6cyl",]
         cat("Six Cylinders:\n")
         cat(row.names(sixCyl), sep="\n")
         cat("\n")
         
         eightCyl <- data[data$cyl == "8cyl",]
         cat("Eight Cylinders:\n")
         cat(row.names(eightCyl), sep="\n")
      }
      else{
         threeGear <- data[data$gear == "3gears",]
         cat("Three Gears:\n")
         cat(row.names(threeGear), sep="\n")
         cat("\n")
         
         fourGear <- data[data$gear == "4gears",]
         cat("Four Gears:\n")
         cat(row.names(fourGear), sep="\n")
         cat("\n")
         
         fiveGear <- data[data$gear == "5gears",]
         cat("Five Gears:\n")
         cat(row.names(fiveGear), sep="\n")
      }
   })
   
   # plot the output
   output$plot <- renderPlot({
      # density plots for mpg grouped by number of type
      qplot(mpg, data=trans(), geom="density", fill=type(), alpha=I(.5),
            main="Distribution of Gas Mileages", xlab="Miles Per Gallon", 
            ylab="Density")
   })   
   
   # print the models
   output$models <- renderPrint({
      models()
   })
}