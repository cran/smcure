\name{smrank}
\alias{smrank}
\title{
rank function}
\description{
smrank function in EM algorithm}
\usage{
smrank(beta, Time, X, n, w, Status)
}
\arguments{
  \item{beta}{
Unknown parameters corresponding to latency part}
  \item{Time}{
for right censored data, this is the follow up time}
  \item{X}{
a vector or matrix of covariates corresponding to latency part
}
  \item{n}{
The total number of observations
}
  \item{w}{
conditional probability of the ith individual remaining uncured
}
  \item{Status}{
The status indicator(0=alive,1=dead)
}
}