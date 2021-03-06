\name{disttree}

\alias{disttree}
\alias{print.disttree}

\title{Distributional Regression Tree}

\description{
  Trees based on maximum-likelihood estimation of parameters for
  distributions from the GAMLSS family (for generalized additive
  models for location, scale, and shape).
}

\usage{
disttree(formula, data, na.action, cluster, family = NO(),
  type.tree = "mob", decorrelate = "none",
  control = mob_control(\dots), ocontrol = list(), \dots)
}

\arguments{
  \item{formula}{A symbolic description of the model to be fit. This
    should be of type \code{y ~ x1 + x2}
    where \code{y} should be the response variable
    and \code{x1} and \code{x2} are used as partitioning variables.}
  \item{data}{An optional data frame containing the variables in the model.}
  \item{na.action}{A function which indicates what should happen when the data
    contain \code{NA}s.}
  \item{cluster}{An optional vector (typically numeric or factor) with a
    cluster ID to be employed for clustered covariances in the parameter
    stability tests.}
  \item{family}{Specification of the response distribution.
    Either a \code{\link[gamlss.dist]{gamlss.family}} object or
    a function generating such a family.}
  \item{type.tree}{Specification of the type of tree learner, either
    \code{"mob"} or \code{"ctree"}.}
  \item{decorrelate}{Specification of the type of decorrelation for the
    empirical estimating functions (or scores) either \code{"none"} or
    \code{"opg"} (for the outer product of gradients) or \code{"vcov"}
    (for the variance-covariance matrix, assuming this is an estimate
    of the Fisher information).}
  \item{ocontrol}{List with control parameters passed to
    \code{\link[stats]{optim}}.}
  \item{control, \dots}{Arguments passed to \code{\link[partykit]{mob_control}}.}
}

\details{
  Distributional regression trees are an application of model-based recursive partitioning
  (implemented in \code{\link[partykit]{mob}}) to parametric model fits
  based on the GAMLSS family of distribtuions.
}

\value{
  An object of S3 class \code{"disttree"} inheriting from class \code{"modelparty"}.
}

\seealso{\code{\link[partykit]{mob}}, \code{\link{distfit}}}

\examples{
tr <- disttree(dist ~ speed, data = cars)
print(tr)

plot(tr)
plot(as.constparty(tr))
}

\keyword{tree}
