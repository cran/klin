\name{klin.preparels}
\alias{klin.preparels}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Prepares matrices for the least squares solver }
\description{
  You should use this function whenever you are calling \code{klin.ls}
  repeatedly with the same matrices.  
}
\usage{
klin.preparels(A)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ A list that contains the matrices, preferably of class
  \code{Matrix}. }
}
\details{
  To compute the least squares estimate, we are solving
  \deqn{(A_1 \times A_2 \ldots \times A_K)^T
    (A_1 \times A_2 \times \ldots \times A_K) =
    (A_1 \times A_2 \times \ldots \times A_K)^T b}
  However, for square \eqn{A_i} matrices, one can premultiply both sides
  by the Kronecker product of the inverse of $A_i^T$ (in the
  corresponding place) and identity matrices, making the problem
  simpler.

  \code{klin.prepls} calculates the matrices needed on both sides, but
  does not evaluate the Kronecker product.
}
\value{
  A list of class \code{klin.prepls}, contains matrices for the left and
  right hand side.
}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\seealso{ \code{\link{klin.eval}}, \code{\link{klin.solve}},
  \code{\link{klin.ls}}, \code{\link{klin.klist}}. }
\examples{
## dimensions
n <- c(2,4,3)
m <- n+c(1,0,2)			# we need m >= n
## make random matrices
A <- lapply(seq_along(n),
            function(i) Matrix(rnorm(m[i]*n[i]),m[i],n[i]))
b <- rnorm(prod(m))		# make random b
prepA <- klin.preparels(A)
x <- klin.ls(prepA,b)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
