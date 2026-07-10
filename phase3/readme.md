# SQL to PySpark – Phase 3: ETL Pipeline

## Overview

This project demonstrates the implementation of an end-to-end ETL (Extract, Transform, Load) pipeline using PySpark. It focuses on reading data from multiple file formats, cleaning and transforming datasets, performing business analysis, and converting SQL queries into equivalent PySpark operations.

## Objectives

- Read and process CSV, JSON, and Parquet datasets
- Inspect schemas and validate data
- Handle missing values
- Filter invalid records
- Perform business analysis using SQL and PySpark
- Build a reusable ETL pipeline

## Technologies Used

- Python
- PySpark
- Apache Spark
- Google Colab

## Datasets

- customers.csv
- sales.csv
- products.json
- customers.parquet

## ETL Workflow

1. Extract
   - Read CSV, JSON, and Parquet files

2. Transform
   - Handle missing values
   - Filter invalid records
   - Join customer and sales datasets
   - Aggregate business metrics

3. Load
   - Display reports
   - Save the final report

## Business Exercises

### Exercise 1
Calculate daily sales from sales transactions.

### Exercise 2
Calculate city-wise revenue by joining customer and sales data.

### Exercise 3
Identify repeat customers with more than two orders.

### Exercise 4
Find the highest spending customer in each city.

### Exercise 5
Generate a final reporting table containing:
- Customer ID
- City
- Total Spend
- Order Count

## SQL to PySpark Conversion

Every business problem is solved using:

- SQL
- Equivalent PySpark DataFrame API

## Learning Outcomes

- Data ingestion using Spark
- Data cleaning techniques
- SQL to PySpark conversion
- Joins and aggregations
- Window functions
- Building reusable ETL workflows

## Project Structure

```
Phase-3-ETL/
│── Phase3_ETL.ipynb
│── datasets/
│── output/
└── README.md
```

## Author

Niharika
