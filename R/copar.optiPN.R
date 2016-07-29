copar.optiPN <- function(PN=BS.PN, FDR=BS.FDR, thres_fdr=5){
  id_fdr=ifelse(FDR <= thres_fdr, 1, 0)
  id_pn=PN * id_fdr
  idx=which(PN==max(id_pn), arr.ind=T)
  result <- list(MaxPeak=max(id_pn), SatisFDR=FDR[idx[1,1],idx[1,2]], Index=idx)
  return(result)
}
