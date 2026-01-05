# 📊 E-Commerce Sales Performance \& Trend Analys

## 📌 Project Overview
This project analyzes sales, customers, and product data using Basic to Advanced SQL.<br>
The data was cleaned and loaded into a relational database and then analyzed to understand business performance, trends over time, and product/customer behavior.

## 🧪 SQL Concepts Used
Joins, Aggregate functions, CTEs, Window functions, Ranking functions, Running totals, Moving averages, CASE statements, Views

## 📁Key Analysis \& Insights
<p align="justify">
* Designed and executed end-to-end SQL analysis on e-commerce sales data (~29M revenue, 23K+ customers, 270+ products) to evaluate business performance and trends.
* Built core business KPIs using advanced SQL aggregations (SUM, COUNT, AVG) to quantify total sales, orders, customers, and pricing behavior.
* Applied CTEs and window functions to perform cumulative analysis, identifying that over 50% of total revenue was generated in the final year, indicating accelerating growth.
* Used running totals and 3-month moving averages to detect volume-driven growth, where average prices declined sharply while sales increased.
* Performed product performance analysis using year-over-year comparisons and ranking functions, identifying 33% improving products and 15% declining products across the catalog.
* Created reusable customer-level and product-level SQL views to centralize KPIs such as revenue, recency, lifespan, and average order value for downstream analysis and reporting.
</p>

## 🧠 Analytical Summary
<p align="justify">
This project follows a step-by-step analytical flow to understand how the business performs and evolves.<br>
The analysis begins with exploring customer and product dimensions 🌍📦 to understand geographic coverage and product structure. This step helps validate the data and ensures it is suitable for deeper analysis.<br>
Next, core business metrics 📈 such as total sales, orders, customers, and average prices are calculated to create a baseline view of overall performance. This provides a quick snapshot of the size and health of the business.<br>
To understand where the business is strong, distribution analysis is performed across countries and product categories. This helps identify major markets, revenue-contributing categories, and high-value customers.<br>
The analysis then compares product count with revenue by category ⚖️. This highlights categories with many products but low revenue contribution, as well as categories with fewer products that generate higher revenue per product, helping evaluate category efficiency.<br>
Using ranking analysis 🏆, top-performing and low-performing products and customers are identified. This allows focus on key revenue drivers as well as underperforming areas.<br>
Time-based analysis ⏳ examines sales trends across years and months, revealing clear growth patterns. A cumulative analysis using running totals shows that sales growth accelerates over time, with a significant share of total revenue generated in later periods. At the same time, a declining 3-month moving average price indicates that growth is driven by higher sales volume rather than price increases.<br>
Product performance is further evaluated year over year to identify improving, stable, and declining products. Product lifecycle and recency analysis 🔄 helps classify products as active, aging, or inactive based on how long they have been selling and how recently they were sold.<br>
Finally, reusable SQL views 🧩 are created to summarize customer-level and product-level metrics, making future analysis and reporting easier without rewriting complex queries.<br>
Overall, this project demonstrates the use of SQL for end-to-end data analysis, from data exploration and KPI creation to trend analysis, cumulative growth tracking, and performance evaluation.<br>
</p>

## 🛠️ Tech Stack
- SQL (MySQL)
- Relational Database
- CSV Data
- ETL for data cleaning and loading

## ✅ Project Outcome
This project showcases:
- Structured SQL-based data analysis 🔍
- Business-focused KPI creation 📊
- Trend and cumulative growth analysis 📈
- Product and customer performance evaluation 🧠
- Creation of reusable analytical SQL views ♻️

This README focuses on analysis and insights. Detailed SQL queries and logic are available in the project folder
