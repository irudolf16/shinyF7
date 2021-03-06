% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Timeline.R
\name{f7Timeline}
\alias{f7Timeline}
\title{Create a Framework7 timeline}
\usage{
f7Timeline(..., sides = FALSE)
}
\arguments{
\item{...}{Slot for \link{f7TimelineItem}.}

\item{sides}{Enable side-by-side timeline mode.}
}
\description{
Build a Framework7 timeline
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyF7)

 shiny::shinyApp(
  ui = f7Page(
    title = "My app",
    f7Timeline(
     sides = TRUE,
     f7TimelineItem(
     "Another text",
      date = "01 Dec",
      card = FALSE,
      time = "12:30",
      title = "Title",
      subtitle = "Subtitle",
      side = "left"
      ),
      f7TimelineItem(
      "Another text",
      date = "02 Dec",
      card = TRUE,
      time = "13:00",
      title = "Title",
      subtitle = "Subtitle"
      ),
      f7TimelineItem(
      "Another text",
      date = "03 Dec",
      card = FALSE,
      time = "14:45",
      title = "Title",
      subtitle = "Subtitle"
      )
     )
  ),
  server = function(input, output) {}
 )
}

}
\author{
David Granjon and Isabelle Rudolf, \email{dgranjon@ymail.com}
}
