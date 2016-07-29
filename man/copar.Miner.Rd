\name{copar.Miner}
\alias{copar.Miner}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ChIP-seq Information Mining & Process.
}
\description{
copar.Miner is the package function to data process and the optimal peak candiate from the raw ChIP-seq input data (in BED format).
}
\usage{
copar.Miner(input = "SRR015350_copa.rda",
           plotPN = T,
           plotFDR = T,
           maxPN = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{input}{
The input file processed by copar.Aligner, e.g. input = "SRR015350_copa.rda".
}
  \item{plotPN}{
If plotPN==TRUE, copar.Miner will generate a heatmap of TIFF format for all peak number candidates.
}
  \item{plotFDR}{
If plotFDR==TRUE, copar.Miner will generate a heatmap of TIFF format for all corresponding False Discovery Rate (FDR) candidates.
}
  \item{maxPN}{
If maxPN==TRUE, copar.Miner will report the optimal peak count candiate.
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
?copar.Miner
## run copar.Miner
copar.Miner(input = "SRR015350_copa.rda",
            plotPN = TRUE,
            plotFDR = TRUE,
            maxPN = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
