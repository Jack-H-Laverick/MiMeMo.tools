% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NM functions.R
\name{decadal}
\alias{decadal}
\title{Prepare for Averaging by Decade}
\usage{
decadal(saved)
}
\arguments{
\item{saved}{A dataframe containing a summarised month from NEMO-MEDUSA model outputs.}
}
\value{
A dataframe containing a summarised month of NEMO-MEDUSA output, gaining a decade column, and dropping columns
which aren't needed for spatial maps.
}
\description{
This function cleans the saved NEMO-MEDUSA monthly summaries, for averaging into decades.
}
\seealso{
Other NEMO-MEDUSA averages: 
\code{\link{NM_boundary_summary}()},
\code{\link{NM_decadal_summary}()},
\code{\link{NM_volume_summary}()},
\code{\link{strip_ice}()}
}
\concept{NEMO-MEDUSA averages}
