# Results

This directory summarizes the principal findings from the HDL cholesterol genetic association and meta-analysis workflow.

## Dataset

- 1,000 individuals
- 1,940 SNPs
- Chromosome 16

## Genotype Quality Control

- Maximum individual missingness: 3.608%
- SNP with highest missingness: rs8044753 (13.5%)
- SNPs with missingness >10%: 5
- Minimum non-zero minor allele frequency: 0.0005
- SNPs failing Hardy-Weinberg equilibrium at p ≤ 0.0001: 7

## GWAS Results

The strongest association with HDL cholesterol was observed for:

- **Lead SNP:** rs247617
- **Chromosome:** 16
- **Position:** 56,956,804 bp
- **P-value:** 2.92 × 10⁻⁷
- **Genomic region:** HERPUD1–CETP

The genomic inflation factor for the individual association analysis was:

- **λ = 0.82182**

## Regional Association Analysis

A ±150 kb region surrounding rs247617 was examined.

- **Number of SNPs:** 85
- **Number of genes/transcripts:** 8

Genes/transcripts within the region included:

- NUP93
- MIR138-2
- MIR6863
- SLC12A3
- HERPUD1
- CETP
- NLRC5
- CPNE2

## Meta-Analysis Results

Following meta-analysis, rs247617 remained the strongest association signal.

- **Lead SNP:** rs247617
- **Meta-analysis p-value:** 2.827 × 10⁻¹³
- **HetISq:** 0
- **HetChiSq:** 0
- **HetDf:** 1
- **HetPVal:** approximately 1

The association signal was stronger following meta-analysis, with little evidence of heterogeneity between studies.

The genomic inflation factor following meta-analysis was:

- **λ = 1.6453**

## Figures

Associated visualizations are available in the [`figures/`](../figures/) directory.
