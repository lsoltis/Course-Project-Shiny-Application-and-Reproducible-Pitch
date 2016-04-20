#Load the shiny library
library(shiny)

#Set numbers for num1 and num2
num1 <<- 1
num2 <<- 1

shinyServer(
  function(input, output) {
    
    #create the outputs of the function
    output$num1 <- renderText({input$num1})
    output$num2 <- renderText({input$num2})
    #output the sum using the action button
        output$sum1 <- renderText({
      input$gobutton
      isolate(as.numeric(input$num1) + as.numeric(input$num2))})
  }
)