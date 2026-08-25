# Q2 Individual missingness
plink --noweb --file lab4 --missing --out lab4_miss

head lab4_miss.imiss

wc lab4_miss.imiss

sort -n -r -k6 lab4_miss.imiss | head


# Q3 SNP missingness
head lab4_miss.lmiss

wc lab4_miss.lmiss

sort -n -r -k5 lab4_miss.lmiss | head


# Q4 Minor allele frequency
plink --noweb --file lab4 --freq --out lab4_frq

head lab4_frq.frq

sort -n -k5 lab4_frq.frq | head

sort -n -k5 lab4_frq.frq | awk '{if($5 > 0) print}' | head


# Q4 Hardy-Weinberg equilibrium
plink --noweb --file lab4 --hardy --out lab4_hardy

head lab4_hardy.hwe

grep ALL lab4_hardy.hwe | head

grep ALL lab4_hardy.hwe | sort -n -k9 | head

grep ALL lab4_hardy.hwe | awk '{if (NF == 9) print}' | sort -n -k9 | head
