\name{smcure}
\alias{smcure}
\title{
semiparametric mixture cure model
}
\description{
Fit semiparametric mixture PH cure model or AFT cure model
}
\usage{
smcure(formula, cureform, offset = NULL, data, na.action = na.omit, model = c("aft", "ph"), link = "logit", Var = TRUE, emmax = 50, eps = 1e-07, nboot = 100)
}
\arguments{
  \item{formula}{
a formula object, specifying the variables included in the latent on the right. The response must be a survival object as returned by the Surv function. 
}
  \item{cureform}{
specifies the variables in the incidence.
}
  \item{offset}{
variable(s) with coefficient 1 in PH model or AFT model }
  \item{data}{
a data.frame in which to interpret the variables named in the formula and cureform. 
}
  \item{na.action}{
a missing-data filter function. By default na.action = na.omit. }
  \item{model}{
specifies your model, it can be  "ph" or "aft"
}
  \item{link}{
specifies the link in incidence part. The logit, probit or complementary loglog (cloglog) links are available. By default the logistic regression model is assumed link = "logit".
}
  \item{Var}{
If it is TRUE, the program returns Std.Error by bootstrap method. If set to False, the program only returns estimators of coefficients. By default, Var = TRUE
}
  \item{emmax}{
specifies the maximum iteration number. If the convergence criterion is not met, the EM iteration will be stopped after emmax iterations and the estimates will be based on the last maximum likelihood iteration. The default emmax = 100. 
}
  \item{eps}{
sets the convergence criterion. The default is eps = 1e-7. The iterations are considered to be converged when the maximum relative change in the parameters and likelihood estimates between iterations is less than the value specified.}
  \item{nboot}{
specifies the number of bootstrap sampling. The default nboot = 100.
}
}
\details{
None}
\value{
See print.smcure for returned values
}
\references{
J. Zhang and Y. Peng. A new estimation method for the semiparametric accelerated
failure time mixture cure model. Statistics in medicine, 26(16):3157-3171, 2007\\
J.P. Sy and J.M.G. Taylor. Estimation in a cox proportional hazards cure model. Bio-
metrics, 56(1):227-236, 2000}

\seealso{
print.smcure, predict.smcure, plot.predict.smcure}