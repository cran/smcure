\name{e1684}
\alias{e1684}
\docType{data}
\title{
Eastern Cooperative Oncology Group (ECOG) data
}
\description{
The melanoma data from the Eastern Cooperative Oncology Group (ECOG) phase III clinical trial e1684 which is used for modeling semicure PH mixture cure model (Kirkwood, et al., 1996)}
\usage{data(e1684)}
\format{
  There were 284 patients in this study with the following 5 variables.
  \describe{
    \item{\code{TRT}}{0=control group, 1=IFN treatment group}
    \item{\code{FAILTIME}}{observed relapse-free time}
    \item{\code{FAILCENS}}{censoring indicator, 1=event of interest happens, and 0=censoring}
    \item{\code{AGE}}{continuous variable, which is centered to the mean}
    \item{\code{SEX}}{0 for male, 1 for female}
  }
}

\keyword{datasets}
