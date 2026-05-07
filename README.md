# Banking Transaction Error Detection Data Analysis Project

## 1. Project Overview

This project simulates an industry-style banking operations analytics use case focused on detecting, analysing, and reporting transaction posting errors.

The project is suitable for a data analyst portfolio, interview demonstration, internal analytics POC, or Power BI dashboard practice.

### Business Problem

Banks process thousands or millions of transactions through channels such as Mobile Banking, Internet Banking, ATM, POS, Branch, and API integrations. Some transactions may fail, post incorrectly, duplicate, reverse late, or create customer refund exposure.

The objective is to build an analytics solution that helps banking operations teams answer:

- What is the overall transaction error rate?
- Which channel has the highest error rate?
- Which error types create the highest financial exposure?
- Which root causes are driving operational incidents?
- Which cases are breaching SLA?
- Which customer segments and regions require attention?
- Which transactions should be prioritised for investigation?

---

## 2. Dataset Summary

The dataset is synthetic but designed to look realistic for banking operations analysis.

| File | Description | Rows |
|---|---:|---:|
| `data/raw/banking_transactions_raw.csv` | Raw transaction-level banking data with duplicate records for cleaning practice | 75,220 |
| `data/raw/customers.csv` | Customer profile dimension | 8,000 |
| `data/raw/accounts.csv` | Account dimension | 10,000 |
| `data/raw/branches.csv` | Branch and region dimension | 80 |
| `data/processed/banking_error_detection_model.csv` | Cleaned and enriched analytics dataset | 75,000 |
| `data/processed/kpi_summary.csv` | Executive KPI summary | 1 |

### Important Columns

| Column | Meaning |
|---|---|
| `transaction_id` | Unique transaction reference |
| `transaction_datetime` | Transaction timestamp |
| `customer_id` | Customer reference |
| `account_id` | Account reference |
| `branch_id` | Branch reference |
| `channel` | Mobile, Internet, ATM, Branch, POS, API |
| `transaction_type` | Transfer, Withdrawal, Deposit, Bill Payment, etc. |
| `amount` | Transaction amount |
| `posting_status` | Success or Exception |
| `is_error` | 1 = transaction error, 0 = no error |
| `error_type` | Type of operational/banking error |
| `error_severity` | Low, Medium, High, Critical |
| `root_cause` | Operational or technical root cause |
| `case_status` | Open, Investigating, Resolved, Auto-Reversed, Rejected |
| `refund_amount` | Estimated customer refund/financial exposure |
| `resolution_hours` | Time taken to resolve error |
| `sla_breached` | 1 = breached SLA, 0 = within SLA |
| `customer_segment` | Mass, SME, Corporate, Premier, etc. |
| `risk_rating` | Customer risk rating |
| `region`, `state` | Branch geography |

---

## 3.  Project Structure

```text
banking_error_detection_project/
├── data/
│   ├── raw/
│   │   ├── banking_transactions_raw.csv
│   │   ├── customers.csv
│   │   ├── accounts.csv
│   │   └── branches.csv
│   └── processed/
│       ├── banking_error_detection_model.csv
│       └── kpi_summary.csv
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_cleaning.sql
│   └── 03_analysis_queries.sql
├── python/
│   └── banking_error_analysis.py
├── powerbi/
│   └── banking-error-exec-dash.pxib
├── screenshots/
│   ├── Banking-error-exec-dash.png
└── README.md
```

---

## 4. Key Business KPIs

| KPI | Value |
|---|---:|
| Total Transactions | 75,000 |
| Total Error Cases | 4,861 |
| Error Rate % | 6.48% |
| Total Refund Exposure | MYR 842,405.56 |
| Average Resolution Hours | 22.59 |
| SLA Breach Rate % | 35.96% |

---

## 5. SQL Scope

The SQL folder includes:

### `01_create_tables.sql`
Creates the banking analytics schema:

- `dim_customers`
- `dim_accounts`
- `dim_branches`
- `fact_transactions`

### `02_data_cleaning.sql`
Performs cleaning operations:

- Removes duplicate transactions using `ROW_NUMBER()`
- Standardises text fields
- Converts data types
- Handles null refund and resolution values
- Creates `fact_transactions_clean`

### `03_analysis_queries.sql`
Includes dashboard-ready analysis queries:

- Executive KPI summary
- Error rate by channel
- Error type breakdown
- Monthly error trend
- High-value error transactions
- Root cause contribution
- Branch and region risk view

---

## 6. Python Scope

The Python script performs:

1. Data loading
2. Data cleaning
3. Duplicate removal
4. Feature engineering
5. KPI generation
6. Exploratory data analysis
7. Export of processed datasets
8. Error likelihood model using Random Forest
9. Chart generation for dashboard screenshots

Run:

```bash
cd banking_error_detection_project
pip install pandas numpy matplotlib scikit-learn
python python/banking_error_analysis.py
```

---

## 7. Power BI Dashboard Design

Recommended dashboard pages:

### Page 1: Executive Overview

Purpose: Give management a clear view of operational risk and customer-impacting errors.

Visuals:

- KPI Cards:
  - Total Transactions
  - Total Error Cases
  - Error Rate %
  - Total Refund Exposure
  - Average Resolution Hours
  - SLA Breach Rate %
- Line Chart:
  - Axis: `month`
  - Value: `Error Rate %`
- Bar Chart:
  - Axis: `channel`
  - Value: `Error Rate %`
- Donut Chart:
  - Legend: `error_severity`
  - Value: `Total Error Cases`
- Matrix:
  - Rows: `region`, `state`
  - Values: Total Transactions, Error Cases, Error Rate %, Refund Exposure

### Page 2: Error Investigation

Purpose: Help operations teams investigate issue patterns.

Visuals:

- Bar chart by `error_type`
- Bar chart by `root_cause`
- Table of high-value error transactions
- Slicers for month, channel, error type, severity, risk rating, and case status

### Page 3: Operational SLA

Purpose: Track operational performance and SLA breaches.

Visuals:

- SLA breach cards
- Average resolution hours
- Open error cases
- Resolution hours by error severity
- Detected-by source comparison

### Page 4: Customer & Segment Risk

Purpose: Understand where customer impact is concentrated.

Visuals:

- Error rate by customer segment
- Error cases by risk rating
- Region/state matrix
- High-value customer impact table

---

## 8. Power BI DAX Measures

The file `powerbi/powerbi_dax_and_visual_guide.md` contains ready-to-use DAX measures including:

- Total Transactions
- Total Error Cases
- Error Rate %
- Total Refund Exposure
- Average Resolution Hours
- SLA Breach Cases
- SLA Breach Rate %
- High Value Error Cases
- Open Error Cases

---

## 9. Recommended Insights for Presentation

You can use these points in your final dashboard/storytelling:

1. API and POS channels should be monitored closely because external integrations and payment gateways usually create higher operational complexity.
2. High-severity errors such as duplicate debit, failed reversal, and wrong beneficiary should be prioritised because they directly impact customer trust and refund exposure.
3. SLA breach rate should be monitored together with severity because a low number of critical cases can still create high business impact.
4. Root-cause analysis should separate technical issues from operational issues, such as network timeout, core banking delay, mapping issue, and manual input error.
5. High-value transaction errors should be reviewed daily by the operations team.
6. Error trends by month help management identify whether recent fixes are reducing operational risk.

---

## 10. Dashboard Screenshot Preview

Open the files in the `screenshots/` folder:

- `monthly_error_rate_trend.png`
- `error_rate_by_channel.png`
- `top_error_types.png`

These are mock screenshots generated from the dataset to guide your Power BI dashboard layout.

---

## 11. How to Present This Project in an Interview

You can say:

> I built a banking transaction error detection analytics project using SQL, Python, and Power BI. The project analyses transaction posting errors, duplicate debits, failed reversals, refund exposure, SLA breaches, root causes, and error trends. I used SQL for data modelling and analysis, Python for data cleaning, EDA, KPI generation and basic error prediction, and Power BI for executive-level dashboards. The dashboard helps operations and management identify high-risk channels, error types, root causes, and customer-impacting incidents.

---

## 12. Business Recommendations

1. Build automated alerts for high-value error transactions above MYR 10,000.
2. Prioritise root causes with the highest refund exposure, not only the highest count.
3. Track SLA breach cases daily and assign ownership by root cause.
4. Create separate operational queues for critical errors such as wrong beneficiary and duplicate debit.
5. Monitor API and POS channels separately because they are more dependent on external integrations.
6. Create customer communication workflows for unresolved high-severity cases.
7. Use the prediction score as an early-warning signal, not as a final decision engine.

---

## Author
Revathy shanmugaraj
