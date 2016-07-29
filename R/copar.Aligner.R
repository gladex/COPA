copar.Aligner <- function(hg="hg18", ws=seq(from=100,to=500,by=50),
                         pv=seq(from=0.951,to=0.999,by=0.003),
                         bf="SRR015350_Sorted.bed",
                         otf="SRR015350_copar") {
  WS=toString(ws)
  PV=toString(pv)

  CML=paste("/R/BELT1.0.2_linux64","-g",hg,"-w",WS,"-p",PV,"-f","-b",bf,sep=" "); #CML
  system(CML)

  sW=length(strsplit(WS,split=",")[[1]])   # 9
  sP=length(strsplit(PV,split=",")[[1]])   # 17

  BS=read.table(paste(bf,"_BELT_summary.txt",sep=""),
                skip=6,nrows=sW*sP,
                header=T,sep="",blank.lines.skip=T)

  save(file=paste(otf,".rda",sep=""),BS)

  message(paste("Completed! The result is saved to ",otf,".rda!",
                "\nPlease use the function 'copar.Miner' for following analysis.",sep=""))
  # return()
}
