head lab4_pheno_gwas.csv

awk -F, '{print $1, $1, $4}' lab4_pheno_gwas.csv | head

awk -F, '{print $1, $1, $4}' lab4_pheno_gwas.csv | sed -e '1d' | head

awk -F, '{print $1, $1, $4}' lab4_pheno_gwas.csv | sed -e '1d' > hdl.pheno

head hdl.pheno

awk -F, '{print $1, $1, $2, $3}' lab4_pheno_gwas.csv | sed 's/F/2/g' | sed 's/M/1/g' | sed -e '1d' > hdl.covar

head hdl.covar
