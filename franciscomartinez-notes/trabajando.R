# Directories.
pkg = "franciscomartinez"
version = "1.0"
dirbasepkg = "/Users/francisco/Desktop/Bioinformatica/Bioinf_Estadistica/Paquete_franciscomartinez/" 
dirpkg = paste0(dirbasepkg,pkg)
dirvignettes = paste0(dirbasepkg,pkg,"-notes/vignettes/")
pkgtar = paste0(pkg,"_",version,".tar.gz")

# Package building.
pacman::p_load(devtools,Rcpp,pkgdown)
setwd(dirbasepkg)
devtools::document(pkg) # Generate documentation 'man'.
devtools::check(pkg) # Check possible errors.
                 
## Vignettes.
setwd("/Users/francisco/Desktop/Bioinformatica/Bioinf_Estadistica/Paquete_franciscomartinez/franciscomartinez/vignettes")
pacman::p_load(devtools,knitr,rmarkdown)
formatos=c("html_document","pdf_document")
render("T1_Microarray.Rmd",output_format=formatos)
render("T2_ExprDiferencial.Rmd",output_format=formatos)
render("T3_RNAseq.Rmd",output_format=formatos)
render("T4_Sobrerrepresentacion.Rmd",output_format=formatos)
render("T5_GeneSetAnalysis.Rmd",output_format=formatos)

# Generate html.
setwd(dirpkg) 
pkgdown::build_site() # Creates 'docs' directory.

# Build.
setwd(dirbasepkg)
system(paste0("R CMD build --resave-data ",pkg)) # --resave-data: argumento para comprimir un poco más el fichero de datos
# devtools::build(pkg) --> mejor construir con 'system' (comando de arriba)

# Install.
install.packages(paste0(pkg,"_",version,".tar.gz"),repos=NULL,source=TRUE)

# Load package
library(franciscomartinez)
