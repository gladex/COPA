\name{copar.SigPattern}
\alias{copar.SigPattern}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Peak Count Candidate Signal Pattern Analysis.
}
\description{
This package function will analyze the signal pattern of the detected peak count candidate list. Together it will generate a heatmap plot (TIFF format) for the randomized sequence of the detected peak count candiate list.
}
\usage{
copar.SigPattern(inpFile = "SRR015350_copa.rda",
                plotSigPattern = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inpFile}{
The input data file, e.g. inpFile = "SRR015350_copa.rda"
}
  \item{plotSigPattern}{
If plotSigPattern==TURE, it will generate heatmap plots (TIFF format) for both input peak count candidate list and its corresponding randomized candiate list.
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
?copar.SigPattern
## run copar.SigPattern
copar.SigPattern(inpFile = "SRR015350_copa.rda",
                 plotSigPattern = T)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
