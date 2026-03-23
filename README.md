# BIOMI6300 Amplicon Project: MAL1/MAL2 Colorectal Cancer Microbiome

## Dataset

This project analyzes the MAL2 Malaysian colorectal cancer (CRC) tissue cohorts profiled by 16S rRNA amplicon sequencing in:

Drewes JL et al. 2017. High-resolution bacterial 16S rRNA gene profile meta-analysis and biofilm status reveal common colorectal cancer consortia. *npj Biofilms and Microbiomes* 3:34.  
Link: https://www.nature.com/articles/s41522-017-0040-3

Data source: MAL2 cohort 16S rRNA amplicon data (species-level profiles) and associated clinical/biofilm metadata.

## Scientific Question

How do polymicrobial biofilm status and tumor anatomical side (right vs left colon) shape the mucosa-associated bacterial community composition and key dysbiotic taxa in colorectal cancer tissues from the MAL1 and MAL2 cohorts?

## Hypotheses

1. **Community-level hypothesis (beta diversity)**  
   CRC samples that are biofilm-positive will have significantly different overall microbial community composition compared to biofilm-negative samples, with stronger separation for right-sided tumors.

2. **Taxon-level hypothesis (differential abundance)**  
   Biofilm-positive CRC tissues will be enriched for specific dysbiotic species (e.g., *Fusobacterium nucleatum*, *Bacteroides fragilis*, and other oral-origin taxa from HOMD) compared to biofilm-negative tissues, after controlling for tumor side and cohort.

3. **Spatial hypothesis (tumor side)**  
   Right-sided tumors will show higher prevalence of biofilms and a stronger association with oral/pathobiont-enriched consortia than left-sided tumors, reflected in both community structure and taxon-level enrichments.

## Project Overview

- Import MAL1/MAL2 16S rRNA OTU/ASV/species tables and metadata.
- Perform quality checks and filtering.
- Compute alpha and beta diversity metrics.
- Test associations between:
  - Biofilm status and community composition.
  - Tumor side and community composition.
  - Biofilm status/tumor side and specific taxa (differential abundance).
- Visualize results using ordinations (PCoA/NMDS), boxplots, and volcano/MA-style plots.
