# E-Commerce Performance Analytics

An end-to-end data warehousing and business intelligence solution built on **Microsoft Fabric** to ingest, model, transform, and analyze e-commerce transactional data, driving actionable insights into sales revenue, product performance, and customer loyalty.

---

## 1. About Project
The **E-Commerce Performance Analytics** platform is a robust data warehousing solution designed to solve fragmented reporting challenges. By taking raw CSV dumps (`users`, `products`, `orders`, and `order_items`), the platform leverages **Dataflows Gen2** for staging ingestion and automated **Microsoft Fabric Data Factory pipelines** running optimized T-SQL scripts to build a clean, high-performance star schema (`dw`). The underlying semantic model is empowered by precise DAX measures to feed a comprehensive 3-sheet interactive Power BI dashboard.

---

## 2. Problem
E-commerce businesses often struggle with fragmented raw data silos, unverified customer metrics, and slow reporting loops. Without a centralized star schema and automated ingestion pipeline, stakeholders face:
* Disjointed data structures preventing unified revenue and discount tracking across product categories.
* Lack of historical tracking for user loyalty tiers and order progression.
* Manual, error-prone data refreshes causing inconsistent metric calculations across executive reports.

---

## 3. Objectives
* **Automated Ingestion & Staging:** Implement a reliable, repeatable dataflow ingestion process from raw CSV files into staging tables (`dbo.stg_*`).
* **Optimized Dimensional Modeling:** Construct a production-grade star schema (`dim_date`, `dim_user`, `dim_product`, `fact_order_line`) conforming to Microsoft Fabric engine constraints (`BIGINT IDENTITY`, `DATETIME2(6)`, and `NONCLUSTERED NOT ENFORCED` primary keys).
* **Standardized Analytics & KPIs:** Deliver core financial and behavioral measures (Total Revenue, Average Order Value, Active Customers, Price Variance) via a centralized semantic model.
* **Interactive Business Intelligence:** Expose intuitive dashboards that break down performance by sales trends, product categories, and customer demographics.

---

## 4. Solution

### Short Solution Overview
The solution establishes an automated, cloud-native data pipeline in Microsoft Fabric. Raw source files are cleaned and loaded into staging tables via Dataflows Gen2. A sequenced Fabric pipeline then executes idempotent T-SQL scripts to refresh the date dimension, upsert user and product dimensions, and compute fact table order lines with fully resolved surrogate keys.

### Architecture Diagram Screenshot
> *[Insert Architecture Diagram Screenshot Here]*

### Short Dashboard Overview
A 3-sheet interactive analytical report built on the semantic model, providing executives and operations teams with immediate visibility into financial health, merchandising success, and customer engagement.

---

### Sales & Revenue Overview Dashboard Overview
Tracks financial performance, net revenue versus base revenue, order volumes, and discount/markup variances over time.

> *[Insert Sales & Revenue Overview Dashboard Screenshot Here]*

---

### Product & Category Analytics Dashboard Overview
Analyzes category contributions, unit sales volumes, and average selling prices (ASP) to identify top-performing merchandise.

> *[Insert Product & Category Analytics Dashboard Screenshot Here]*

---

### User Demographics & Tier Insights Dashboard Overview
Examines customer segmentation across loyalty tiers, user acquisition timelines, and active customer purchasing behaviors.

> *[Insert User Demographics & Tier Insights Dashboard Screenshot Here]*

---

## 5. Workflow/Tasks

* Created a **data profile** to evaluate raw data quality, inspect value ranges, and identify formatting anomalies across source CSV files.
* Wrote the **Business Requirements Document (BRD)** to define business objectives, user personas, and core reporting expectations.
* Created the **KPIs & Metrics Catalogue** to establish precise formulas for metrics such as Total Revenue, AOV, ASP, and Price Variance.
* Created the **Data Dictionary** to map source schema fields to target dimensional attributes and data types.
* Wrote the **Analytics Requirements Specifications** to outline layout requirements, filters, and interactivity for the dashboard sheets.
* Designed the **Architecture Diagram** using Draw.io to map the end-to-end data flow from raw storage to semantic model reporting.
* Designed the **Conceptual Data Model** to outline core business entities and high-level relationships.
* Designed the **Logical Data Model** to detail attributes, primary/foreign keys, and normalization structures.
* Designed the **Physical Data Model** optimized for Microsoft Fabric engine requirements (`BIGINT IDENTITY` without seed/increment, `DATETIME2(6)`, and `NONCLUSTERED NOT ENFORCED` keys).
* Created the data warehouse instance in Microsoft Fabric (`ecommerce_dw`).
* Ingested the raw CSV files as staging tables (`dbo.stg_users`, `dbo.stg_products`, `dbo.stg_orders`, `dbo.stg_order_items`) using **Dataflows Gen2** with a *Replace* update method.
* **Performed rigorous testing and data validation** by verifying schema constraint enforcement, auditing foreign key resolution (handling unassigned keys with default `-1` fallback), comparing row counts pre- and post-merge, and executing pipeline idempotency checks.
* Used **T-SQL** within automated pipeline scripts to build and populate the star schema (`dw` schema: `dim_date`, `dim_user`, `dim_product`, `fact_order_line`) using declarative `MERGE` statements and automated date-dimension loops.
* Created the semantic model and applied robust **DAX measures** (`Total Revenue`, `Total Base Revenue`, `Average Order Value`, `Active Customers`, `Price Variance`).
* Created the interactive dashboard report to visualize end-to-end e-commerce performance.

---

## 6. Technology Stack

* **Data Warehouse & Storage:** Microsoft Fabric Warehouse (`ecommerce_dw`)
* **Orchestration & ETL:** Microsoft Fabric Data Factory Pipelines, Dataflows Gen2 (Power Query Online)
* **Database Programming:** T-SQL, SQL Server Management Studio (SSMS 22)
* **Modeling & Analytics:** Star Schema Dimensional Modeling, Power BI Semantic Model, DAX
* **Architecture & Design:** Draw.io
