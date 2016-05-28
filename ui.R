library(shiny)

orig <- read.csv("WBpopulation.csv", header = T, sep = ",")


# Define the overall UI
shinyUI(
  
  fluidPage( # flexible UI setup
    
    titlePanel("World Bank Population Indices 1960 - 2014 DataTable"),
   
      h3("This example shiny project uses data from the World Bank - country populations 1960 - 2014"),
      h4("It uses the R package DT http://rstudio.github.io/DT/ which provides an R interface to the JavaScript library http://datatables.net"),
      h4("There are 248 rows in the data - corresponding mainly to countries, though there are some aggegrates - e.g. world"),
      h4("Two dropdowns allow you to select by country name and country code"),
      h4("And there is a free text search box too - unfortunately it will not accept regular expressions yet!"),
      h4("Each column is sortable ascending/descending by clicking on the appropriate arrows"),
      h4("Pretty much all the formatting and control is provided directly by the DT package, making it very easy to use"),
      h4("The next obvious step is to plot selected data, but time does not permit (nor skill)"),
      h4("The github repo is here https://github.com/patmolloy/SimpleShinyTable"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(3,
             selectInput("cname",
                         "Country Name:",
                         c("All",
                           unique(as.character(orig$CountryName))))
      ),
      column(3,
             selectInput("ccode",
                         "Country Code:",
                         c("All",
                           unique(as.character(orig$CountryCode))))
      )
      
    ),
    # Create a new row for the table.
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)
