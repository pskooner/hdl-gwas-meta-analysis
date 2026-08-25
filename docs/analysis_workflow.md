# Analysis Workflow

## Overview

This project evaluates genetic associations with high-density lipoprotein (HDL) cholesterol using genotype data from chromosome 16.

The analysis was conducted using **PLINK, R, Unix/Linux, LocusZoom, and METAL** and included genotype quality control, phenotype and covariate preparation, SNP-level association testing, regional association analysis, visualization of association results, and genetic meta-analysis.

The dataset consisted of:

- **1,000 individuals**
- **1,940 SNPs**
- **Chromosome 16**
- **Phenotype:** HDL cholesterol

---

## Workflow

### 1. Data Inspection

The PLINK MAP and PED files were imported and inspected to determine the dimensions and structure of the genotype dataset.

The initial inspection confirmed:

- 1,940 SNPs
- 1,000 individuals
- All SNPs located on chromosome 16

**Script:** [`01_data_inspection.R`](../code/01_data_inspection.R)

---

### 2. Genotype Quality Control

Genotype quality control was conducted using PLINK and Unix/Linux commands.

The following measures were evaluated:

- Individual genotype missingness
- SNP-level genotype missingness
- Minor allele frequency (MAF)
- Hardy-Weinberg equilibrium (HWE)

Key findings included:

- Maximum individual missingness: **3.608%**
- SNP with highest missingness: **rs8044753 (13.5%)**
- SNPs with missingness >10%: **5**
- Minimum non-zero MAF: **0.0005**
- SNPs failing HWE at p ≤ 0.0001: **7**

**Script:** [`02_genotype_qc.sh`](../code/02_genotype_qc.sh)

---

### 3. Phenotype and Covariate Preparation

Phenotype and covariate files were prepared for PLINK association analysis.

The phenotype file contained:

- Family ID (FID)
- Individual ID (IID)
- HDL cholesterol

The covariate file contained:

- Family ID (FID)
- Individual ID (IID)
- Gender
- Age

Gender was coded as:

- Male = 1
- Female = 2

**Script:** [`03_prepare_phenotype_covariates.sh`](../code/03_prepare_phenotype_covariates.sh)

---

### 4. Genetic Association Analysis

SNP-level association testing was performed using linear regression in PLINK with HDL cholesterol as the quantitative phenotype.

Age and gender were included as covariates.

The strongest association was observed for:

- **SNP:** rs247617
- **Chromosome:** 16
- **Position:** 56,956,804 bp
- **P-value:** 2.92 × 10⁻⁷

**Script:** [`04_gwas_analysis.sh`](../code/04_gwas_analysis.sh)

---

### 5. GWAS Visualization and Genomic Inflation

Association results were visualized using:

- Manhattan plot
- Q-Q plot

The genomic inflation factor (λ) was also calculated to evaluate the distribution of association test statistics.

For the individual association analysis:

**λ = 0.82182**

**Script:** [`05_gwas_visualization.R`](../code/05_gwas_visualization.R)

**Figures:**

- [`manhattan_plot.png`](../figures/manhattan_plot.png)
- [`qq_plot.png`](../figures/qq_plot.png)

---

### 6. Regional Association Analysis

A regional association analysis was performed around the strongest association signal, **rs247617**.

A window of **±150 kb** surrounding the lead SNP was examined.

The regional analysis contained:

- **85 SNPs**
- **8 genes/transcripts**

Genes and transcripts within the region included:

- NUP93
- MIR138-2
- MIR6863
- SLC12A3
- HERPUD1
- CETP
- NLRC5
- CPNE2

The lead SNP was located in the intergenic region between **HERPUD1** and **CETP**.

**Script:** [`06_regional_analysis.sh`](../code/06_regional_analysis.sh)

**Figure:**

[`regional_association_plot.png`](../figures/regional_association_plot.png)

---

### 7. Meta-Analysis Preparation

Association results were prepared for genetic meta-analysis.

The PLINK association results were combined with allele-frequency information and formatted for analysis using METAL.

Variables prepared for meta-analysis included:

- SNP
- Chromosome
- Alleles
- Allele frequency
- Sample size
- Effect estimate
- Standard error
- P-value

**Script:** [`07_prepare_meta_analysis.R`](../code/07_prepare_meta_analysis.R)

---

### 8. Genetic Meta-Analysis

Association results from multiple studies were combined using METAL.

Following meta-analysis, **rs247617 remained the strongest association signal**.

- **Lead SNP:** rs247617
- **Meta-analysis p-value:** 2.827 × 10⁻¹³
- **HetISq:** 0
- **HetChiSq:** 0
- **HetDf:** 1
- **HetPVal:** approximately 1

The association signal was stronger following meta-analysis, while the heterogeneity statistics indicated little evidence of heterogeneity between studies.

---

### 9. Meta-Analysis Visualization

The meta-analysis results were evaluated using:

- Manhattan plot
- Q-Q plot
- Genomic inflation factor

The genomic inflation factor following meta-analysis was:

**λ = 1.6453**

**Script:** [`08_meta_analysis_visualization.R`](../code/08_meta_analysis_visualization.R)

**Figures:**

- [`meta_manhattan_plot.png`](../figures/meta_manhattan_plot.png)
- [`meta_qq_plot.png`](../figures/meta_qq_plot.png)

---

## Analysis Pipeline

The overall analytical workflow was:

**Genotype Data**  
↓  
**Data Inspection**  
↓  
**Genotype Quality Control**  
↓  
**Phenotype & Covariate Preparation**  
↓  
**PLINK Linear Association Analysis**  
↓  
**Manhattan & Q-Q Plots**  
↓  
**Lead SNP Identification**  
↓  
**Regional Association Analysis**  
↓  
**Meta-Analysis Preparation**  
↓  
**METAL Meta-Analysis**  
↓  
**Meta-Analysis Manhattan & Q-Q Plots**

---

## Software and Tools

- **PLINK** – genotype quality control and genetic association testing
- **R** – data processing, visualization, and statistical diagnostics
- **Unix/Linux** – command-line data processing and file preparation
- **LocusZoom** – regional association visualization
- **METAL** – genetic association meta-analysis
