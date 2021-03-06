% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{myBarplot}
\alias{myBarplot}
\title{Convenience function to make barplots of percentages}
\usage{
myBarplot(x, description, xaxisround = 0)
}
\arguments{
\item{x}{vector of samples}

\item{description}{xlab string}

\item{xaxisround}{rounding for xaxis labels (default: 0, i.e. integers will
be used)}
}
\value{
the ggplot2 object
}
\description{
Convenience function to make barplots of percentages
}
\examples{
crmPack:::myBarplot(rpois(n=100, lambda=2), 
                    "test")
}
\keyword{internal}
