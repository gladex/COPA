\name{COPAR-package}
\alias{COPAR-package}
\alias{COPAR}
\docType{package}
\title{
\packageTitle{COPAR}
}

\description{
COPAR is designed for ChIP-seq optimal peak analysis. It takes the BED-formatted ChIP-seq data as the input, then it gives the optimal peak number candidate subject to statistically meaninful FDR. Secondly, the package provides functions to retrieve signal patterns from the detect optimal peak count candidate. Thus it provides a quantitative measure for genomic feature extraction and comparison.
}

\details{
COPAR is designed for ChIP-seq Optimal Peak Analysis.
\packageDESCRIPTION{COPAR}
\packageIndices{COPAR}
}

\author{
Author: Binhua Tang (bh.tang@outlook.com)
}

\references{
1. Tang B, Hsu H-K, Hsu P-Y, Bonneville R, Chen S-S, Huang TH-M, et al. Hierarchical modularity in ER¦Á transcriptional network is associated with distinct functions and implicates clinical outcomes. NPG Scientific Reports. 2012;2.
}

\keyword{ package }
\seealso{
Dependencies: signal, fields, ggplot2.
}
\examples{
library(COPAR)
## check the help docs.
?COPAR

## run sigProcess
sigProcess(x, inpName = "SRR015350_COPAR")

}
