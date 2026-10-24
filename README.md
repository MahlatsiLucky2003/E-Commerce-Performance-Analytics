# Enterprise E-Commerce Data Platform & Performance Analytics

An end-to-end data warehousing and business intelligence solution built on **Microsoft Fabric** to ingest, model, transform, and analyze e-commerce transactional data, driving actionable insights into sales revenue, product performance, and customer loyalty.

---

## 1. About Project
This project delivers a centralized data platform built to eliminate enterprise reporting silos and automate the data lifecycle. The solution streams heterogeneous operational data, applies automated cleansing and star-schema transformations, and feeds enterprise-grade semantic models to empower data-driven decisions across executive and operational leadership.

---

## 2. Problem
E-commerce enterprises frequently face operational bottlenecks due to fragmented data sources, unverified customer metrics, and delayed analytics delivery. Key organizational pain points include:
* Disjointed data structures that prevent clear visibility into profit margins and discount dynamics.
* Inconsistent tracking of customer lifetime value and retention trends across channel operations.
* Labor-intensive, manual reporting processes that delay leadership decision-making and introduce calculation errors.

---

## 3. Objectives
* **Automated Data Ingestion:** Establish continuous, scalable data ingestion from raw files into an isolated staging layer using automated data flows.
* **Scalable Data Architecture:** Implement a high-performance dimensional data model adhering to enterprise cloud infrastructure standards.
* **Standardized Business Metrics:** Provide consistent KPI calculations across revenue, average order value, customer activity, and price variance using centralized analytical formulas.
* **Executive Decision Support:** Deliver interactive visual dashboards tailored for executive overview, merchandising performance, and customer segment insights.

---

## 4. Solution

### Short Solution Overview
The enterprise solution establishes a fully automated cloud pipeline. Raw operational files are ingested and sanitized through cloud dataflows into staging environments. An automated orchestration engine sequentially triggers data transformation scripts to refresh dimension models and populate fact records with resolved surrogate keys, ensuring full data integrity and idempotency.

### Architecture Diagram Screenshot
> *[02-Design/Architecture Diagram.png]*

### Short Dashboard Overview
An interactive three-tier business intelligence report built on top of a centralized semantic model, providing instant operational visibility for executive leadership, product managers, and marketing teams.

---

### Sales & Revenue Overview Dashboard Overview
Monitors top-line revenue, net margin health, order volume growth, and pricing variances over multi-year operational horizons.

> *[Insert Sales & Revenue Overview Dashboard Screenshot Here]*

---

### Product & Category Analytics Dashboard Overview
Evaluates merchandise category mix, product turnover volumes, and average selling prices to optimize inventory allocation and product strategy.

> *[Insert Product & Category Analytics Dashboard Screenshot Here]*

---

### User Demographics & Tier Insights Dashboard Overview
Analyzes customer acquisition funnels, tier progression dynamics, and purchasing behavior across key demographic segments.

> *[Insert User Demographics & Tier Insights Dashboard Screenshot Here]*

---

## 5. Workflow/Tasks

* Conducted a thorough **data profile** to evaluate raw source data quality, inspect value ranges, and remediate formatting anomalies.
* Authored the **Business Requirements Document (BRD)** to align technical deliverables with strategic business objectives and stakeholder requirements.
* Developed the **KPIs & Metrics Catalogue** to establish business logic and standard formulas across revenue and customer metrics.
* Compiled the **Data Dictionary** to define attribute mappings, operational metadata, and target data types.
* Published the **Analytics Requirements Specifications** to establish dashboard layouts, interactive filters, and user access roles.
* Drafted the **Architecture Diagram** using Draw.io to map the complete end-to-end data lifecycle from raw storage to visual analytics.
* Designed the **Conceptual Data Model** to establish core enterprise entities and top-level business relationships.
* Modeled the **Logical Data Model** to structure detailed entity relationships, business keys, and normalization standards.
* Formulated the **Physical Data Model** optimized for cloud engine performance, constraint enforcement, and rapid query execution.
* Provisioned and configured the cloud data warehouse environment within Microsoft Fabric.
* Ingested raw source data into dedicated staging environments using automated **Dataflows Gen2** with full refresh policies.
* **Executed comprehensive data validation testing** by auditing entity constraints, verifying key resolution fallbacks, reconciling pre- and post-load record balances, and confirming pipeline execution idempotency.
* Engineered automated **T-SQL** transformation logic executed via orchestrated pipeline activities to update dimensional hierarchies and load historical fact data.
* Constructed the cloud semantic model and published unified **DAX** business measures for enterprise reporting.
* Designed and deployed the interactive business intelligence report to deliver real-time operational insights.

---

## 6. Technology Stack Classification

* **Cloud Data Platform & ETL Engineering:** Microsoft Fabric (Dataflows, Pipelines, Data Warehouse, Semantic Model)
* **Query & Analytical Languages:** T-SQL, DAX
* **Business Intelligence & Visualization:** Power BI
* **System Architecture & Design:** Draw.io
* **Documentation & Productivity:** Word, Excel
