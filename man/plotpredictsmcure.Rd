\name{plotpredictsmcure}
\alias{plotpredictsmcure}
\title{
Plot predicted smcure object
}
\description{
plot predicted survival curve(s)
}
\usage{
plotpredictsmcure(object, type = "S", xlab = "Time", ylab = "Predicted Survival Probability", model = c("ph", "aft"), ...)
}
\arguments{
   \item{object}{
a predicted semicure object. 
}
  \item{type}{
type of plot. "S" means steps plot.
}
  \item{xlab}{
a title for the x axis
}
  \item{ylab}{
a title for the y axis
}
  \item{model}{
either "ph" or "aft"}
 \item{\dots}{
Further arguments to be passed to the plotpredictsmcure function}
}
