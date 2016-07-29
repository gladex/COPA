\name{copar.optiPN}
\alias{copar.optiPN}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimal Peak Count Candidate and Corresponding FDR Finder.
}
\description{
copar.optiPN is the package function to find the optimal peak count candiate and corresponding statistically meaningful FDR (e.g. <= 0.05).
}
\usage{
copar.optiPN(PN = BS.PN,
            FDR = BS.FDR,
            thres_fdr = 5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PN}{
Peak number list.
}
  \item{FDR}{
The corresponding FDR list.
}
  \item{thres_fdr}{
The threshold FDR (in percentage), e.g. 5 for five percent of FDR.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
1. Tang B, Hsu H-K, Hsu P-Y, Bonneville R, Chen S-S, Huang TH-M, et al. Hierarchical modularity in ER¦Á transcriptional network is associated with distinct functions and implicates clinical outcomes. NPG Scientific Reports. 2012;2.
}
\author{
Binhua Tang <bh.tang@outlook.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
library(COPAR)
## check the help docs.
?copar.optiPN
## run copar.optiPN
copar.optiPN(PN = BS.PN,
             FDR = BS.FDR,
             thres_fdr = 5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
