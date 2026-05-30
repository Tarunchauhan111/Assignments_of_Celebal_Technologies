# It reads the Superstore CSV file, creates a SQLite database, loads the data into a table called sales.
import pandas as pd
import sqlite3

# Read CSV
df = pd.read_csv(
    "data1/Superstore.csv",
    encoding="cp1252"
)

# Create SQLite Database
conn = sqlite3.connect("superstore.db")

# Load data into SQL table
df.to_sql(
    "sales",
    conn,
    if_exists="replace",
    index=False
)
print("Data loaded successfully!")
conn.close()