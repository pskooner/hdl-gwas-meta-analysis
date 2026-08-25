## Q12 check meta-analysis results file ##
metal.results <- read.table("hdl_metal_results1.txt", header=T)
metal.results.sort <- metal.results[order(metal.results$P.value),]
head(metal.results.sort)

## Q13 meta-analysis MH plot and QQ plot, lambda calculation

lab4.map <- read.table("lab4.map", header=FALSE)
names(lab4.map) <- c("CHR", "SNP", "cM", "BP")
metal.results <- merge(lab4.map, metal.results, by.x="SNP", by.y="MarkerName", all.x=F, all.y=T)

pdf("MH_meta.pdf")
plot(metal.results$BP, -log10(metal.results$P.value), col="blue")
dev.off()

qqpval = function(x){
  x <- sort(-log10(x[x>0]))
  n <- length(x)
  pp <- ppoints(n)
  plot(-log10(rev(pp)), x, xlab="Expected", ylab="Observed")
  abline(0,1,lty=2, col="purple")
}

pdf("QQ_meta.pdf")
qqpval(metal.results$P.value)
dev.off()

## lambda calculation
chi2 <- qchisq(metal.results$P.value, df=1, lower.tail=F) 	
g <- median(chi2, na.rm=TRUE)		
lambda <- round(g/qchisq(0.5, df=1), digits=5)
