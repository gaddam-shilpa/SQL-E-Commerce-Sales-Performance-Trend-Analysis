#--------------------- Create Database and Tables -------------------------------------#
CREATE DATABASE DataWarehouseAnalytics
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE DataWarehouseAnalytics;
DROP TABLE DataWarehouseAnalytics.dim_customers;

CREATE TABLE DataWarehouseAnalytics.dim_customers(
customer_key INT,
customer_id INT,
customer_number VARCHAR(50),
first_name VARCHAR(50),
last_name VARCHAR(50),
country VARCHAR(50),
marital_status VARCHAR(50),
gender VARCHAR(50),
birthdate DATE,
create_date DATE
) ENGINE = InnoDB;

CREATE TABLE DataWarehouseAnalytics.dim_products(
product_key INT,
product_id INT,
product_number VARCHAR(50),
product_name VARCHAR(50),
category_id VARCHAR(50),
category VARCHAR(50),
subcategory VARCHAR(50),
maintenance VARCHAR(50),
cost INT,
product_line VARCHAR(50),
start_date DATE
) ENGINE = InnoDB;

CREATE TABLE DataWarehouseAnalytics.fact_sales(
order_number VARCHAR(50),
product_key INT,
customer_key INT,
order_date DATE,
shipping_date DATE,
due_date DATE,
sales_amount INT,
quantity INT,
price INT
)ENGINE = InnoDB;

SELECT * FROM DataWarehouseAnalytics.fact_sales;
SELECT * FROM DataWarehouseAnalytics.dim_customers;
SELECT * FROM DataWarehouseAnalytics.dim_products;

# ------------------------------------------------ Database Exploration -----------------------------------------------#

-- Using two tables TABLE and COLUMNS from INFORMATION_SCHEMA to insepct the data.
-- To explore the structure of database, and the list of tables. Also to inspect the columns and data types of the tables.

SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, ENGINE, TABLE_ROWS
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'datawarehouseanalytics';

SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'dim_customers';

SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'dim_products';

SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'fact_sales';

SELECT
    -- Count of NULLs for each column
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS Null_product_id,
    SUM(CASE WHEN product_number IS NULL THEN 1 ELSE 0 END) AS Null_product_number,
    SUM(CASE WHEN product_name IS NULL THEN 1 ELSE 0 END) AS Null_product_name,
    SUM(CASE WHEN category_id IS NULL THEN 1 ELSE 0 END) AS Null_category_id,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS Null_category,
    SUM(CASE WHEN subcategory IS NULL THEN 1 ELSE 0 END) AS Null_subcategory,
    SUM(CASE WHEN maintenance IS NULL THEN 1 ELSE 0 END) AS Null_maintenance,
    SUM(CASE WHEN cost IS NULL THEN 1 ELSE 0 END) AS Null_cost,
    SUM(CASE WHEN product_line IS NULL THEN 1 ELSE 0 END) AS Null_product_line,
    SUM(CASE WHEN start_date IS NULL THEN 1 ELSE 0 END) AS Null_start_date
FROM
    DataWarehouseAnalytics.dim_products;
    
SELECT
    -- Count of NULLs for each column
    SUM(CASE WHEN customer_number IS NULL THEN 1 ELSE 0 END) AS Null_customer_number,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS Null_first_name,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS Null_last_name,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS Null_country,
    SUM(CASE WHEN marital_status IS NULL THEN 1 ELSE 0 END) AS Null_marital_status,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS Null_gender,
    SUM(CASE WHEN birthdate IS NULL THEN 1 ELSE 0 END) AS Null_birthdate,
    SUM(CASE WHEN create_date IS NULL THEN 1 ELSE 0 END) AS Null_createdate
FROM
    DataWarehouseAnalytics.dim_customers;


-- Ensuring Null rows are present and the row hasn't dropped.
SELECT * FROM DataWarehouseAnalytics.fact_sales WHERE order_number = 'SO64338';
SELECT * FROM datawarehouseanalytics.dim_customers WHERE customer_key = 97;



