library(shiny)
library(officeInputs)

ui <- fluidPage(
  titlePanel("rfabric reactR Shiny Inputs Example"),
  # rating
  faRatingInput("rating"),
  textOutput("ratingOutput"),
  # checkbox
  faCheckboxInput("checkbox"),
  textOutput("checkboxOutput")
)

server <- function(input, output, session) {
  # demo update functionality even though not much purpose here
  updateFaRatingInput(
    session = session,
    inputId = "rating",
    value = 5,
    configuration = list(max=10)
  )
  output$ratingOutput <- renderText({
    sprintf("You entered: %s", input$rating)
  })
  output$checkboxOutput <- renderText({
    sprintf("You entered: %s", input$checkbox)
  })
}

shinyApp(ui, server)
