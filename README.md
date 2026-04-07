# banking-error-detection-analytics
# 🏦 Banking Operational Error Detection

##  Project Overview

This project focuses on detecting **operational errors and anomalies in banking transactions** using the PaySim simulated financial dataset.

The goal is to identify **unusual transaction patterns**, **potential fraud**, and **system/process inefficiencies** using data analytics and machine learning.

---

##  Objectives

* Detect **anomalous transactions** in financial systems
* Identify **operational errors** such as incorrect balances or transaction inconsistencies
* Build **machine learning models** for classification
* Provide **data-driven insights** for risk and operations teams
* Visualize transaction behavior using dashboards

---

## 📂 Dataset

* Source: Kaggle
* Dataset: **PaySim Financial Dataset**

### Key Columns:

| Column         | Description                                          |
| -------------- | ---------------------------------------------------- |
| step           | Time step (simulation of time)                       |
| type           | Transaction type (PAYMENT, TRANSFER, CASH_OUT, etc.) |
| amount         | Transaction amount                                   |
| nameOrig       | Sender account                                       |
| oldbalanceOrg  | Sender balance before transaction                    |
| newbalanceOrig | Sender balance after transaction                     |
| nameDest       | Receiver account                                     |
| oldbalanceDest | Receiver balance before                              |
| newbalanceDest | Receiver balance after                               |
| isFraud        | Fraud flag (1 = fraud, 0 = normal)                   |
| isFlaggedFraud | Flagged fraud by system                              |

---

##  Project Architecture

CSV → Python (EDA + Cleaning) → Feature Engineering → ML Model → SQL → Power BI Dashboard
```

 Data Cleaning

* Checked missing values and data types
* Removed duplicates
* Verified balance consistency
* Handled anomalies in transaction values

---

## ⚙️ Feature Engineering

Created new features to detect operational issues:

* `balance_error_orig`
  → Difference between expected and actual sender balance

* `balance_error_dest`
  → Difference in receiver balance

* `is_large_transaction`
  → Flag for unusually large transactions

* `transaction_type_encoded`
  → Converted categorical transaction types

---

## 📊 Exploratory Data Analysis (EDA)

Performed analysis on:

* Transaction volume over time
* Fraud vs non-fraud distribution
* Transaction types vs fraud
* Balance inconsistencies
* High-risk transaction patterns

---
## 📈 Model Evaluation

Metrics used:

* Accuracy
* Precision
* Recall
* F1 Score
* Confusion Matrix

---

## 📊 Power BI Dashboard

### Key KPIs:

* Total Transactions
* Fraud Transactions
* Fraud %
* Operational Errors Count

---

### Visuals:

| Visual       | Description                   |
| ------------ | ----------------------------- |
| Line Chart   | Transactions over time        |
| Bar Chart    | Transaction type distribution |
| Pie Chart    | Fraud vs Non-Fraud            |
| Scatter Plot | Amount vs Balance             |
| Table        | High-risk transactions        |

---

##  Key Insights

* Fraud is concentrated in **TRANSFER and CASH_OUT** transactions
* High-value transactions have higher fraud probability
* Balance inconsistencies highlight **system/process errors**
* Operational anomalies can be detected even before fraud labeling

---

## ⚠️ Limitations

* Dataset is **simulated**, not real banking data
* Limited contextual information (no customer profile)
* Class imbalance (fraud cases are rare)

---

##  Future Enhancements

* Implement **real-time fraud detection system**
* Use **deep learning models**
* Integrate with **streaming platforms (Kafka)**
* Build **alerting system for anomalies**

---

## 🛠️ Tech Stack

* Python (Pandas, NumPy)
* Scikit-learn
* SQL
* Power BI
* Matplotlib / Seaborn

---

## 👤 Author
      Revathy
* Data Analytics / Machine Learning Project
* Focus: Banking Risk & Operational Intelligence

---
