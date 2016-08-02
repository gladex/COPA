# COPAR
## [Current Version Is For Submission Review Purpose, Thanks!]
ChIP-seq Optimal Peak AnalyzeR (COPAR), a user-friendly R package to investigate, quantify and visualize the optimal peak alignment and inherent genomic features using ChIP-seq data from NGS experiments. It contains five main functions, i.e.

1. **copar.Aligner**:  the function is to detect the optimal peak candiate from the raw ChIP-seq input data (in BED format mapped using Bowtie or other tools);
2. **copar.Miner**: the function is to identify the optimal peak candiate and feature extraction analysis for the raw ChIP-seq input data (in BED format);
3. **copar.optiPN**: the function is to find the optimal peak count candiate and corresponding statistically meaningful FDR (e.g. <= 0.05);
4. **copar.SigPattern**: this function will analyze the signal pattern of the detected peak count candidate list. Together it will generate a heatmap plot (TIFF format) for the randomized sequence of the detected peak count candiate list;
5. **sigProcess**: COPAR singal process function.

ChIP-seq datasets used as study cases in this manual:

1. SRR399019, Reference [1];
2. ERR022052, Reference [2];
3. SRR015350, Reference [3].

**References:**

1. Tang, B., et al., Hierarchical modularity in ERa transcriptional network is associated with distinct functions and implicates clinical outcomes. NPG Scientific Reports, 2012. 2.
2. Hurtado, A., et al., FOXA1 is a key determinant of estrogen receptor function and endocrine response. Nat Genet, 2011. 43(1): p. 27-33.
3. Welboren, W.J., et al., ChIP-Seq of ERa and RNA polymerase II defines genes differentially responding to ligands. The EMBO Journal, 2009. 28(10): p. 1418-1428.

Contact: BHT <bh.tang@outlook.com>

Last update: July 31, 2016
