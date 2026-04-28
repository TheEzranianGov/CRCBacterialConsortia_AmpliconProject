# Setting colors for stations 
############# SHAPES AND COLORS 
###### SHAPES 
date_shapes <- c(
  "6/2/21" = 15, 
  "6/15/21" = 16, 
  "10/5/21" = 17)

date1_shapes <- c(
  "2021-06-02" = 15, 
  "2021-06-15" = 16, 
  "2021-10-05" = 17)

depth_cat_shapes <- c(
  "surface" = 18, 
  "bottom" = 20)

fraction_shapes <- c(
  "Particle" = 23, 
  "Free" = 21,
  "Whole" = 22,
  "Control" = 24)

salinity_shapes <- c(
  "Very Low" = 21,   # 
  "Low"      = 22,   # 
  "Mid"      = 23,   #  
  "High"     = 24)    #  

####### COLORS 
# Update colors for salinity groups
salinity_colors <- c(
  "Very Low" = "#A8E6CE",   # light mint
  "Low"      = "#56C1D3",   # aqua
  "Mid"      = "#1E90FF",   # dodger blue
  "High"     = "#08306B")    # deep navy

crc_colors <- c(
  "Normal" = "#BA260B",   
  "CRC"    = "#145BCC")    


station_colors <- c(
  "Shipping Channel" = "#3F007D",  # Deep purple
  "Aransas Bay"      = "#5E2D91",  # Vivid indigo
  "Mesquite Bay"     = "#8831A4",  # Strong purple-magenta
  "Copano East"      = "#B63689",  # Bright fuchsia
  "Copano West"      = "#D72576")   # Bold magenta

fraction_colors <- c(
  "Particle" = "firebrick3", 
  "Free" = "goldenrod1", 
  "Whole" = "darkorange2",
  "Control" = "grey")

# Set the phylum colors
phylum_colors <- c(
  Acidobacteriota = "navy", 
  Actinomycetota = "darkslategray2", 
  Armatimonadota = "deeppink1",
  Alphaproteobacteria = "plum2", 
  Bacteroidota = "gold", 
  Betaproteobacteria = "plum1", 
  Bdellovibrionota = "red1",
  Chloroflexota="black", 
  "Candidatus Kapabacteria" = "firebrick",
  Cyanobacteriota = "limegreen",
  Deltaproteobacteria = "grey", 
  Desulfobacterota="magenta",
  Firmicutes = "#3E9B96",
  Gammaproteobacteria = "greenyellow",
  "Marinimicrobia (SAR406 clade)" = "yellow",
  Myxococcota = "#B5D6AA",
  Pseudomonadota = "royalblue",
  Planctomycetota = "darkorange", 
  "SAR324 clade(Marine group B)" = "olivedrab",
  Proteobacteria_unclassified = "greenyellow",
  Thermoplasmatota = "green",
  Thermoproteota = "palevioletred1",
  Verrucomicrobiota = "darkorchid1",
  Other = "grey")




phylum_gus_colors <- c(
  Acidobacteriota = "navy", 
  Actinomycetota = "darkslategray2", 
  Armatimonadota = "deeppink1",
  Alphaproteobacteria = "plum2", 
  Bacteroidota = "gold", 
  Betaproteobacteria = "plum1", 
  Bdellovibrionota = "red1",
  Chloroflexota="black", 
  Crenarchaeota = "yellow",
  Cyanobacteriota = "limegreen",
  Deltaproteobacteria = "grey", 
  Desulfobacterota="magenta",
  Firmicutes = "#3E9B96",
  Gammaproteobacteria = "greenyellow",
  Patescibacteria = "yellow",
  Myxococcota = "#B5D6AA",
  #Nitrospirota = "palevioletred1",
  Pseudomonadota = "palevioletred1",
  Planctomycetota = "darkorange", 
  "SAR324 clade(Marine group B)" = "olivedrab",
  Gemmatimonadota = "greenyellow",
  Thermodesulfobacteriota = "royalblue",
  Verrucomicrobiota = "darkorchid1",
  Other = "grey",
  Rare = "grey")