# IT-Asset-Inventory-Analysis
Analisis dan pengolahan data inventaris aset IT menggunakan Excel, SQL, dan Power BI

# IT Asset Inventory Analysis
### Data Cleaning | Exploratory Data Analysis | SQL Server | Power BI

## Project Overview

This project analyzes IT asset inventory data across multiple operational regions and sites to understand asset distribution, identify high-volume asset categories, and evaluate data quality.

The project uses **Microsoft Excel, SQL Server Management Studio (SSMS), and Power BI** to transform raw inventory records into actionable insights that can support inventory monitoring, asset reconciliation, and data quality improvement.

## Business Objectives

- Analyze IT asset distribution across MOR regions and operational sites.
- Identify the most common asset items by quantity.
- Evaluate inventory data quality, including missing and duplicate serial numbers.
- Develop an interactive dashboard for asset monitoring and reporting.
- Provide data-driven recommendations to improve inventory accuracy and traceability.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data cleaning, preparation, and exploratory data analysis |
| SQL Server / SSMS | Data validation, aggregation, ranking, and analytical queries |
| Microsoft Power BI | Interactive dashboard and data visualization |
| GitHub | Project documentation and portfolio presentation |

## Project Workflow

### 1. Data Cleaning & Preparation — Excel

Prepared the inventory dataset for analysis by reviewing data consistency, checking missing values, and preparing structured data for subsequent analysis.

Key activities:
- Reviewed inventory records and column consistency.
- Checked serial number completeness and potential duplicates.
- Prepared the dataset for exploratory analysis.
- Organized the cleaned dataset for SQL and Power BI workflows.

### 2. Exploratory Data Analysis — Excel

Performed exploratory data analysis using summary metrics, pivot tables, and charts.

The analysis focused on:
- Total asset quantity and number of records.
- Asset distribution across MOR regions.
- Asset distribution across sites.
- Most common asset items.
- Initial data quality indicators.

### 3. SQL Analysis — SQL Server Management Studio

Loaded and analyzed the inventory data using SQL Server.

SQL techniques used:
- `SELECT` and `WHERE` for data inspection and filtering.
- `COUNT`, `SUM`, and `COUNT(DISTINCT ...)` for summary metrics.
- `GROUP BY` and `ORDER BY` for asset distribution analysis.
- `TOP 10` for identifying high-volume sites and asset items.
- Common Table Expressions (CTEs) and `ROW_NUMBER()` for ranking sites within each MOR.
- Conditional filtering for missing and duplicate serial number analysis.

### 4. Interactive Dashboard — Power BI

Developed an IT Asset Inventory Dashboard to provide a consolidated view of inventory distribution and data quality.

Dashboard components:
- Asset overview KPIs.
- Asset distribution by MOR.
- Asset distribution by asset type.
- Top 10 sites by asset quantity.
- Top 10 asset items.
- Serial number data quality by MOR.
- Missing serial number and duplicate serial number indicators.
- Asset status completeness monitoring.

## Key Findings

The following findings are based on the current SQL analysis results.

| Metric | Result |
|---|---:|
| Total records | 3,316 |
| Total asset quantity | 4,316 |
| Total MOR regions | 8 |
| Total sites | 198 |
| Distinct asset items | 31 |
| Records with missing serial numbers | 372 |

### 1. Asset Distribution by MOR

MOR 6 has the highest recorded asset quantity, with **1,004 assets**, followed by MOR 8 with 626 assets, MOR 5 with 619 assets, and MOR 3 with 611 assets.

MOR 6 represents approximately **23.26% of the total asset quantity**.

**Business implication:** Regions with higher asset concentrations may require additional attention during inventory monitoring and reconciliation, depending on their operational scale.

### 2. Highest-Volume Site

The site identified as *Site KUN MOR VI, IT Balikpapan - FT dan IT Balikpapan - TLPG* has the highest reported asset quantity, with **457 assets**.

**Business implication:** This site can be considered for prioritized inventory verification because it has the largest recorded asset quantity among the analyzed sites.

### 3. Most Common Asset Items

The three highest-volume asset items are:

| Asset Item | Quantity |
|---|---:|
| Cisco IP Phone 7811 | 808 |
| J139 IP PHONE | 767 |
| Adaptor Cisco IP Phone 7811 | 746 |

**Business implication:** These items represent significant inventory volumes and may be useful starting points for asset monitoring, reconciliation, and stock planning.

### 4. Missing Serial Numbers

The analysis identified **372 records with missing or placeholder serial numbers**, equivalent to approximately **11.22% of all records**.

**Business implication:** Incomplete serial number information can make asset identification, physical verification, and inventory reconciliation more difficult.

### 5. Duplicate Serial Numbers

The SQL analysis identified serial numbers appearing more than once.

**Business implication:** Duplicate serial numbers should be investigated to distinguish duplicate data entry from legitimate business scenarios, such as repeated records or incorrect asset assignments.

The final number of affected serial numbers should be confirmed from the complete SQL query results before reporting it as a project KPI.

### 6. Asset Status Completeness

Asset status completeness is included in the Power BI dashboard and SQL validation workflow. The final finding requires reconciliation between the Excel, Power BI, and SQL Server results.

## Business Recommendations

Based on the findings, the following actions are recommended:

1. **Improve serial number completeness**  
   Review and complete the 372 records with missing or placeholder serial numbers.

2. **Investigate duplicate serial numbers**  
   Validate duplicate records against the source inventory and physical assets before making corrections.

3. **Prioritize inventory verification**  
   Consider high-volume sites and regions for targeted inventory reconciliation based on operational requirements.

4. **Standardize asset master data**  
   Establish consistent formats for asset names, serial numbers, site names, and status fields.

5. **Strengthen data quality monitoring**  
   Introduce regular checks for missing values, duplicates, and inconsistent records before dashboard reporting.

6. **Maintain a reliable reporting pipeline**  
   Validate consistency between the source dataset, SQL Server analysis, and Power BI dashboard when refreshing inventory data.

## Project Structure

The repository can be organized as follows:

```text
IT-Asset-Inventory-Analysis/
│
├── README.md
│
├── data/
│   └── README.md
│
├── excel/
│   └── README.md
│
├── sql/
│   ├── 01_Data_Validation.sql
│   ├── 02_Asset_Distribution.sql
│   ├── 03_Top_10_Sites.sql
│   ├── 04_Top_10_Asset_Items.sql
│   ├── 05_Data_Quality.sql
│   ├── 06_Advanced_Analysis.sql
│   └── 07_Business_Insights.sql
│
├── powerbi/
│   └── README.md
│
└── screenshots/
    └── dashboard.png
```

*Note:The filenames above are a suggested structure. Use the actual filenames of your saved project files when uploading the repository.

Project Outcomes

Through this project, I practiced the end-to-end data analysis workflow:

Data cleaning and preparation in Excel.

Exploratory data analysis using pivot tables and charts.

SQL-based data validation and aggregation.

Ranking and distribution analysis using SQL window functions.

Dashboard development and KPI visualization in Power BI.

Translating analytical results into business findings and recommendations.

Skills Demonstrated

Excel · Data Cleaning · Exploratory Data Analysis · SQL Server · T-SQL · Data Validation · Data Visualization · Power BI · Business Intelligence · Business Insights

Conclusion

This project demonstrates how IT asset inventory data can be transformed into structured analysis and an interactive reporting dashboard. By combining Excel, SQL Server, and Power BI, the project identifies asset distribution patterns and data quality issues that can inform inventory monitoring and improvement initiatives.

The analysis provides a foundation for improving asset traceability, inventory accuracy, and the reliability of management reporting.

## 📊 Preview Dashboard & Visualisasi
![IT Asset Dashboard Preview](Power%20BI/dashboard_preview.png)

Author: Robby Geraldy Pratama
Role: Aspiring Data Analyst
Tools: Microsoft Excel, SQL Server Management Studio, Microsoft Power BI
