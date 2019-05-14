#devtools::install_github("react-R/rfabric")

library(shiny)
library(reactR)
library(rfabric)

ui <- fluidPage(
  titlePanel("rfabric reactR Shiny Inputs Example"),
  # rating
  faRatingInput("rating"),
  textOutput("ratingOutput"),
  faRatingInput("rating2"),
  textOutput("rating2Output"),
  # toggle
  faToggleInput("toggle", default=TRUE),
  textOutput("toggleOutput"),
  faToggleInput("toggle2", default=FALSE),
  textOutput("toggle2Output"),
  # checkbox
  faCheckboxInput("checkbox"),
  textOutput("checkboxOutput"),
  faCheckboxInput("checkbox2"),
  textOutput("checkbox2Output")
  # spinbutton not working as expected; waiting on onChange handler
  # faSpinbuttonInput("spinbutton"),
  # textOutput("spinbuttonOutput"),
  # slider not working; for some reason binding refers to other elements
  # faSliderInput("slider"),
  # textOutput("sliderOutput"),
  # faSliderInput("slider2"),
  # textOutput("slider2Output")
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
  output$rating2Output <- renderText({
    sprintf("You entered: %s", input$rating2)
  })
  output$toggleOutput <- renderText({
    sprintf("You entered: %s", input$toggle)
  })
  output$toggle2Output <- renderText({
    sprintf("You entered: %s", input$toggle2)
  })
  output$checkboxOutput <- renderText({
    sprintf("You entered: %s", input$checkbox)
  })
  output$checkbox2Output <- renderText({
    sprintf("You entered: %s", input$checkbox2)
  })
  # output$spinbuttonOutput <- renderText({
  #   sprintf("You entered: %s", input$spinbutton)
  # })
  # output$sliderOutput <- renderText({
  #   sprintf("You entered: %s", input$slider)
  # })
  # output$slider2Output <- renderText({
  #   sprintf("You entered: %s", input$slider2)
  # })
}

shinyApp(ui, server)
