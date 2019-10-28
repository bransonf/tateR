library(shiny)
library(shinydashboard)

header <- dashboardHeader(
  title = "Image Annotation App"
)
  
  
body <- dashboardBody(
  # Function for Registering Keypresses
  tags$script('
    document.onkeydown = function(e){
    Shiny.setInputValue("keyp", e.keyCode);
    console.log(e)
    }
    document.onkeyup = function(e){
    Shiny.setInputValue("keyp", "")
    }
  '),
  fluidRow(
    column(9,
      h2('Annotate this Image'),
      htmlOutput('image')
    ),
    column(3,
      h2('User Input'),
      radioButtons('vacant', 'Vacancy', 
                   c("No", "Vacant Lot (Grass)","Vacant Lot (Pavement)", "Building", "Potentially")
      ),
      textInput('txtin', "Notes")
    )
  )
)


dashboardPage(title = "Image Annotation App",
  header = header,
  sidebar = dashboardSidebar(disable = TRUE),
  body = body
)