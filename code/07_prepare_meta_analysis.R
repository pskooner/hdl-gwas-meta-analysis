## Q12 prepare meta-analysis data ##
hdl.results <- read.table("hdl.assoc.linear", header = TRUE)
hdl.results.add <- subset(hdl.results, TEST == "ADD")
hdl.results.add <- hdl.results.add[,c("SNP", "BP", "NMISS","BETA", "SE", "P")]
lab4.map <- read.table("lab4_frq.frq", header=TRUE)
hdl.results.add <- merge(lab4.map, hdl.results.add, by="SNP", all.x=F, all.y=T)
write.table(hdl.results.add, file="hdl_metal_file1.txt", row.names=F, col.names=T, sep=" ", quote=F)

## follow procedure to generate metal file ##
