# chr14_for_project_Waldenstrom

### Goal: extract Genotype files from CCLE, GTEx, CARD for finding rare variants for Waldenstrom project



the rare variants are located in chr14

```
RS_Number      Position (hg38_HC)     Allele Frequency
rs149482608    chr14:95525224 A=0.998, G=0.002
rs117972357    chr14:95577209 G=0.996, A=0.004
rs117410836    chr14:95585637 T=0.971, C=0.029
rs561799741    chr14:95763084 G=0.998, A=0.002
rs534710671    chr14:95845144 A=0.998, C=0.002
```


### files: 

T-drive location: `/DCEG/Branches/LTG/Prokunina/WaldenstromMacroglobulinemia`





### Code: 

- Extract BAM slice from CCLE using samtools in Terra.bio 



### Results:

- HiChIP/ChIP-seq data display on UCSC genome broswer

https://genome.ucsc.edu/s/gahanleeo/hg19_chr14_project_Waldenstrom

Link description: 

Source 1: The 3 cell line HiChIP track was downloaded from the Cell Genomics paper (https://www.sciencedirect.com/science/article/pii/S2666979X22001409?via%3Dihub). 
GEO: GSE188405
H3K27ac HiChIP and ATAC-seq tracks are downloaded from the GSE188405 with the file name "xxx.loops.csv.gz." and "xxx_merged.bed.gz" accordingly.
The file then formatted to into UCSC acceptable files.
Loop Color Details:
Loop colors represent count frequencies, with darker colors indicating higher interaction frequencies


Source 2: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE228246

ChIP seq source:
The ChiP-seq tracks of EBNA2, EBNA2, and EBNA3 were downloaded from the NCBI SRA (GSE47629 and GSE73887) and uploaded to the UCSC genome browser as custom tracks.



### Future direction:

- Search B cell lymphoma HiCHIP data, list link of interest:

- https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE136090


**sc-RNA/atac for Waldenstrom patient**

- https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE296167

- This dataset have some of interest dataset, trying to get bulked snATAC-seq and output as bigwig for display
