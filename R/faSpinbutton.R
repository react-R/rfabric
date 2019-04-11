#' Shiny Spinbutton Input
#'
#' Input to provide an interface for a user to rate something often indicated by a star
#'
#' @param inputId \code{character} id for the input
#' @param default \code{integer} value for the initial spin button value
#' @param configuration \code{list} of initial 'props' for the spin button input
#'
#' @return \code{shiny input}
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faSpinbuttonInput <- function(inputId, default = NULL, configuration = NULL ) {
  reactR::createReactShinyInput(
    inputId,
    "faSpinbutton",
    list(
      htmltools::htmlDependency(
        name = "faSpinbutton",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faSpinbutton.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    configuration,
    htmltools::tags$div
  )
}

#' Update Shiny Spinbutton Input
#'
#' Allow changing or updating the configuration or value of a shiny spin button input.
#'
#' @param session Shiny session
#' @param inputId \code{character} name/id for the shiny input spin button to change
#' @param value \code{integer} value to assign
#' @param configuration \code{list} of 'props' to change the spin button
#'
#' @export
updateFaSpinbuttonInput <- function(session, inputId, value = NULL, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
