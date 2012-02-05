\name{smsurv}
\alias{smsurv}
\title{
Estimation of the baseline survival
}
\description{
The estimated baseline survival function based on the Breslow method, which is used in order to update the E-step in the EM algorithm.}
\usage{
smsurv(Time, Status, X, beta, w, model)
}
\arguments{
  \item{Time}{
this is the follow up time for "ph" model. If model is "aft", then this is residual \eqn{\log t-\bm{\beta} \mathbf x}.
}
  \item{Status}{
censoring indicator, 1=event of interest happens, and 0=censoring
}
  \item{X}{
effects of covariates of uncured patients
}
  \item{beta}{
initial beta from coxph
}
  \item{w}{
conditional probability of the ith individual remains uncured at the mth iteration. We use Status as initial value
}
  \item{model}{
specifies your model, it can be  "ph" or "aft"
}
}

