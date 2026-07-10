# PySpark Phase 4A – Bucketing & Segmentation

## Overview

This project explores different techniques for customer segmentation using PySpark. Continuous spending values are transformed into meaningful customer segments such as Gold, Silver, and Bronze using multiple bucketing approaches.

## Objectives

- Calculate customer spending
- Perform customer segmentation
- Compare different bucketing techniques
- Understand business and technical segmentation

## Technologies Used

- Python
- PySpark
- Apache Spark MLlib
- Google Colab

## Dataset

- sales.csv

## Workflow

### Step 1

Read sales dataset.

### Step 2

Clean missing values.

### Step 3

Calculate total spending for each customer.

### Step 4

Perform customer segmentation.

## Bucketing Methods

### 1. Conditional Logic

Business-rule based segmentation using:

- Gold
- Silver
- Bronze

### 2. SQL CASE Statement

Implement segmentation using SQL CASE expressions.

### 3. Bucketizer (MLlib)

Perform segmentation using Spark MLlib Bucketizer.

### 4. Quantile-based Segmentation

Create customer groups based on spending distribution.

### 5. Window-based Ranking

Use percent_rank() to rank customers by spending.

## Tasks Completed

- Customer spending calculation
- Gold / Silver / Bronze segmentation
- Segment-wise customer count
- Quantile segmentation
- Bucketizer implementation
- Window ranking
- SQL and PySpark implementation for each method

## Key Concepts

- Bucketing
- Segmentation
- Conditional Logic
- SQL CASE
- Spark MLlib Bucketizer
- Quantiles
- Window Functions

## Learning Outcomes

- Customer segmentation
- Business analytics
- Ranking customers
- Comparing segmentation strategies
- SQL to PySpark conversion

## Project Structure

```
Phase-4A-Bucketing/
│── Phase4A_Bucketing.ipynb
│── datasets/
│── output/
└── README.md
```

## Author

Niharika
