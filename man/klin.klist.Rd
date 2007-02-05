\name{klin.klist}
\alias{klin.klist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the Kronecker product of a list of matrices }
\description{
  Given a list \code{A} of matrices, the function calculates
  \code{A[[1]] \%x\% \dots \%x\% A[[length(A)]]}.
}
\usage{
klin.klist(A)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ A list that contains the matrices, preferably of class
  \code{Matrix}. }
}
\value{
  A matrix, the dimensions are the product of the dimensions of the
  matrices in \code{A}.
}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\note{ This is merely a convenience function, it does not employ any
  special algorithm, just calls \code{\%x\%} repeatedly.
}
\seealso{ \code{\link{klin.eval}}, \code{\link{klin.solve}},
  \code{\link{klin.ls}}, \code{\link{klin.preparels}}. }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
