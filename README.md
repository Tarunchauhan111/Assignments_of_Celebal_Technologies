# E-Commerce Data Cleaning Pipeline

## 📌 Objective

Perform data exploration and cleaning using Pandas on an e-commerce dataset.

---

## 🚀 Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook

---

## 📂 Project Structure

```text
assignment/
│
├── data/
│   └── Combined_dataset.csv
│
├── output/
│   └── cleaned_products.csv
│
├── notebooks/
│   └── data_cleaning.ipynb
│
├── README.md
└── requirements.txt
```

---

## 🔍 Tasks Performed

1. Loaded CSV dataset into Pandas DataFrame
2. Explored dataset structure
3. Handled missing values
4. Filtered rows and selected columns
5. Removed duplicate records
6. Created derived column:
   total_amount = final_price * quantity
7. Saved cleaned dataset as a new CSV file

---

## 📊 Sample Code

```python
import pandas as pd
```
```python
df = pd.read_csv("C:\\Users\\hp\\OneDrive\\Desktop\\Assignment\\data\\Combined_dataset.csv")
print("Dataset Loaded Successfully")
```
```python
df.head()
df.dtypes
```
```python
df_copy = df.copy()
df_copy.isnull().sum()
df_copy["seller_name"].fillna("Unknown Seller")
```
```python
selected_df = df_copy[["product_id","title","rating","final_price","category"]]
selected_df.head()
```
```python
(df_copy.duplicated().sum())
```
```python
df_copy["total_amount"] = df_copy["final_price"] * df_copy["quantity"]
```
```python
df_copy.to_csv("C:\\Users\\hp\\OneDrive\\Desktop\\Assignment\\output\\cleaned_products.csv", index=False)
print("Cleaned Dataset Saved Successfully")
```
---

## ▶️ How to Run Project

Install dependencies:

```bash
pip install -r requirements.txt
```

Run Jupyter Notebook:

```bash
jupyter notebook
```

---

## 📁 Output Files

- Cleaned CSV dataset
- Jupyter Notebook
- Summary report

---

## 🎯 Learning Outcomes

- Data Cleaning
- Data Exploration
- Pandas Operations
- ETL Basics
- Git & GitHub Workflow