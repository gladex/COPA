copar.SigPattern <- function(inpFile="SRR015350_copa.rda",plotSigPattern=T) {
  load(input)  # BS :: 153 x 8
  inpN=strsplit(input,split="[.]")[[1]][1]; inpN

  head(BS,3)
  #  BinSize  Perc PeakNumber Threshol SignalReads NoiseLevel      TPR      FDR
  #1     100 0.951      27862  4.63084     1104394   90.4973% 99.6519% 2.76762%
  #2     100 0.954      27961  4.69271     1100792   90.5283% 99.5851% 2.77006%
  #3     100 0.957      28000  4.79269     1100204   90.5333% 99.5786% 2.75995%
  PN=BS[,3]  # "integer"
  if(plotSigPattern==T) {
    sigProcess(PN, inpName="SRR015350_copa.PN")
  }
}
