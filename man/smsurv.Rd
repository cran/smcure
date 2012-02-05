\name{smsurv}
\alias{smsurv}
\title{
Estimation of the Conditional Survival
}
\description{
This R-program uses the Breslow method to estimate baseline survival of Cox PH cure model and AFT cure model.
}
\usage{
smsurv(Time, Status, X, beta, w, model)
}
\arguments{
  \item{Time}{
this is the follow up time for "ph" model. If model is "aft", then this is error term.
}
  \item{Status}{
The status indicator, normally 0=alive, 1=dead
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

\references{
J. Zhang and Y. Peng. A new estimation method for the semiparametric accelerated
failure time mixture cure model. Statistics in medicine, 26(16):3157-3171, 2007\\
J.P. Sy and J.M.G. Taylor. Estimation in a cox proportional hazards cure model. Bio-
metrics, 56(1):227-236, 2000
}