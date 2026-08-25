plink --noweb --file lab4clean --pheno hdl.pheno --covar hdl.covar --linear --ci 0.95 --out hdl

head hdl.assoc.linear

grep ADD hdl.assoc.linear | sort -g -k12 | head

grep rs247617 lab4.map
