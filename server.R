library(shiny)


# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({

    data <- read.csv("WBpopulation.csv", header = T, sep = ",")
    
    if (input$cname != "All") {
      data <- data[data$CountryName == input$cname,]
    }
    
    if (input$ccode != "All") {
      data <- data[data$CountryCode == input$ccode,]
    }
    data
  }))
  
})