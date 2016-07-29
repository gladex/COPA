copar.Miner <- function(input="SRR015350_copar.rda",
                       plotPN=T, plotFDR=T, maxPN=T) {
  load(input)
  inpN=strsplit(input,split="[.]")[[1]][1]; inpN

  BS.PN=matrix(BS[,3], nrow=9, byrow=T)
  #BS.PN
  rownames(BS.PN)=unique(BS[,1])
  colnames(BS.PN)=unique(BS[,2])
  BS.PN
  class(BS.PN)  # "matrix"
  class(BS.PN[1,2])  # "integer"
  save(file=paste(inpN,".PN.rda",sep=""),BS.PN)

  #BS.FDR
  TT=BS[,8] # "factor"
  TT=as.numeric(sub("%","",TT)) #"numeric"
  BS.FDR=matrix(TT, nrow=9, byrow=T);rm(TT)
  rownames(BS.FDR)=unique(BS[,1])
  colnames(BS.FDR)=unique(BS[,2])
  BS.FDR
  class(BS.FDR) # "matrix"
  class(BS.FDR[1,1]) # "numeric"
  save(file=paste(inpN,".FDR.rda",sep=""),BS.FDR)
  #BS.FDR=matrix(BS[,8], nrow=9, byrow=T)
  #class(BS.FDR[1,2]) # "character"

  if(plotPN==T){
    library(pheatmap)
    library(RColorBrewer)
    pheatmap(BS.PN, border_color='white', cluster_rows=F, cluster_cols=F,
             color=colorRampPalette(rev(brewer.pal(n=11,name="RdBu")))(100),
             display_numbers=F, number_format="%.1f",
             fontsize=5, fontsize_row=5, fontsize_col=5,
             main="Peak Number",
             cellwidth=15, cellheight=15,
             filename=paste(inpN,".PN.tiff",sep=""))  }
  if(plotFDR==T){
    library(pheatmap)
    library(RColorBrewer)
    pheatmap(BS.FDR, border_color='white',
           cluster_rows=F, cluster_cols=F,
           color=colorRampPalette(c("grey","navy","red"))(50),#firebrick3
           display_numbers=F, number_format="%.1f",
           fontsize=5, fontsize_row=5, fontsize_col=5,
           main="False Discovery Rate (%)",
           cellwidth=15, cellheight=15,
           filename=paste(inpN,".FDR.tiff",sep=""))  }
}
