library(shiny)
library(officeInputs)

ui <- fluidPage(
  titlePanel("reactR Rating Example"),
  offRatingInput("rating"),
  textOutput("textOutput")
)

server <- function(input, output, session) {
  # demo update functionality even though not much purpose here
  updateOffRatingInput(
    session = session,
    inputId = "rating",
    value = 5,
    configuration = list(max=10)
  )
  output$textOutput <- renderText({
    sprintf("You entered: %s", input$rating)
  })
}

shinyApp(ui, server)
