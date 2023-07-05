\name{minxent.single}
\alias{minxent.single}
\title{Minimum Cross Entropy Distribution under One Constraint}
\description{minxent.single estimates the Minimum Cross Entropy Distribution 
(MinxEnt) under a single constraint for corresponding observed probabilities by 
using Kullback minimum cross entropy principle.
}
\usage{
\method{minxent}{single}(q, G, eta, lambda)
}
\arguments{
\item{q}{a priori distribution.}
\item{G}{matrix of moment vector function.}
\item{eta}{vector of one moment constraint.}
\item{lambda}{initial point for langrangian multiplier.}
}
\details{If \code{"minxent"} is obtained under single constraint arising from 
the knowledge of the mean of the system and taking a priori distribution to be a
 uniform distribution then this distribution is equivalent to Maxwell-Boltzmann 
 distribution which has importance in statistical mechanics (Kapur&Kesavan, 
 1992).  One can also use different moment constraint and obtain different 
 MinxEnt distributions.
}
\value{\code{"minxent.single"} returns an estimate of Lagrange multipliers and 
minimum cross entropy distribution under single constraint which is specified by
 user.
}
\references{Kapur, J.N. and Kesavan, H.K.(1992), Entropy Optimization Principle 
with Applications, Academic Pres.
}
\author{Senay Asma}
\seealso{
  \code{\link{minxent.multiple}}
}
\examples{
q <- c(0.05,0.10,0.15,0.20,0.22,0.28) # a priori distribution
G <- matrix(c(rep(1,6),1:6),byrow=TRUE,nrow=2) # matrix of moment vector function of observed data
eta <- c(1,4.5) # vector of moment constraints
minxent.single(q=q,G=G,eta=eta,c(0)) # estimate of lagrangian multipliers and Kullback minimimum cross entropy distribution
}