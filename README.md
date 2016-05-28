# SimpleShinyTable

World Bank Population Indices 1960 - 2014 DataTable"),
   
  This example shiny project uses data from the World Bank - country populations 1960 - 20014
  It uses the R package DT http://rstudio.github.io/DT/ which provides an R interface to the JavaScript library http://datatables.net  There are 248 rows in the data - corresponding mainly to countries, though there are some aggegrates - e.g. world
  Two dropdowns allow you to select by country name and country code
  And there is a free text search box too - unfortunately it will not accept regular expressions yet!
  Each column is sortable ascending/descending by clicking on the appropriate arrows
  Pretty much all the formatting and control is provided directly by the DT package, making it very easy to use
  The next obvious step is to plot selected data, but time does not permit (nor skill)
