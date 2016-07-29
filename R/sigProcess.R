sigProcess <- function(x, inpName="SRR015350_copa") {
  library(signal)
  Fs=1000   # sample rate: 1000 hz
  step=trunc(5*Fs/1000)    # one spectral slice every 0.005 s
  window <- trunc(40*Fs/1000) # 882, 40 ms data window
  fftn <- 2^ceiling(log2(abs(window))) # 1024, next highest power of 2

  x1=x
  x2=sample(x, replace=F)

  sx1=specgram(x1, n=fftn, Fs, window, overlap=window-step)
  sx1  # "S":spectrum; "f":frequency; "t":time
  S1 <- abs(sx1$S[2:(fftn*500/Fs),])   # magnitude in range 0<f<=500 Hz.
  S1 # 184 x 150
  S1 <- S1/max(S1)         # normalize magnitude so that max is 0 dB.
  S1
  S1[S1 < 10^(-40/10)] <- 10^(-40/10)    # clip below -40 dB.
  S1[S1 > 10^(-3/10)] <- 10^(-3/10)      # clip above -3 dB.

  sx2=specgram(x2, n=fftn, Fs, window, overlap=window-step)
  sx2  # "S":spectrum; "f":frequency; "t":time
  S2 <- abs(sx2$S[2:(fftn*500/Fs),])   # magnitude in range 0<f<=500 Hz.
  S2 # 184 x 150
  S2 <- S2/max(S2)         # normalize magnitude so that max is 0 dB.
  S2
  S2[S2 < 10^(-40/10)] <- 10^(-40/10)    # clip below -40 dB.
  S2[S2 > 10^(-3/10)] <- 10^(-3/10)      # clip above -3 dB.

  library(fields)
  #tiff(file="Figure.tiff",width=1500,height=750)
  tiff(file=paste(inpName,".Spectrum.tiff",sep=""))#,width=1000,height=800) #onefile=TRUE,
  #op=par(mfrow=c(1,2))
  image.plot(t(20*log10(S1)),axes=T,
             legend.shrink=1,
             legend.width=0.5,
             #useRaster=T,
             col=rainbow(100,alpha=1),
             #col=topo.colors(100),
             main ="Spectrum Distribution",
             xlab='Frequency (0-500 Hz)',ylab='Time (1-111 ms)',
             legend.only=F)
  dev.off()

  tiff(file=paste(inpName,".Spectrum_Rand.tiff",sep=""))
  image.plot(t(20*log10(S2)), axes=T,
             legend.shrink=1,
             legend.width=0.5,
             col=rainbow(100,alpha=1),
             #useRaster=T,
             #col=topo.colors(100),
             main ="Spectrum Distribution (Random)",
             xlab='Frequency (0-500 Hz)',ylab='Time (1-111 ms)',
             legend.only=F)
  #par(op)
  dev.off()
}
