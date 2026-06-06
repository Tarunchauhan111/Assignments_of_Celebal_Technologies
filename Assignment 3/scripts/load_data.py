import pandas as pd
import sqlite3

# Read CSV
df = pd.read_csv("C:\\Users\\hp\\OneDrive\\Desktop\\Assignment\\Assignment 3\\data3\\Superstore.csv", encoding='cp1252')

# Create Database
conn = sqlite3.connect("superstore.db")

# Load Data
df.to_sql(
    "superstore_raw",
    conn,
    if_exists="replace",
    index=False
)
print("Data Loaded Successfully!")
conn.close()