# Azure Cloud Fundamentals and Data Pipeline Implementation using ADF

## Project Overview

This project demonstrates the creation of an end-to-end data pipeline using Microsoft Azure Data Factory (ADF). The pipeline reads a CSV file from Azure Blob Storage, validates metadata, and copies the file to a destination location within Blob Storage.

## Objective

To build and execute a data pipeline using Azure Data Factory that:

- Reads a CSV file from Azure Blob Storage
- Validates file metadata using Get Metadata activity
- Copies data to a destination container
- Monitors successful execution
- Implements IAM role-based access control

---

## Technologies Used

- Microsoft Azure Portal
- Azure Resource Group
- Azure Storage Account
- Azure Blob Storage
- Azure Data Factory (ADF)
- IAM (Identity and Access Management)

---

## Project Architecture

```text
CSV File
   │
   ▼
Azure Blob Storage (Source)
   │
   ▼
Linked Service
   │
   ▼
Source Dataset
   │
   ▼
Get Metadata Activity
   │
   ▼
Copy Data Activity
   │
   ▼
Destination Dataset
   │
   ▼
Azure Blob Storage (Destination)
```

---

## Tasks Performed

### Task 1: Resource Group Creation

- Explored Azure Portal
- Created a Resource Group for project resources

### Task 2: Storage Setup

- Created Azure Storage Account
- Created Blob Containers
- Uploaded source CSV file

### Task 3: Azure Data Factory Setup

- Created Azure Data Factory instance
- Explored Author, Monitor, and Manage sections
- Created Linked Service for Blob Storage
- Created Source and Destination Datasets
- Configured Get Metadata activity

### Task 4: Pipeline Development

- Created Data Pipeline
- Added Get Metadata Activity
- Added Copy Data Activity
- Configured source and destination datasets

### Task 5: Pipeline Execution

- Executed pipeline using Debug/Trigger
- Verified successful execution in Monitor tab

### Task 6: IAM Configuration

Assigned the following roles:

- Reader
- Contributor
- Storage Blob Data Contributor

---

## Pipeline Activities

### Get Metadata Activity

Used to validate:

- File existence
- File size
- Last modified timestamp

### Copy Data Activity

Used to:

- Read CSV file from source container
- Copy file to destination container

---

## Output

Screenshots of:
- Resource Group 
- Storage Account 
- Blob Container 
- Linked Service 
- Dataset 
- Get Metadata Activity 
- Pipeline Design 
- Pipeline Execution (Succeeded) 
- IAM Role Assignment 
- Destination File

---

## Learning Outcomes

After completing this project, the following concepts were learned:

- Azure Resource Management
- Azure Blob Storage
- Azure Data Factory Components
- Linked Services and Datasets
- Get Metadata Activity
- Copy Data Activity
- Pipeline Monitoring
- Azure IAM Roles and Permissions
