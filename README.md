# Banking Transaction Error Detection Analytics

End-to-end banking operations analytics project focused on detecting, analysing, and reporting transaction posting errors — built with SQL, Python, and Power BI.

## Project Structure

```
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
├── powerbi/
│   └── Banking-error-exec-dashboard.png
├── screenshots/
└── README.md
```

## Business Problem

Banks process thousands of transactions daily across channels like Mobile, Internet Banking, ATM, POS, Branch, and API. Some transactions fail, post incorrectly, duplicate, or reverse late — creating customer refund exposure and operational risk.

This project helps banking operations teams answer:
- Which channels and transaction types generate the most errors?
- What is the total refund exposure from unresolved cases?
- Where are SLA breaches concentrated?
- Which root causes drive the highest financial impact?

## Dataset

Synthetic but realistic banking operations data.

| File | Description | Rows |
|---|---|---|
| `banking_transactions_raw.csv` | Raw transaction data with duplicates | 75,220 |
| `customers.csv` | Customer profiles | 8,000 |
| `accounts.csv` | Account dimension | 10,000 |
| `branches.csv` | Branch and region dimension | 80 |
| `banking_error_detection_model.csv` | Cleaned and enriched dataset | 75,000 |


## Key KPIs

| KPI | Value |
|---|---|
| Total Transactions | 75,000 |
| Total Error Cases | 4,861 |
| Error Rate | 6.48% |
| Total Refund Exposure | MYR 842,405.56 |
| Average Resolution Hours | 22.59 |
| SLA Breach Rate | 35.96% |

## Stack

- Python — data cleaning, EDA, KPI generation, Random Forest error likelihood model
- SQL — schema creation, data cleaning, dashboard-ready analysis queries
- Power BI — executive dashboards with DAX measures

## Power BI Dashboard

![Banking Error Detection Executive Dashboard](https://raw.githubusercontent.com/Revashan/banking-error-detection-analytics/main/powerbi/Banking-error-exec-dashboard.png)

Dashboard pages:
- Executive Overview — operational risk summary, error rate, refund exposure
- Error Investigation — error patterns by type, channel, and root cause
- Operational SLA — SLA breach tracking by severity and team
- Customer & Segment Risk — customer impact concentration by segment

DAX measures and visual guide available in `powerbi/powerbi_dax_and_visual_guide.md`.

## Getting Started

```bash
pip install pandas numpy scikit-learn matplotlib seaborn pyarrow jupyter

# Run the Python pipeline
python src/banking_error_analysis.py
```

For SQL: run scripts in order — `01_create_tables.sql` → `02_data_cleaning.sql` → `03_analysis_queries.sql`.

Open the `.pbix` file in Power BI Desktop and connect to `data/processed/banking_error_detection_model.csv`.

## Key Insights

- API and POS channels carry higher operational risk due to external integration complexity
- Duplicate debit, failed reversal, and wrong beneficiary errors have the highest customer impact
- SLA breach rate should be tracked alongside severity — a small number of critical cases can drive outsized business impact
- High-value transaction errors (above MYR 10,000) warrant daily review by operations teams

## Author

Revathy Shanmugaraj
