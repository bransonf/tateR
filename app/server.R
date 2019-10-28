library(shiny)

server <- function(input, output) {
  
  # Get Key Presses
  keyp <- eventReactive(input$keyp, {
    input$keyp
  })

  #Counter for Key Down
    # Initialize Counter
  counter <- reactiveValues(val = 1)
  
  observeEvent(keyp(), {
    if(keyp() == 39 & counter$val < 1699){
      counter$val <- counter$val + 1
    }
    else if(keyp() == 37 & counter$val > 1){
      counter$val <- counter$val - 1
    }else{
      NULL
    }
  })

  
  
  # Render an Image to Annotate
  src <- reactive({
    paste0('https://storage.googleapis.com/streetview_images/imgs/img', counter$val, '.png')
  })

  output$image <- renderText({
    c('<img src="', src(), '">')
  })
  
}
