# Apache Spark Basics Assignment

## Objective

Learn the basics of Apache Spark and use it to clean, transform, and analyze data using DataFrames.

---

## Tools & Technologies Used

- Apache Spark
- PySpark
- Python
- Jupyter Notebook
- GitHub

---

## Dataset

The Superstore dataset was provided in CSV format and loaded into Spark DataFrames for analysis.

---

## Steps Performed

### 1. Load Data
- Created a Spark Session.
- Loaded the Superstore CSV file into a Spark DataFrame.
- Viewed sample records using `show()`.
- Examined column names and data types using `printSchema()`.

### 2. Clean Data
- Removed duplicate records using `dropDuplicates()`.
- Checked for missing values.
- Removed rows containing null values using `dropna()`.
- Checked for inconsistent data such as negative profit values.
- Removed records where Profit was less than 0.

### 3. Filter Data
- Filtered records based on business requirements.
- Selected orders with Sales greater than 500.

### 4. Apply Transformations
- Renamed columns for better readability.
- Performed DataFrame transformations using Spark functions.

### 5. Perform Aggregation
- Calculated total number of records.
- Calculated average sales and profit.
- Found minimum and maximum values.
- Grouped data by Region.
- Computed Total Sales and Average Profit for each Region.

---

## What I Observed

- Apache Spark processes large datasets efficiently using distributed computing.
- DataFrames make data analysis simpler and more structured.
- Removing duplicate and null records improves data quality.
- Some records had negative profit values, indicating business losses.
- The West and East regions generated higher sales compared to other regions.
- Aggregation functions such as `sum()`, `avg()`, and `count()` provide useful business insights.
- GroupBy operations help analyze performance across different categories and regions.

---

## Output Generated

- Cleaned Dataset
- Filtered Dataset
- Aggregated Results by Region
- Spark Analysis Output

---

## Folder Structure

Assignment 5/
│
├── data5/
│   └── Superstore.csv
│
├── notebook5/
│   └── spark_basics.ipynb
│
├── output5/
│   └── cleaned_superstore.csv
│
└── README.md

---

## Conclusion

This assignment demonstrated the basic workflow of Apache Spark, including data loading, cleaning, filtering, transformation, and aggregation using DataFrames. The project provided practical experience with Spark operations and data analysis techniques.