% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agplot.R
\name{ggplot.decorated}
\alias{ggplot.decorated}
\title{Create a New ggplot for a Decorated Data Frame}
\usage{
\method{ggplot}{decorated}(data, ...)
}
\arguments{
\item{data}{data.frame or similar}

\item{...}{passed to \code{\link[ggplot2]{ggplot}}}
}
\value{
return value like \code{\link[ggplot2]{ggplot}}
}
\description{
Creates a new ggplot object for a decorated data.frame.
This is the ggplot() method for class 'decorated';
it tries to implement automatic labels and units in axes and legends
in association with \code{\link{print.dg}}.
Use \code{ggplot(as.data.frame(x))} to get default
ggplot() behavior. Use \code{ggplot(as_decorated(x))}
to enforce custom behavior.
}
\examples{
meta <- system.file(package = 'yamlet', 'extdata','quinidine.csv')
x <- decorate(meta)
library(ggplot2)
class(ggplot(data = x) + geom_path(aes(x = time, y = conc)))
class(ggplot(data = x, aes(x = time, y = conc)) + geom_path())
example(print.dg)
}
\seealso{
Other dg: 
\code{\link{print.dg}()}

Other interface: 
\code{\link{as_classified.factor}()},
\code{\link{conditionalize.data.frame}()},
\code{\link{decorate.character}()},
\code{\link{decorate.data.frame}()},
\code{\link{ggready.data.frame}()},
\code{\link{io_csv.character}()},
\code{\link{io_csv.data.frame}()},
\code{\link{io_table.character}()},
\code{\link{io_table.data.frame}()},
\code{\link{io_yamlet.character}()},
\code{\link{io_yamlet.data.frame}()},
\code{\link{is_parseable.default}()},
\code{\link{read_yamlet}()},
\code{\link{resolve.data.frame}()},
\code{\link{write_yamlet}()}
}
\concept{dg}
\concept{interface}
