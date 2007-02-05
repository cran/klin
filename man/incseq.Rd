\name{incseq}
\alias{incseq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Only returns increasing sequences }
\description{
  Given two numbers \code{a} and \code{b}, returns \code{a:b} if
  \code{a<=b}, otherwise \code{numeric(0)}.
}
\usage{
incseq(a,b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{a}{ lower endpoint, an integer }
  \item{b}{ upper endpoint, an integer }
}
\value{
  If \code{a<=b}, \code{a:b}, otherwise \code{numeric(0)}.
}
\author{ Tamas K Papp <tpapp@princeton.edu> }
\note{ The function does not check whether \code{a} and \code{b} are
  indeed integers.
}
\keyword{arith}

