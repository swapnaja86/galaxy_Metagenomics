setwd("~/Swapnaja/Correlation data")
packages <-c("ade4","GUniFrac","phangorn","cluster",
"fpc","compare","plotrix","PerformanceAnalytics","reshape","ggplot2","gridExtra","grid","ggrepel",
"gtable","Matrix","cowplot", "Hmisc","corrplot","muStat")
InsPack <- function(pack)
{
if ((pack %in% installed.packages()) == FALSE) {
install.packages(pack,repos = "http://cloud.r-project.org/")
}
}
lapply(packages, InsPack)
lib <- lapply(packages, require, character.only = TRUE)
not_installed <- which(lib==FALSE)
missing_packages <- lapply(not_installed, function(x) print(packages[x]))
sink(file = "missing_packages.txt")
cat ("***************************************","\n")
cat ("Please install following packages manually","\n")
cat (as.character(missing_packages))
sink()
savehistory("~/Swapnaja/Packages/install.packages.R")
