# 📊 E-Commerce Sales Performance & Trend Analysis


## 📌 Project Overview
This project simulates a real-world **e-commerce data warehouse** built using a star schema and advanced SQL analytics. Also, delivers a comprehensive analysis of sales, customers, and product data using **Basic to Advanced SQL**. The workflow includes data modeling, structured loading, data validation, and analytical query development to generate business-ready datasets and insights.  
A dimensional data model was designed using fact and dimension tables to enable scalable reporting on **60K+ orders, 23K+ customers, and 270+ products (~29M revenue)**.


## 🏗️ Data Architecture & Modeling  
A **star-schema data warehouse** was implemented to structure transactional data for analytics.  
### Fact Table  
    * **fact_sales** → transactional sales data (revenue, quantity, orders)

### Dimension Tables  
    * **dim_customers** → customer demographics & geography  
    * **dim_products** → product hierarchy & category information

This modeling approach enables efficient OLAP queries, scalable reporting, and clean separation of transactional and descriptive data.


## ⚙️ Data Engineering Workflow
### 1. Schema Design & Data Modeling
- Designed a dimensional model using fact and dimension tables  
- Created structured warehouse schema for analytics-ready data  

### 2. Data Validation & Quality Checks
- Performed null value analysis across tables  
- Conducted schema inspection using `INFORMATION_SCHEMA`  
- Validated data consistency across fact and dimension tables  

### 3. Transformation & Query Layer
- Built complex joins between fact and dimension tables  
- Developed aggregations and business KPI queries  
- Optimized analytical queries using proper join and aggregation strategies  

### 4. Analytics Data Mart Creation
- Built reusable reporting views:
  - `customer_report`
  - `product_report`
- Centralized KPIs for downstream analytics and


## 🛠️ Tech Stack
* **SQL (MySQL):** Primary engine for data transformation and analysis.
* **Relational DB:** Data storage and schema management.
* **ETL Workflow:** Data cleaning, validation, structured loading
* **Data Modeling:** Star schema (fact & dimension tables)


## 🧪 SQL Concepts Used
* **Advanced Aggregations:** SUM, COUNT, AVG
* **Complex Logic:** CTEs, CASE Statements, Views
* **Analytical Functions:** Window Functions (Ranking, Running Totals, Moving Averages)
* **Data Structure:** Joins, Relational Database Design


## 📁 Key Analysis & Insights
* **Scale of Analysis:** Executed end-to-end SQL queries on a dataset representing **~$29M in revenue**, **23K+ customers**, and **270+ products**.
* **Accelerated Growth:** Identified through **CTEs and Window Functions** that over **50% of total revenue** was generated in the final year.
* **Volume-Driven Strategy:** Used **3-month moving averages** to detect a trend where sales volume increased significantly despite a sharp decline in average unit prices.
* **Product Catalog Health:** Classified products using **Ranking Functions**, identifying that **33%** of products are improving while **15%** are in decline.
* **Data Reusability:** Developed modular **SQL Views** to centralize KPIs (Recency, Lifespan, AOV), streamlining downstream reporting.


## 🧠 Analytical Summary
This project follows a structured analytical flow to decode business evolution:  
1. **Exploration & Validation:** Audited geographic coverage and product structures to ensure data integrity.  
2. **Baseline Metrics:** Established core KPIs (Total Sales, Orders, Customers) to create a snapshot of business health.  
3. **Distribution & Efficiency:** Analyzed revenue by category vs. product count to identify "high-efficiency" categories (low product count, high revenue).  
4. **Ranking:** Isolated top-performing customers and products to identify primary revenue drivers.  
5. **Temporal Trends:**  
    * **Cumulative Analysis:** Proved accelerating growth using running totals.  
    * **Price vs. Volume:** Determined that growth was volume-led rather than price-led.  
6. **Lifecycle Analysis:** Classified products as **Active, Aging, or Inactive** based on recency and sales duration.  
7. **Optimization:** Encapsulated complex logic into reusable views for efficient future querying.  


## ✅ Project Outcome
This project demonstrates proficiency in:
* **Structured SQL-based data analysis** 🔍
* **Business-focused KPI creation** 📊
* **Trend & Cumulative growth tracking** 📈
* **Product & Customer performance evaluation** 🧠
* **Modular code design via SQL Views** ♻️

> Detailed SQL queries and logic scripts are available in the project folder.
