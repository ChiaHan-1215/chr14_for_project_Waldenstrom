# - `ArchR` package has function to do that, code in biowulf.

```R

# Goal: Using ArchR to convert sample sc-ATAC to Bigwig and display in UCSC genome broswer
# Date: 10062025

library(dplyr)
library(ArchR)
# ArchR::installExtraPackages()

setwd('GSE296167_snATAC_track_convert_to_bigwig/')

addArchRThreads(threads = 4) 
addArchRGenome("hg38")

inputFiles <- list.files('.')
names(inputFiles) <- c("S1","S2","S3","S4")


# carte ArchR file 
ArrowFiles <- createArrowFiles(
  inputFiles = inputFiles,
  sampleNames = names(inputFiles),
  minTSS = 4, #Dont set this too high because you can always increase later
  minFrags = 1000, 
  addTileMat = TRUE,
  addGeneScoreMat = TRUE
)

#  Create an ArchRProject (choose an output folder)

proj <- ArchRProject(ArrowFiles, outputDirectory = "ArchROut", copyArrows = TRUE)

# Export one BigWig per Sample (pseudo-bulk coverage)
bw <- getGroupBW(
  ArchRProj = proj,
  groupBy   = "Sample",
  normMethod= "ReadsInTSS",     # recommended
  tileSize  = 100,              # bin size; smaller = smoother but larger files
  maxCells  = 1000              # subsample cells per group; increase if desired
)

# check, the outout will located in the work dictionary as folder
bw

```



