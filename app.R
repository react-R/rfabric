library(shiny)
library(reactR)
library(rfabric)

ui <- fluidPage(
  titlePanel("rfabric reactR Shiny Inputs Example"),
  # rating
  faRatingInput("rating"),
  textOutput("ratingOutput"),
  # # checkbox
  # faCheckboxInput("checkbox"),
  # textOutput("checkboxOutput"),
  # spinbutton not working as expected; waiting on onChange handler
  faSpinbuttonInput("spinbutton"),
  textOutput("spinbuttonOutput"),
  #slider not working; for some reason binding refers to other elements
  # faSliderInput("slider"),
  # textOutput("sliderOutput"),
  # faSliderInput("slider2"),
  # textOutput("slider2Output")
  faToggleInput("toggle"),
  textOutput("toggleOutput")
)

server <- function(input, output, session) {
  #demo update functionality for rating even though not much purpose here
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
  output$spinbuttonOutput <- renderText({
    sprintf("You entered: %s", input$spinbutton)
  })
  # output$sliderOutput <- renderText({
  #   sprintf("You entered: %s", input$slider)
  # })
  # output$slider2Output <- renderText({
  #   sprintf("You entered: %s", input$slider2)
  # })
  output$toggleOutput <- renderText({
    sprintf("You entered: %s", input$toggle)
  })
}

shinyApp(ui, server)
