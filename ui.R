shinyUI(pageWithSidebar(
  headerPanel("Add 2 Numbers"),
  sidebarPanel(
    textInput(inputId = "num1", label = "Number 1", value = 1),
    textInput(inputId = "num2", label = "Number 2", value = 1),
    actionButton(inputId = "gobutton", label = "Add")
    ),
    
    mainPanel(
    p('Number 1'),
    textOutput('num1'),
    p('Number 2'),
    textOutput('num2'),
    p('Output Sum'),
    textOutput('sum1')
  )
))