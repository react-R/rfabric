#' Shiny Slider Input
#'
#' Input to provide an interface for a user to rate something often indicated by a star
#'
#' @param inputId \code{character} id for the input
#' @param default \code{integer} value for the initial Slider value
#' @param configuration \code{list} of initial 'props' for the Slider input
#'
#' @return \code{shiny input}
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faSliderInput <- function(inputId, default = NULL, configuration = NULL ) {
  reactR::createReactShinyInput(
    inputId,
    "faSlider",
    list(
      htmltools::htmlDependency(
        name = "faSlider",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faSlider.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    configuration,
    htmltools::tags$div
  )
}

#' Update Shiny Slider Input
#'
#' Allow changing or updating the configuration or value of a shiny Slider input.
#'
#' @param session Shiny session
#' @param inputId \code{character} name/id for the shiny input Slider to change
#' @param value \code{integer} value to assign
#' @param configuration \code{list} of 'props' to change the Slider
#'
#' @export
updateFaSliderInput <- function(session, inputId, value = NULL, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
