% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parseable.R
\name{is_parseable.default}
\alias{is_parseable.default}
\title{Check Something is Parseable as Units by Default}
\usage{
\method{is_parseable}{default}(x, ...)
}
\arguments{
\item{x}{character}

\item{...}{passed arguments}
}
\value{
logical
}
\description{
Checks if something is parseable as units.
Tests against the udunits library in \pkg{units}.
See \code{\link[units]{as_units}}.
See also \code{\link[units]{install_symbolic_unit}}
for finer control.
}
\examples{
is_parseable(c('kg/m2','kg/m^2','kg.m/s2','Âµg/L'))
is_parseable('foo')
library(units)
install_symbolic_unit('foo')
is_parseable('foo')

}
\seealso{
Other parseable: 
\code{\link{is_parseable}()}

Other interface: 
\code{\link{as_classified.factor}()},
\code{\link{conditionalize.data.frame}()},
\code{\link{decorate.character}()},
\code{\link{decorate.data.frame}()},
\code{\link{ggplot.decorated}()},
\code{\link{ggready.data.frame}()},
\code{\link{io_csv.character}()},
\code{\link{io_csv.data.frame}()},
\code{\link{io_table.character}()},
\code{\link{io_table.data.frame}()},
\code{\link{io_yamlet.character}()},
\code{\link{io_yamlet.data.frame}()},
\code{\link{read_yamlet}()},
\code{\link{resolve.data.frame}()},
\code{\link{write_yamlet}()}
}
\concept{interface}
\concept{parseable}
