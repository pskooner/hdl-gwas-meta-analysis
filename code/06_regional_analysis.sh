grep ADD hdl.assoc.linear | sort -g -k12 | head

grep rs247617 lab4.map

grep ADD hdl.assoc.linear | awk '{if ($3 >= 56956804-150000 && $3 <= 56956804+150000) print $2, $12}' | sed -e '1i SNP Pval' > hdl.region

head hdl.region

wc hdl.region
