# Chromosome 14 Analysis for the Waldenstrom Project

## Project goal

The goal is to extract genotype data from CCLE, GTEx, and CARD to investigate candidate rare variants on chromosome 14 for the Waldenstrom macroglobulinemia project.

## Variants of interest

| rsID | Position (hg38_HC) | Allele frequencies |
|---|---|---|
| rs149482608 | chr14:95525224 | A = 0.998, G = 0.002 |
| rs117972357 | chr14:95577209 | G = 0.996, A = 0.004 |
| rs117410836 | chr14:95585637 | T = 0.971, C = 0.029 |
| rs561799741 | chr14:95763084 | G = 0.998, A = 0.002 |
| rs534710671 | chr14:95845144 | A = 0.998, C = 0.002 |

## Project location

The project folder is located on the T-drive:

`/DCEG/Branches/LTG/Prokunina/WaldenstromMacroglobulinemia`

## Code and analysis

We created a UCSC Genome Browser session to visualize the chromosome 14 variants alongside gene annotations, HiChIP loops, ATAC-seq regions, and EBNA ChIP-seq tracks. This integrated view supports exploration of the variants and their surrounding regulatory context.

## Results and visualization

[View the chromosome 14 Waldenstrom project session in the UCSC Genome Browser](https://genome.ucsc.edu/cgi-bin/hgTracks?db=hg19&lastVirtModeType=default&lastVirtModeExtraState=&virtModeType=default&virtMode=0&nonVirtPosition=&position=chr14%3A95938865%2D96365500&hgsid=4200191159_qGq30zvkYUHX0nJYLL75EAYOfPcb)

- **Genome assembly:** GRCh37/hg19
- **Displayed region:** chr14:95,938,865–96,365,500
- **Included tracks:** 5 SNPs annotations, gene annotations, HiChIP loops, ATAC-seq regions, and EBNA ChIP-seq tracks

### Source 1. human lymphoma cell lines HiChIP: GSE228246

HiChIP data for `CUTLL1`, `DOHH2`, and `REC-1` were obtained from [GSE228246](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE228246).

FASTQ files were downloaded, replicates were combined, and the data were processed using HiC-Pro and FitChIP. The resulting loop files were prepared for visualization in the UCSC Genome Browser.

**Loop-file location on the T-drive:**

`/DCEG/Branches/LTG/Prokunina/HiChIP_ChIPseq_ATACseq_files/lymphoma_cell_GSE228246_hg19`


### Source 2. HiChIP and ATAC-seq: GSE188405

The `GM12878`, `Pancreas`, `COLO`, and `WM_SCR` HiChIP and ATAC-seq tracks were obtained from the dataset associated with this [Cell Genomics paper](https://www.sciencedirect.com/science/article/pii/S2666979X22001409?via%3Dihub).

- **Data source:** [GSE188405](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE188405)
- **H3K27ac HiChIP files:** `xxx.loops.csv.gz`
- **ATAC-seq files:** `xxx_merged.bed.gz`

The downloaded files were converted into formats compatible with the UCSC Genome Browser.

**File location on the T-drive:**

`/DCEG/Branches/LTG/Prokunina/HiChIP_ChIPseq_ATACseq_files/primary_tissue_cellline_GSE`

**Cell-line note:** According to the [GEO sample description](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM5680738), `WM_SCR` refers to the human malignant melanoma cell line `WM-266-4`.

### Source 3. EBNA ChIP-seq

ChIP-seq tracks for EBNA1, EBNA2, and EBNA3 were obtained from the following published datasets and uploaded to the UCSC Genome Browser as custom tracks.

#### EBNA2 and EBNA3: GSE47629

[GSE47629](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE47629) contains EBNA2 and EBNA3 ChIP-seq experiments and an input DNA control from the Mutu III Burkitt lymphoma cell line:

- **GSM1153764:** Input DNA
- **GSM1153765:** EBNA2 ChIP-seq
- **GSM1153766:** EBNA3 ChIP-seq, using an antibody that recognizes EBNA3A, EBNA3B, and EBNA3C

**Associated publication:**

McClellan MJ et al. (2013). [Modulation of Enhancer Looping and Differential Gene Targeting by Epstein-Barr Virus Transcription Factors Directs Cellular Reprogramming](https://doi.org/10.1371/journal.ppat.1003636). *PLOS Pathogens*, 9(9), e1003636.

#### EBNA1: GSE73887

[GSE73887](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE73887) contains EBNA1 ChIP-seq and corresponding IgG controls in Raji, Mutu I, LCL, and C666-1 cells. The series also includes RNA-seq experiments examining the effects of EBNA1 knockdown in LCLs.

**Associated publication:**

Tempera I et al. (2016). [Identification of MEF2B, EBF1, and IL6R as Direct Gene Targets of Epstein-Barr Virus (EBV) Nuclear Antigen 1 Critical for EBV-Infected B-Lymphocyte Survival](https://doi.org/10.1128/JVI.02318-15). *Journal of Virology*, 90(1), 345–355.

**File location on the L-drive:**

`/LTG_02/Prokunina Lab/Paper Files/Completed/2025 Burkitt GWAS_Leukemia/Raw data/ChiaHan/Public_EBV_binding_ChIP`

### Loop colors

Loop colors represent interaction counts. Darker colors indicate higher interaction frequencies.

## Future directions

### Additional B-cell lymphoma ChIPseq data

Review additional B-cell lymphoma HiChIP datasets for inclusion in the analysis.

- **Dataset of interest:** [GSE136090](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE136090)

### Single-cell RNA-seq and ATAC-seq data from Waldenstrom patients

Explore [GSE296167](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE296167) for relevant single-cell RNA-seq and ATAC-seq data.

Planned steps:

1. Identify relevant samples and available snATAC-seq files.
2. Aggregate snATAC-seq data to generate signal tracks.
3. Export the tracks as bigWig files for visualization in the UCSC Genome Browser.
