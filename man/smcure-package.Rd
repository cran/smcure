\name{smcure-package}
\alias{smcure-package}
\alias{smcure-package}
\docType{package}
\title{
semiparametric mixture cure model
}
\description{
An R package to fit semiparametric mixture PH cure model or AFT cure model
}
\details{
\tabular{ll}{
Package: \tab smcure\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-02-05\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}
\author{
Chao Cai, Yubo Zou, Yingwei Peng, Jiajia Zhang
Maintainer: Chao Cai <caic@email.sc.edu>
}

\examples{
data(bmt)
# fit AFT model
smcure(formula = Surv(Time, Status) ~ TRT, cureform = ~TRT, data = bmt, 
    model = "aft", Var = FALSE)
}
