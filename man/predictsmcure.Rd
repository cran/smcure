\name{predictsmcure}
\alias{predictsmcure}
\title{
prediction of semicure model}
\description{
Prediction of survival probability from the \code{smcure} in order to pass subjects to \code{plotpredictsmcure()}.}
\usage{
predictsmcure(object, newX, newZ, model = c("ph", "aft"), ...)
}
\arguments{
  \item{object}{
an object of smcure
}
  \item{newX}{
new value(s) of X}
  \item{newZ}{
new value(s) of Z}
  \item{model}{
either 'ph' or 'aft'}
 \item{\dots}{
further arguments to be passed to the predictsmcure function}
}
\details{
Predicted population survival function can be calculated by the following equation
\deqn{\hat S_{pop}(t)=\hat \pi+(1-\hat \pi)\hat S(t)
 }
where \eqn{\hat S(t)} is the estimated survival function for the uncured patients based on the PH or AFT model.
}

\seealso{
\code{smcure}, \code{printsmcure}, \code{plotpredictsmcure}}
