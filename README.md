<img width="1027" height="712" alt="image" src="https://github.com/user-attachments/assets/5c70290a-961b-4546-9f88-ce919c4afbf2" /># Data Warehouse & Analytics Project

A hands-on **SQL Data Warehouse and Analytics project** built using SQL Server. The project focuses on data engineering fundamentals such as **ETL, data cleaning, data modeling, SQL analytics, and business reporting**.

The goal is to transform raw ERP and CRM sales data into a structured, analytics-ready data warehouse and generate meaningful insights about customers, products, and sales.

## 🏗️ Data Architecture

The project follows a **Medallion Architecture** consisting of three layers:

<img width="1027" height="712" alt="image" src="https://github.com/user-attachments/assets/c4c396da-6045-405e-acd7-140283c4cde0" />


**Bronze Layer**

* Stores raw data as received from the source systems.
* Loads ERP and CRM CSV files into SQL Server.
* Minimal transformation is performed at this stage.

**Silver Layer**

* Cleans and standardizes the raw data.
* Handles missing, inconsistent, and invalid values.
* Applies transformations and prepares the data for analytical use.

**Gold Layer**

* Contains business-ready data.
* Uses a **Star Schema** with fact and dimension tables.
* Designed for efficient analytical queries and reporting.

## 📖 Project Overview

This project covers the complete workflow of building a small-scale data warehouse:

1. **Data Architecture** – Designed a Bronze, Silver, and Gold data warehouse architecture.
2. **ETL Pipelines** – Extracted data from CSV source systems and loaded it into SQL Server.
3. **Data Cleaning & Transformation** – Cleaned, standardized, and integrated data from ERP and CRM sources.
4. **Data Modeling** – Built fact and dimension tables using a Star Schema.
5. **SQL Analytics** – Developed analytical queries to investigate customer, product, and sales performance.
6. **Reporting** – Generated business-focused insights and metrics from the warehouse.

## 🎯 Project Objectives

The main objectives of the project are:

* Build a functional SQL-based data warehouse.
* Integrate data from multiple source systems.
* Apply data quality and transformation techniques.
* Design an analytics-friendly relational data model.
* Practice advanced SQL querying and analytical functions.
* Extract business insights from structured warehouse data.

## 🛠️ Technologies Used

* **SQL Server**
* **SQL Server Management Studio (SSMS)**
* **T-SQL**
* **CSV**
* **Draw.io**
* **Git & GitHub**

## 📊 Data Sources

The project uses two source systems:

* **ERP** – Enterprise resource planning data
* **CRM** – Customer relationship management data

The source data is provided as CSV files and is loaded into SQL Server before being processed through the warehouse layers.

## 🔄 ETL Process

The ETL workflow follows:

**CSV Sources → Bronze → Silver → Gold → Analytics**

### Bronze

Raw CSV data is loaded into SQL Server with minimal modification.

### Silver

The raw data is transformed through:

* Data cleaning
* Data type standardization
* Handling missing values
* Removing inconsistencies
* Data validation
* Integration of ERP and CRM datasets

### Gold

The cleaned data is modeled into a **Star Schema** consisting of:

* Fact tables for measurable business events
* Dimension tables for customers, products, and other descriptive attributes

This layer serves as the primary source for analytical queries.

## 🗂️ Repository Structure

```text
data-warehouse-project/
│
├── datasets/                    # Raw ERP and CRM CSV datasets
│
├── docs/                        # Project documentation and diagrams
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming-conventions.md
│
├── scripts/                     # SQL scripts
│   ├── bronze/                  # Raw data ingestion
│   ├── silver/                  # Data cleaning and transformation
│   └── gold/                    # Analytical data models
│
├── tests/                       # Data quality and validation tests
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

## 📈 Analytics

The Gold layer is used to answer business questions related to:

### Customer Behavior

* Customer purchasing patterns
* Customer segmentation
* Sales contribution by customer
* Customer-level performance

### Product Performance

* Best-performing products
* Product sales contribution
* Product-level trends
* Category performance

### Sales Trends

* Sales over time
* Revenue trends
* Order volume
* Key sales metrics

## 🧪 Data Quality & Testing

Data quality checks are performed throughout the transformation process to identify issues such as:

* Duplicate records
* Missing values
* Invalid dates
* Inconsistent formats
* Incorrect data types
* Invalid business values

Testing helps ensure that the final Gold-layer data is reliable for analytical queries.

## 📚 Key Concepts Practiced

Through this project, I worked with:

* Relational databases
* SQL Server
* T-SQL
* ETL/ELT concepts
* Data cleaning
* Data transformation
* Data integration
* Medallion Architecture
* Star Schema
* Fact & Dimension tables
* SQL analytical functions
* Data quality testing
* Business-oriented data analysis
* Git/GitHub project documentation

## 🚀 Future Improvements

Possible extensions to the project include:

* Building an interactive dashboard using Power BI.
* Automating the ETL pipeline.
* Deploying the warehouse to a cloud platform.
* Adding scheduled data refreshes.
* Implementing additional data quality checks.
* Adding more advanced analytical queries.

## 👩‍💻 Project Purpose

This project was developed as a portfolio project to strengthen practical skills in **SQL, data engineering, data warehousing, and analytics**, with a focus on building an end-to-end data pipeline rather than only writing individual SQL queries.

