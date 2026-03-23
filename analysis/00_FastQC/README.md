# Visualizing Fastq Quality with FastQC and MultiQC


## 1. Symbolic Links: An efficient way to organize data without duplicating it. 
```
mkdir Biodiversity_Salinity_16S/
cd Biodiversity_Salinity_16S/

# Set up place for the data to go
mkdir data
cd data
mkdir 00_raw_gzipped_fastqs
cd 00_raw_gzipped_fastqs

# Now, let's run a for loop to symbolically link the data! 
for FILE in `ls /workdir/in_class_data/raw_gzipped_seqs/*.fastq.gz`
  do
  ln -s $FILE /workdir/<your_netID>/Biodiversity_Salinity_16S/data/00_raw_gzipped_fastqs/
  done

## Change directories back to main folder Biodiversity_Salinity_16S/
cd ../../
```

##  2. Running FastQC & MultiQC: Checking the quality of raw Illumina Reads 
```
# Set up place for FASTQC analyses to go in main Biodiversity_Salinity_16S  folder with the parent folder
mkdir -p analysis/00_FastQC/fastqc_reports/
cd analysis/00_FastQC/

# Create README
touch README.md

# Copy the code that you're running into the README.md

# LOAD FASTQC
# https://biohpc.cornell.edu/lab/userguide.aspx?a=software
# Full path: /programs/FastQC-0.12.1/fastqc 
export PYTHONPATH=/programs/multiqc-1.31/lib64/python3.9/site-packages:/programs/multiqc-1.31/lib/python3.9/site-packages
export PATH=/programs/multiqc-1.31/bin:$PATH

# You can run the following command from anywhere!
# before you run, replace <your_netID> with your actual netID
fastqc /workdir/<your_netID>/Biodiversity_Salinity_16S/data/00_raw_gzipped_fastqs/*.fastq.gz \
    --threads 5 \
    -o /workdir/<your_netID>/Biodiversity_Salinity_16S/analysis/00_FastQC/fastqc_reports/


## LOAD MULTI QC
export PYTHONPATH=/programs/multiqc-1.31/lib64/python3.9/site-packages:/programs/multiqc-1.31/lib/python3.9/site-packages
export PATH=/programs/multiqc-1.31/bin:$PATH

# Move into 00_FastQC folder 
cd analysis/00_FastQCls

## Run Multiqc run this in your Biodiversity_Salinity_16S/analysis/00_FastQC folder 
multiqc fastqc_reports/ -o multiqc_results/

### Write some group notes 
```
