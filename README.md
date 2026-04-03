# 🚀 Airbnb Data Pipeline | AWS + dbt + Snowflake

## 🌍 Project Overview

This project showcases an **end-to-end data pipeline** built using **AWS, dbt, and Snowflake** to transform raw Airbnb data into structured, analytics-ready datasets.

The pipeline follows a **layered architecture (Bronze → Silver → Gold)** ensuring scalability, maintainability, and efficient data transformation.

---

## 🏗️ Architecture

```
Raw Data → AWS S3 → Snowflake → dbt (Bronze → Silver → Gold) → Analytics (Power BI)
```

---

## 🔥 Key Highlights

* ⚡ End-to-End ELT Pipeline
* ☁️ AWS S3 as Data Lake
* ❄️ Snowflake as Data Warehouse
* 🧩 dbt-based modular transformations
* 🥉 Bronze Layer (raw ingestion)
* 🥈 Silver Layer (cleaned & transformed data)
* 🥇 Gold Layer (business-ready models)
* ✅ Data testing using dbt tests

---

## 🛠️ Tech Stack

| Tool            | Purpose             |
| --------------- | ------------------- |
| ☁️ AWS S3       | Raw data storage    |
| ❄️ Snowflake    | Data warehouse      |
| 🔧 dbt          | Data transformation |
| 🐍 Python / SQL | Data processing     |
| 📊 Power BI     | Visualization       |

---

## 📂 Project Structure

```
aws_dbt_snowflake/
├── analyses/
├── dbt_packages/
├── logs/
├── macros/
├── models/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
│   └── sources/
│       └── sources.yml
├── seeds/
├── snapshots/
├── tests/
│   └── source_tests.sql
├── dbt_project.yml
├── profiles.yml
├── .gitignore
└── README.md
```

---

## 🧠 Key Concepts Implemented

* ELT Pipeline Architecture
* Medallion Architecture (Bronze → Silver → Gold)
* Incremental Models ⚡
* dbt Macros & Jinja 🧩
* Data Testing & Validation ✅

---

## 📊 Analytics & Dashboard

The transformed data is further visualized using a Power BI dashboard to derive business insights.

> ⚠️ Note: This repository focuses on the **data engineering pipeline (AWS + dbt + Snowflake)**.
> The dashboard is maintained in a separate repository.

🔗 **Dashboard Repository:**
[https://github.com/shivansh1609//Airbnb_Performance_Dashboard)]

## ⚙️ How to Run the Project

1. Clone the repository
2. Configure Snowflake credentials in `profiles.yml`
3. Install dependencies:

```
dbt deps
```

4. Run models:

```
dbt run
```

5. Run tests:

```
dbt test
```

---

## 🚀 Future Enhancements

* Real-time data ingestion (Kafka / Kinesis)
* Workflow orchestration (Airflow)
* CI/CD integration
* Advanced analytics & ML models



