\name{smcure}
\alias{smcure}
\title{
Semiparametric mixture cure model
}
\description{
Fit semiparametric PH mixture cure model or AFT mixture cure model by the EM algorithm
}
\usage{
smcure(formula, cureform, offset = NULL, data, na.action = na.omit, 
	model = c("aft", "ph"), link = "logit", Var = TRUE, 
	emmax = 50, eps = 1e-07, nboot = 100)
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
specifies the link in incidence part. The "logit", "probit" or complementary loglog ("cloglog") links are available. By default link = "logit".
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

\value{
See \code{printsmcure} for returned values
}


\seealso{
\code{printsmcure}, \code{predictsmcure}, \code{plotpredictsmcure}}

\examples{
data(e1684)
# fit PH mixture cure model
pd <- smcure(Surv(FAILTIME,FAILCENS)~TRT+SEX+AGE,cureform=~TRT+SEX+AGE,
     data=e1684,model="ph",Var = FALSE)
printsmcure(pd,Var = FALSE)

# plot predicted survival curves for male with median centered age by treatment groups
predm=predictsmcure(pd,newX=cbind(c(1,0),c(0,0),c(0.579,0.579)),
     newZ=cbind(c(1,0),c(0,0),c(0.579,0.579)),model="ph")
plotpredictsmcure(predm,model="ph")


data(bmt)
# fit AFT mixture cure model
bmtfit <- smcure(formula = Surv(Time, Status) ~ TRT, cureform = ~TRT, data = bmt, 
    model = "aft", Var = FALSE)
printsmcure(bmtfit,Var = FALSE)

# plot predicted Survival curves by treatment groups
predbmt=predictsmcure(bmtfit,newX=c(0,1),newZ=c(0,1),model="aft")
plotpredictsmcure(predbmt,model="aft")
}

\keyword{mainfunction}
