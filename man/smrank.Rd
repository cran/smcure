\name{smrank}
\alias{smrank}
\title{
Rank function}
\description{
Rank estimating equation used in the M-step of the EM algorithm for the AFT mixture cure model.}
\usage{
smrank(beta, Time, X, n, w, Status)
}
\arguments{
  \item{beta}{
unknown parameters corresponding to latency part}
  \item{Time}{
time to event of interest}
  \item{X}{
a vector or matrix of covariates corresponding to latency part
}
  \item{n}{
total number of observations
}
  \item{w}{
conditional probability of the individual remaining uncured
}
  \item{Status}{
censoring indicator, 1=event of interest happens, and 0=censoring
}
}