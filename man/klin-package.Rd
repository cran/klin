\name{klin-package}
\alias{klin-package}
\alias{klin}
\docType{package}
\title{Calculate and solve linear equations with Kronecker structure.
}
\description{
  The package implements efficient ways to evaluate and
  solve equations of the form Ax=b, where A is a kronecker product of
  matrices.  Functions to solves least squares problems of this type
  are also included.
}
\details{
\tabular{ll}{
Package: \tab klin\cr
Type: \tab Package\cr
Version: \tab 2007-01-08\cr
Date: \tab 2007-01-08\cr
License: \tab GPL version 2 or newer\cr
}

The most important functions are \code{klin.eval} and \code{klin.solve},
which evaluate \code{A \%*\% x} or solve for \code{x} in \code{A \%*\% x
  == b} where \code{A} is a Kronecker product and \code{x} and \code{b}
are conforming vectors.

Convenience functions for solving least squares problems with Kronecker
structure (\code{klin.ls} and \code{klin.preparels}) are also included.
The function \code{klin.klist} forms the Kronecker product of a list of
matrices.

}
\author{
Author and Maintainer: Tamas K Papp <tpapp@princeton.edu>
}
\references{ Paul E. Buis and Wayne R. Dyksen.
  \emph{Efficient Vector and Parallel Manipulation of Tensor Products.}
  ACM Transactions on Mathematical Software, Vol. 22, No. 1, March 1996,
  Pages 18--23.}
\keyword{ package }
