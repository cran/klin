\name{klin.ls}
\alias{klin.ls}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Solves a least squares problem where the matrix is a Kronecker
  product }
\description{
  Computes the least squares estimate \code{x} which minimizes the
  Euclidian norm of \code{A \%x\% x - b}, where \code{A} is a
  Kronecker product of matrices.
}
\usage{
klin.ls(A, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ A list that contains the matrices, preferably of class
    \code{Matrix}, \emph{or} a list of class \code{klin.prepls} (see
    \emph{Details}).}
  \item{b}{ A conformable numeric vector. }
}
\details{
  The matrices in the list \code{A} should be of the class
  \code{Matrix}.  This allows the user to take advantage of their
  special structure (eg sparsity).

  This function is just glue for \code{\link{klin.preparels}} and
  \code{\link{klin.solve}}.  If you are using the same \code{A} multiple
  times, it is suggested that you call \code{\link{klin.preparels}} and
  save the result.  This allows \code{Matrix} to memoize the factors of
  \code{crossprod(A[[i]])} where needed.

}
\value{
  A numeric vector.
}
\references{ Paul E. Buis and Wayne R. Dyksen.
  \emph{Efficient Vector and Parallel Manipulation of Tensor Products.}
  ACM Transactions on Mathematical Software, Vol. 22, No. 1, March 1996,
  Pages 18--23.}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\note{ The algorithm (given in the reference) is orders of magnitude
  more efficient (both in terms of CPU and memory usage) than computing
  the Kronecker product and calling \code{crossprod} and \code{solve}.
}
\seealso{ \code{\link{klin.eval}}, \code{\link{klin.solve}},
  \code{\link{klin.preparels}}, \code{\link{klin.klist}}. }
\examples{
## dimensions
n <- c(2,4,3)
m <- n+c(1,0,2)			# we need m >= n
## make random matrices
A <- lapply(seq_along(n),
            function(i) Matrix(rnorm(m[i]*n[i]),m[i],n[i]))
b <- rnorm(prod(m))		# make random b
x <- klin.ls(A,b)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
