\name{sigProcess}
\alias{sigProcess}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
COPA singal process function.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sigProcess(x, inpName = "SRR015350_copa")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
The input argument
}
  \item{inpName}{
The input file name, e.g. inpName = "SRR015350_copa"
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
library(COPA)
## check the help docs.
?sigProcess
## run sigProcess
sigProcess(x, inpName = "SRR015350_copa")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
