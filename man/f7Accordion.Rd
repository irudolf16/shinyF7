% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Accordion.R
\name{f7Accordion}
\alias{f7Accordion}
\title{Create a Framework7 accordion}
\usage{
f7Accordion(..., mode = NULL)
}
\arguments{
\item{...}{Slot for \link{f7AccordionItem}.}

\item{mode}{Accordion style. NULL by default. Use "list" to access the list
style.}
}
\description{
Build a Framework7 accordion
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyF7)

 shiny::shinyApp(
  ui = f7Page(
    title = "My app",
    f7Accordion(
     f7AccordionItem(
      title = "Item 1",
      "Item 1 content",
      open = TRUE
     ),
     f7AccordionItem(
      title = "Item 2",
      "Item 2 content"
     )
    ),
    f7Accordion(
     mode = "list",
     f7AccordionItem(
      title = "Item 1",
      "Item 1 content"
     ),
     f7AccordionItem(
      title = "Item 2",
      "Item 2 content"
     )
    )
  ),
  server = function(input, output) {}
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
