% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rules-class.R
\docType{class}
\name{StoppingHighestDose-class}
\alias{StoppingHighestDose-class}
\alias{.StoppingHighestDose}
\title{Stop when the highest dose is reached}
\description{
Stop when the highest dose is reached
}
\examples{
## for example this can be used in the following way:
## we would like to stop if:
## - next proposed dose is highest dose
## - there are already at least 3 patients on that dose
## - we are sure that this dose is safe, e.g. the
## probability to be in the interval (0\%, 20\%) of DLT
## rate is above 50\%.
## This would be implemented as the following combination:

stopHigh <-
  StoppingHighestDose() &
  StoppingPatientsNearDose(nPatients=3, percentage=0) &
  StoppingTargetProb(target=c(0, 0.2),
                     prob=0.5)

## of course this rule would then need to be combined
## with the other standard rules for when to stop
## when the MTD is found based on being near
## e.g. a 30\% DLT probability or having reached maximal sample
## size, in the manner of:
## stopRule <- stopHigh | stopLow | stopSamplesize
}
\keyword{classes}
