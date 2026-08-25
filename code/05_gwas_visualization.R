## Q11 Manhattan plot, QQ plot and lambda calculation
hdl.results <- read.table("hdl.assoc.linear", header = TRUE)
hdl.results.add <- subset(hdl.results, TEST == "ADD")

## Manhattan plot
pdf("MH.pdf")
plot(hdl.results.add$BP, -log10(hdl.results.add$P), col="blue")
dev.off()

## QQ plot
qqpval = function(x){
  x <- sort(-log10(x[x>0]))
  n <- length(x)
  pp <- ppoints(n)
  plot(-log10(rev(pp)), x, xlab="Expected", ylab="Observed")
  abline(0,1,lty=2, col="purple")
}

pdf("QQ.pdf")
qqpval(hdl.results.add$P)
dev.off()

## lambda calculation
chi2 <- qchisq(hdl.results.add$P, df=1, lower.tail=F) 	
g <- median(chi2, na.rm=TRUE)		
lambda <- round(g/qchisq(0.5, df=1), digits=5)
