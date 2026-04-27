# NOtes from office hours today: April 27, 2026 
# hillR package: hill_taxa() - will also instantaneously calculate hill numbers




load("/local/workdir/mls528/CRCBacterialConsortia_AmpliconProject/data/03_PreProcessing/preprocessed_phyloseq.RData")


pacman::p_load(tidyverse, phyloseq, patchwork, vegan, 
               install = FALSE)

# Load functions.R
#source("code/functions.R")

# Inspect the data again
#View(data.frame(sample_sums(preprocessed_physeq)))
# Inspect the data again
min(data.frame(sample_sums(preprocessed_physeq)))

# Scale the reads 
scaled_physeq <- 
  preprocessed_physeq %>%
  scale_reads(round = "matround")

# Inspect the output 
scaled_physeq


# Calculate ASVs
ASV_df <- 
  scaled_physeq %>%
  # Prune out ASVs that have fewer than ~1%! 
  ## LOOK AT HOW MANY ARE REMOVED! We scaled to 68274 reads! 
  prune_taxa(taxa_sums(.) >= 682, .) %>%
  # agglomerate at the phylum level 
  tax_glom(taxrank = "ASV") %>% 
  # Transform counts to relative abundance 
  transform_sample_counts(function (x) {x/sum(x)}) %>%
  # Melt to a long format 
  psmelt() 


# Make a list of phyla the top 10 ASVs in the Dataset
top15_ASVs <- 
  ASV_df %>%
  group_by(ASV) %>%
  summarize(mean_PercAbund = mean(Abundance)) %>%
  arrange(-mean_PercAbund) %>%
  head(n = 25) %>%
  pull(ASV)

# show it 
top15_ASVs





head(ASV_df)

# Look at Fusos 
ASV_df %>%
  #dplyr::filter(ASV %in% top15_ASVs) %>%
  dplyr::filter(Genus == "Porphyromonas") %>%
  ggplot(aes(x = ethnicity, y = log10(Abundance), fill = Phylum, color = Phylum)) + 
  facet_wrap(ASV~Genus, scales = "free", nrow = 3) + 
  # add the stacked bar 
  geom_jitter() +
  geom_boxplot(outlier.shape = NA, alpha = 0.5) + 
  # change the colors to be our selected colors 
  scale_fill_manual(values = phylum_colors) + 
  scale_color_manual(values = phylum_colors) + 
  theme_bw() + 
  theme(legend.position = "bottom",
        axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1),
        axis.title.x = element_blank())

# GENUS LEVEL 
genus_df <- 
  scaled_physeq %>%
  # agglomerate at the phylum level 
  tax_glom(taxrank = "Genus") %>% 
  # Transform counts to relative abundance 
  transform_sample_counts(function (x) {x/sum(x)}) %>%
  # Melt to a long format 
  psmelt()



genus_df %>%
  dplyr::filter(Genus == "Fusobacterium") %>%
  ggplot(aes(x = ethnicity, y = Abundance, fill = Phylum, color = Phylum)) + 
  facet_wrap(.~Genus, scales = "free", nrow = 3) + 
  # add the stacked bar 
  geom_jitter() +
  geom_boxplot(outlier.shape = NA, alpha = 0.5) + 
  # change the colors to be our selected colors 
  scale_fill_manual(values = phylum_colors) + 
  scale_color_manual(values = phylum_colors) + 
  theme_bw() + 
  theme(legend.position = "bottom",
        axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1),
        axis.title.x = element_blank())


