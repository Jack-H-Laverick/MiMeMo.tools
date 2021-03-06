% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NM functions.R
\name{NM_boundary_summary}
\alias{NM_boundary_summary}
\title{Summarise NEMO-MEDUSA Output into Time Series Along Transects}
\usage{
NM_boundary_summary(
  saved,
  transects,
  vars = c("DIN", "Phytoplankton", "Temperature", "Salinity", "Detritus")
)
}
\arguments{
\item{saved}{A dataframe containing a summarised month from NEMO-MEDUSA model outputs.}

\item{transects}{A dataframe containing the labelled transects along the model domain boundaries.}

\item{vars}{A character vector containing the column names to be summarised for boundary conditions. Defaults to the tragets for StrathE2E}
}
\value{

}
\description{
This function averages NEMO-MEDUSA monthly summaries into time series for the target boundaries of StrathE2E.
}
\details{
The function subsets the NEMO-MEDUSA grid according to the transects object provided. Water exchanges between
model compartments are totaled. The boundary conditions of the model domain for variables needed by
StrathE2E are summarised as a flow-weighted mean, applying the flow rate at each transect.
}
\seealso{
Other NEMO-MEDUSA averages: 
\code{\link{NM_decadal_summary}()},
\code{\link{NM_volume_summary}()},
\code{\link{decadal}()},
\code{\link{strip_ice}()}
}
\concept{NEMO-MEDUSA averages}
