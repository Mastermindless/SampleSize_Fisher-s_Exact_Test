# Sample Size Calculation for Fisher’s Exact Test for Two Proportions

## Overview

This repository contains an R script designed to calculate the required sample size for conducting Fisher’s Exact Test for two proportions. The script leverages pilot study data to determine the effect size and then performs a power analysis to estimate the necessary sample size to achieve a specified power and significance level.

## Features

- **Fisher’s Exact Test**: Conducts Fisher’s Exact Test on pilot study data.
- **Effect Size Calculation**: Computes the effect size based on proportions from pilot studies.
- **Power Analysis**: Determines the sample size needed for specified power and significance levels.
- **Output**: Saves power analysis results and session information to text files.

## Requirements

- **R**: Ensure you have R installed on your system. You can download it from [CRAN](https://cran.r-project.org/).
- **pwr package**: This package is required for power analysis. You can install it using the instructions below.

## Installation

To install the required `pwr` package, run the following command in your R console:

```R
install.packages("pwr")
