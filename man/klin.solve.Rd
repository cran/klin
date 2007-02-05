\name{klin.solve}
\alias{klin.solve}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Solve linear systems where the matrix is a Kronecker product }
\description{
  Solves the system \code{A \%*\% x == b} for \code{x} given \code{A}
  and \code{b}, where \code{A} is a Kronecker product of matrices.
}
\usage{
klin.solve(A, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ A list that contains the matrices, preferably of
    class \code{Matrix}. }
  \item{b}{ A conformable numeric vector. }
}
\details{
  The matrices in the list \code{A} should be \emph{square} matrices of
  the class \code{Matrix}.  This allows the user to take advantage of
  their special structure (eg sparsity), also, their factors will be
  memoized by \code{Matrix}.
}
\value{
  A numeric vector \code{x} which solves the system.
}
\references{ Paul E. Buis and Wayne R. Dyksen.
  \emph{Efficient Vector and Parallel Manipulation of Tensor Products.}
  ACM Transactions on Mathematical Software, Vol. 22, No. 1, March 1996,
  Pages 18--23.}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\note{ The algorithm (given in the reference) is orders of magnitude
  more efficient (both in terms of CPU and memory usage) than computing
  the Kronecker product and calling \code{solve}.
}
\seealso{ \code{\link{klin.eval}}, \code{\link{klin.preparels}},
  \code{\link{klin.ls}}, \code{\link{klin.klist}}. }
\examples{
## dimensions
m <- c(4,7,2)
## make random matrices
A <- lapply(seq_along(m),
            function(i) Matrix(rnorm(m[i]^2),m[i],m[i]))
b <- rnorm(prod(m))		# make random b
x1 <- solve(klin.klist(A),b)    # brute force way
x2 <- klin.solve(A, b)          # using klin.eval
range(x1-x2)			# should be small
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
