\name{minxent.multiple}
\alias{minxent.multiple}
\title{Minimum Cross Entropy Distribution under Multiple Constraints
}
\description{minxent.multiple estimates the MinxEnt distribution under given 
moment constraints.
}
\usage{
\method{minxent}{multiple}(q, G, eta, lambda)
}
\arguments{
\item{q}{a priori distribution.}
\item{G}{matrix of moment vector functions.}
\item{eta}{vector of moment constraints.}
\item{lambda}{initial points for langrangian multipliers.}
}
\details{MinxEnt distribution is obtained by Kullback's minimum cross entropy 
principles. This principle is introduced by Kullback (1957) which minimizes 
Kullback-Leibler divergence subject to given constraints. If a priori 
distribution is taken to be uniform distribution then minimizing 
Kullback-Leibler divergence is equivalent to maximizing Shannon's entropy 
subject to same given constraints. In the other words, in this special case 
MaxEnt distribution introduced by Jaynes (1957) is equivalent to MinxEnt 
distribution. For various application see Kapur&Kesavan(1992).
}
\value{
minxent.multiple  returns an estimate of Lagrange multipliers and minimum cross 
entropy distribution under multiple constraints which is specified by user.
}
\section{Warning}{
Since first Lagrange multiplies is a function of the others, there exists (m-1) 
constraints.  (See. Kapur&Kesavan(1992) pp.44). 
}
\references{Jaynes, E. T. (1957). Information Theory and Statistical Mechanics. 
Physical Reviews, 106: 620-630.
Kapur, J.N. and Kesavan, H.K.(1992), Entropy Optimization Principle with 
Applications, Academic Press.
Kullback, S. (1959). Information Theory and Statistics. John Wiley, New York. 
}
\author{Senay Asma}
\seealso{
  \code{\link{minxent.single}}
}
\examples{
xi <- 1:6 
eta<-c(1,4,19)  #expected moment constraints 
q<-c(rep(1/6),6)  #a priori distribution 
G<-matrix(c(rep(1,6),xi,xi^2),byrow=TRUE,nrow=3) #matrix of moment vector function of observed data
minxent.multiple(q=q,G=G,eta=eta,c(0,0)) #estimates of lagrangian multipliers and MinxEnt distribution
}