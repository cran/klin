\name{klin.eval}
\alias{klin.eval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Evaluate Kronecker product times a vector }
\description{
  Computes the product \code{A \%*\% x}, where \code{A} is a
  Kronecker product of matrices.
}
\usage{
klin.eval(A, x, transpose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ A list that contains the matrices, preferably of class Matrix. }
  \item{x}{ A conformable numeric vector. }
  \item{transpose}{ If \code{TRUE}, the transpose of the matrices in
    \code{A} is used (implemented by calling \code{crossprod}). }
}
\details{
  The matrices in the list \code{A} should be of the class
  \code{Matrix}.  This allows the user to take advantage of their
  special structure (eg sparsity).
}
\value{
  A vector which equals \code{(A[[1]] \%x\% ... \%x\% A[[length(A)]])
  \%*\% x}.
}
\references{ Paul E. Buis and Wayne R. Dyksen.
  \emph{Efficient Vector and Parallel Manipulation of Tensor Products.}
  ACM Transactions on Mathematical Software, Vol. 22, No. 1, March 1996,
  Pages 18--23.}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\note{ The algorithm (given in the reference) is orders of magnitude
  more efficient (both in terms of CPU and memory usage) than computing
  the Kronecker product and doing the matrix multiplication.
}
\seealso{ \code{\link{klin.solve}}, \code{\link{klin.preparels}},
  \code{\link{klin.ls}}, \code{\link{klin.klist}}. }
\examples{
## dimensions
n <- c(6,5,3)
m <- c(4,7,2)
## make random matrices
A <- lapply(seq_along(n),
            function(i) Matrix(rnorm(m[i]*n[i]),m[i],n[i]))
x <- rnorm(prod(n))		# make random x
b1 <- klin.klist(A) \%*\% x     # brute force way
b2 <- klin.eval(A, x)           # using klin.eval
range(b1-b2)			# should be small
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
