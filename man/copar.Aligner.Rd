\name{copar.Aligner}
\alias{copar.Aligner}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ChIP-seq Optimal Peak Alinger
}
\description{
copar.Aligner is the package function to detect the optimal peak candiate from the raw ChIP-seq input data (in BED format).
}
\usage{
Main steps to run copar.Aligner:

The function can only run in Linux environment:

(1) The engine package "BELT1.0.2_linux64" and input data should be located on the reachable directories, e.g. ./BELT1.0.2_linux64, ./InputData.bed.

(2) Open R (in Linux), and run:
copar.Aligner(hg = "hg18",
             ws = seq(from = 100, to = 500, by = 50),
             pv = seq(from = 0.951, to = 0.999, by = 0.003),
             bf = "SRR015350_Sorted.bed",
             otf = "SRR015350_copa")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hg}{
  Reference genome, e.g. mm9, hg18, hg19, etc.
}
  \item{ws}{
  Windows size, e.g. 100,150,200, etc.
}
  \item{pv}{
  P-value threshold, e.g. 0.951, 0.954, etc.
}
  \item{bf}{
  Input file of BED format, e.g., bf = "SRR015350_Sorted.bed".
}
  \item{otf}{
  Output file name, e.g. otf = "SRR015350_copa".
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
?copar.Aligner
## run the copar.Aligner
copar.Aligner(hg = "hg18",
             ws = seq(from = 100, to = 500, by = 50),
             pv = seq(from = 0.951, to = 0.999, by = 0.003),
             bf = "SRR015350_Sorted.bed",
             otf = "SRR015350_copa")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
