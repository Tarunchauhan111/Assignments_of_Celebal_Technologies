# Spark Assignment

## Overview

This assignment demonstrates the basic concepts of Apache Spark using PySpark. The objective is to understand Spark architecture, perform data processing on a real-world dataset, apply transformations and actions, build a simple data pipeline, and save the processed data.

The dataset used in this assignment contains information about students' academic performance and AI tool usage.

---
## Objectives

- Understand Apache Spark architecture.
- Read data from CSV and Parquet files.
- Perform data filtering and selection.
- Apply DataFrame transformations.
- Rename and cast columns.
- Create new calculated columns.
- Handle missing (null) values.
- Perform aggregation using groupBy(), count(), and avg().
- Build a simple Spark data pipeline.
- Save the processed dataset.

---

## Technologies Used

- Python
- Apache Spark (PySpark)
- Jupyter Notebook

---

## Dataset

AI Student Impact Dataset

The dataset contains information such as:

- Student ID
- Major Category
- Pre Semester GPA
- Post Semester GPA
- Weekly GenAI Hours
- Traditional Study Hours
- Skill Retention Score
- Burnout Risk Level
- Anxiety Level During Exams

---

## Tasks Performed

### 1. Read CSV File

Loaded the dataset into a Spark DataFrame.

### 2. Data Exploration

- Displayed the schema
- Displayed sample records
- Selected required columns

### 3. Filtering

Filtered records based on different conditions.

### 4. Aggregation

Performed:

- groupBy()
- count()
- avg()

to analyze the dataset.

### 5. Column Operations

- Renamed columns
- Casted data types
- Created new calculated columns

Example:

- GPA Improvement

### 6. Null Handling

- Checked for missing values
- Removed rows containing null values using dropna()

### 7. Data Pipeline

Created a simple ETL pipeline:
```
Read CSV
      ↓
Transform Data
      ↓
Filter Records
      ↓
Save as Parquet
      ↓
Read Parquet
      ↓
Handle Null Values
      ↓
Create New Column
      ↓
Save Final Output
```

### 8. Output

Export processed data into:

- CSV
- Parquet

Parquet is preferred because it:

- Uses columnar storage
- Compresses data efficiently
- Reads only required columns
- Improves query performance


---

## Learning Outcomes

After completing this assignment, I learned:

- Spark DataFrame operations
- Data filtering
- Aggregation functions
- Column transformations
- Data type casting
- Null value handling
- Building a basic Spark ETL pipeline
- Reading and writing different file formats

---

## Project Structure

```text
Assignment 6
│
├── data6/
│   └── dataset.csv
│
├── notebook6/
│   └── spark.ipynb
│
├── output5/
│   ├── csv_output/
│   │   └── csv file
│   │
│   └── output_parquet/
│       └── parquet file
│
└── README.md
```
---

## Conclusion

This assignment helped me understand the fundamentals of Apache Spark and PySpark. I gained hands-on experience with DataFrame operations, transformations, aggregations, null handling, and building a simple end-to-end data processing pipeline.