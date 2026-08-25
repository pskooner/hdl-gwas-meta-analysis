# hdl-gwas-meta-analysis
Genetic association analysis of HDL cholesterol using PLINK, R, Unix/Linux, regional association analysis, and meta-analysis.

## Key Visualizations

### GWAS Manhattan Plot

![GWAS Manhattan Plot](figures/manhattan_plot.png)

The Manhattan plot displays SNP-level associations with HDL cholesterol across chromosome 16. The strongest association signal was observed for rs247617.

### GWAS Q-Q Plot

![GWAS Q-Q Plot](figures/qq_plot.png)

The Q-Q plot compares observed and expected association p-values and was used to assess the distribution of test statistics.

### Regional Association Plot

![Regional Association Plot](figures/regional_association_plot.png)

Regional association analysis was performed within ±150 kb of the lead SNP rs247617, located in the HERPUD1–CETP region.

### Meta-Analysis Manhattan Plot

![Meta-Analysis Manhattan Plot](figures/meta_manhattan_plot.png)

The meta-analysis strengthened the association signal at rs247617 relative to the individual-study analysis.

### Meta-Analysis Q-Q Plot

![Meta-Analysis Q-Q Plot](figures/meta_qq_plot.png)

The Q-Q plot summarizes the distribution of association statistics following meta-analysis.
