% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xtable.R
\name{print.decorated}
\alias{print.decorated}
\title{Print Decorated}
\usage{
\method{print}{decorated}(x, ...)
}
\arguments{
\item{x}{decorated}

\item{...}{passed to other methods and to \code{\link{footnote}}}
}
\value{
character
}
\description{
Prints a decorated data.frame.
If 'xtable' is inherited, supplies a footnote.
Experimental.
}
\examples{
library(magrittr)
library(xtable)
set.seed(0)
x <- data.frame(
 auc = rnorm(4, mean = 2400, sd = 200),
 bmi = rnorm(4, mean = 20, sd = 5),
 gen = 0:1
)
x \%<>\% decorate('auc: [AUC_0-24, ng*h/mL]')
x \%<>\% decorate('bmi: [Body Mass Index, kg/m^2]')
x \%<>\% decorate('gen: [Gender, [Male: 1, Female: 0]]')
x \%>\% resolve
x \%>\% resolve \%>\% xtable


}
\keyword{internal}
