#' Shiny Toggle Input
#'
#' Input to provide an interface for a user to rate something often indicated by a star
#'
#' @param inputId \code{character} id for the input
#' @param default \code{integer} value for the initial toggle value
#' @param configuration \code{list} of initial 'props' for the toggle input
#'
#' @return \code{shiny input}
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faToggleInput <- function(inputId, default = TRUE, configuration = NULL ) {
  reactR::createReactShinyInput(
    inputId,
    "faToggle",
    list(
      htmltools::htmlDependency(
        name = "faToggle",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faToggle.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    configuration,
    htmltools::tags$div
  )
}

#' Update Shiny Toggle Input
#'
#' Allow changing or updating the configuration or value of a shiny toggle input.
#'
#' @param session Shiny session
#' @param inputId \code{character} name/id for the shiny input toggle to change
#' @param value \code{integer} value to assign
#' @param configuration \code{list} of 'props' to change the toggle
#'
#' @export
updateFaToggleInput <- function(session, inputId, value = NULL, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
