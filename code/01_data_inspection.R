#### Part 1 GWAS ####
map <- read.table("lab4.map", header=FALSE)
geno <- read.table("lab4.ped", header=FALSE)
table(map$V1)
dim(map)
dim(geno)
