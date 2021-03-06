% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Button.R
\name{f7Button}
\alias{f7Button}
\title{Create a Framework7 button}
\usage{
f7Button(..., src, color = NULL, fill = FALSE, outline = FALSE,
  shadow = FALSE, rounded = FALSE, size = NULL)
}
\arguments{
\item{...}{Button text.}

\item{src}{Button link.}

\item{color}{Button color. See here for valid colors \url{https://framework7.io/docs/badge.html}.}

\item{fill}{Fill style. FALSE by default.}

\item{outline}{Outline style. FALSE by default.}

\item{shadow}{Button shadow. FALSE by default. Only for material design.}

\item{rounded}{Round style. FALSE by default.}

\item{size}{Button size. NULL by default but also "big" or "small".}
}
\description{
Build a Framework7 button
}
\note{
Not ready for production
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyF7)

 shiny::shinyApp(
  ui = f7Page(
    title = "My app",
    f7Button(color = "blue", "My button", src = "https://www.google.com"),
    f7Button(color = "red", "My button", src = "https://www.google.com", fill = TRUE)
  ),
  server = function(input, output) {}
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
