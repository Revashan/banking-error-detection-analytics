# Banking Transaction Error Detection Analytics

An end-to-end **banking operations analytics** project focused on identifying transaction posting errors, SLA breaches, refund exposure, and operational risk across banking channels.

This project is designed to reflect a real-world reporting use case where Operations, Risk, and Customer Service teams need a reliable dashboard to monitor failed, duplicated, reversed, or wrongly posted transactions.

---

## Business Problem

Banks process thousands of transactions every day through Mobile Banking, Internet Banking, ATM, POS, Branch, and API channels. Some transactions fail, get duplicated, are reversed late, or are posted incorrectly.

These issues create:

- Customer complaints
- Refund exposure
- SLA breaches
- Operational backlog
- Reconciliation effort
- Regulatory and reputational risk

The goal of this project is to help banking operations teams identify where transaction errors are happening, how much financial exposure exists, and which cases should be prioritised for resolution.

---

## Business Questions Answered

1. Which channels generate the highest transaction error rate?
2. Which transaction types create the largest refund exposure?
3. What root causes drive most operational errors?
4. Which cases are breaching SLA?
5. Which branches, regions, or customer segments are most impacted?
6. Which high-value transactions need urgent review?
7. How can operations teams reduce repeat errors?

---

## Dataset

This project uses a **synthetic but realistic banking operations dataset** created for portfolio and learning purposes.

| File | Description |
|---|---|
| `banking_transactions_raw.csv` | Raw transaction records with success/error status, channel, transaction type, amount, SLA, and root cause |
| `customers.csv` | Customer profile and segment information |
| `accounts.csv` | Account-level dimension data |
| `branches.csv` | Branch and region mapping |
| `banking_error_detection_model.csv` | Cleaned and enriched dataset for analytics and dashboarding |
| `kpi_summary.csv` | Final KPI summary used for reporting validation |

---

## Tools Used

- **SQL**: data validation, KPI queries, analysis queries
- **Python**: data cleaning, feature engineering, EDA, KPI generation
- **Power BI**: executive dashboard, SLA reporting, operational risk visualisation
- **DAX**: calculated measures for error rate, SLA breach rate, refund exposure, and resolution time

---

## Project Workflow

```text
Raw Data
   ↓
Python Cleaning & Feature Engineering
   ↓
SQL Validation and Analysis Queries
   ↓
Processed Dataset
   ↓
Power BI Data Model
   ↓
Executive Dashboard
   ↓
Insights and Business Recommendations
```

---

## Key KPIs

| KPI | Business Meaning |
|---|---|
| Total Transactions | Total transaction volume processed |
| Total Error Cases | Count of failed, duplicated, reversed-late, or wrongly posted transactions |
| Error Rate % | Error cases divided by total transactions |
| Total Refund Exposure | Financial value exposed due to unresolved transaction errors |
| Average Resolution Hours | Average time taken to close error cases |
| SLA Breach Rate % | Percentage of error cases resolved after agreed SLA |
| High-Value Error Cases | Error transactions above the high-value threshold |
| Open Error Cases | Unresolved transaction issues requiring operations action |

---

## Power BI Dashboard

> Important: The screenshots below should be exported from the actual Power BI `.pbix` file after connecting to the processed dataset. Do not use mocked dashboard images.

### 1. Executive Overview

![Executive Overview](powerbi/screenshots/01_executive_overview.png)

Recommended visuals:

- KPI cards: Total Transactions, Error Cases, Error Rate %, Refund Exposure, SLA Breach Rate %
- Monthly transaction error trend
- Error rate by channel
- Refund exposure by transaction type
- Top root causes
- Open vs closed cases

### 2. Error Investigation

![Error Investigation](powerbi/screenshots/02_error_investigation.png)

Recommended visuals:

- Error cases by root cause
- Error amount by transaction type
- Error cases by branch and region
- Customer segment impacted
- High-value error transaction table

### 3. SLA and Operations Performance

![SLA Operations](powerbi/screenshots/03_sla_operations.png)

Recommended visuals:

- SLA breach trend
- Average resolution hours by channel
- SLA breach by severity
- Oldest pending cases
- Operations backlog by team or branch

### 4. Business Recommendation Page

![Business Recommendations](powerbi/screenshots/04_business_recommendations.png)

Recommended visuals:

- Key insights summary
- Priority actions
- Owner / action / expected impact table

---

## Key Insights

1. **API and POS channels require closer monitoring** because integration-related failures and merchant-side processing issues can increase duplicate debit and failed reversal cases.

2. **Duplicate debit and failed reversal cases should be prioritised** because they directly impact customers and increase refund exposure.

3. **SLA breach rate should be monitored together with severity**, not only case count. A small number of high-value critical cases can create larger business risk than many low-value cases.

4. **High-value transaction errors should have a daily review queue** because delayed resolution can increase customer complaints and financial exposure.

5. **Root cause analysis can reduce repeat incidents** by identifying whether errors are caused by system timeout, beneficiary mismatch, reconciliation delay, third-party API failure, or branch processing mistakes.

---

## Business Recommendations

| Area | Recommendation | Business Impact |
|---|---|---|
| SLA Management | Create a daily SLA breach watchlist for cases close to breach threshold | Reduces overdue cases and improves service performance |
| Refund Exposure | Prioritise high-value failed reversal and duplicate debit cases | Reduces financial and reputational risk |
| Channel Monitoring | Monitor API and POS error trends separately | Helps identify third-party and integration-related issues faster |
| Root Cause Fix | Track top recurring root causes weekly | Supports permanent fixes instead of repeated manual resolution |
| Customer Impact | Create priority queue for premium/high-value customers | Improves customer experience and complaint handling |
| Reporting | Publish weekly operations dashboard to stakeholders | Improves visibility and accountability |

---

## This Project Demonstrates

- SQL-based validation and KPI analysis
- Python data cleaning and feature engineering
- Power BI dashboard design
- DAX measure documentation
- SLA and operational risk reporting
- Business insight writing
- Recommendation-driven analytics
