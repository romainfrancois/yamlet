% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agplot.R
\name{print.dg}
\alias{print.dg}
\title{Print Automatic Labels and Units for ggplot}
\usage{
\method{print}{dg}(x, ...)
}
\arguments{
\item{x}{class 'dg' from \code{\link{ggplot.decorated}}}

\item{...}{passed arguments}
}
\value{
see \code{\link[ggplot2]{print.ggplot}}
}
\description{
Prints automatic labels and units for ggplot.
Substitutes column label, if present, for default.
}
\examples{
file <- system.file(package = 'yamlet', 'extdata','quinidine.csv')
library(ggplot2)
library(dplyr)
library(magrittr)
# par(ask = FALSE)
options(yamlet_enclose = c('[ ',' ]'))

# resolve() promotes factors to a class
# that retains attributes when subsetting,
# so legend has access to the label from Heart,
# even after a filter operation.

file \%>\% decorate \%>\% resolve \%>\% filter(!is.na(conc)) \%>\%
ggplot(aes(x = time, y = conc, color = Heart)) + geom_point()

# No factors created here, but print.dg promotes guide to factor if it can:

file \%>\% decorate \%>\% filter(!is.na(conc)) \%>\%
ggplot(aes(x = time, y = conc, color = Heart)) + geom_point()

# facet_wrap() should use decodes where available.
# resolve() makes them available by promoting to
# (a subclass of) factor.

file \%>\% decorate \%>\% filter(!is.na(conc)) \%>\% resolve \%>\%
ggplot(aes(x = time, y = conc)) + geom_point() + facet_wrap(~Creatinine)

# Here we try a dataset with conditional labels and units.

file <- system.file(package = 'yamlet', 'extdata','phenobarb.csv')

# Note that there are two elements each for value label and value guide.
#'
file \%>\% decorate \%>\% as_yamlet
# Guide might have been mistaken for an attempt to provide codes/decodes
# for a factor.  However, the keys evaluate to logical on the data.frame.
# Seeing that, we test for one of them being all true, and if so we select it.

file \%>\% decorate \%>\% ggplot(aes(x = time, y = value, color = event)) + geom_point()

# In the above example, we are plotting doses and concentrations, which have
# different labels and units, so we can't improve on the y axis label.
# But if we subset to just one of these, then only one of the named conditions
# will be always true (and will therefore be promoted).

file \%>\% decorate \%>\%
filter(event == 'conc') \%>\%
ggplot(aes(x = time, y = value, color = ApgarInd)) + geom_point()

file \%>\% decorate \%>\%
filter(event == 'dose') \%>\%
ggplot(aes(x = time, y = value, color = Wt)) +
geom_point() +
scale_y_log10() +
scale_color_gradientn(colours = rainbow(4))
}
\seealso{
Other dg: 
\code{\link{ggplot.decorated}()}
}
\concept{dg}
