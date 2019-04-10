#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
faRatingInput <- function(inputId, default = "") {
  reactR::createReactShinyInput(
    inputId,
    "faRating",
    list(
      htmltools::htmlDependency(
        name = "faRating",
        version = "1.0.0",
        src = "www/rfabric",
        package = "rfabric",
        script = "faRating.js"
      ),
      roffice:::roffice_deps()
    ),
    default,
    list(),
    htmltools::tags$div
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateFaRatingInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
