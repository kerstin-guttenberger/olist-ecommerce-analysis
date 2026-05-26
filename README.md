# olist-ecommerce-analysis

End-to-end data analysis project based on the Brazilian E-Commerce Public Dataset by Olist.  
The project focuses on sales performance, customer behavior, and delivery efficiency using SQL, SQLite, Jupyter Notebook, and Power BI.

## Dataset

Dataset source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Download with `kagglehub`:

```python
import kagglehub

path = kagglehub.dataset_download("olistbr/brazilian-ecommerce")
```
## Project Workflow
- Imported all CSV files into a SQLite3 database
- Created SQL queries in Jupyter Notebook for exploratory analysis
- Connected the .db file to Power BI using an ODBC driver
- Cleaned and transformed the data in Power BI:
    - removed duplicates
    - adjusted column data types
    - converted e.g. timestamps to the correct data type or ZIP codes to strings for better handling
    - transformed geospatial data into latitude/longitude values for map visualizations
- Rebuilt and optimized table relationships in the Power BI model view

## Analysis Overview
The explored business questions in the Jupyter Notebook:
1. Which tables are included in the Olist Database?
2. How large is the dataset in e.g. the orders table?
3. What time period does the data cover?
4. What are the top 20 product categories by revenue of the sample?
5. How many orders were placed per year and what percentage of them were delayed?
6. How did the customers review their orders in 2017 and 2018?

## Tools Used
- SQLite3
- SQL
- Jupyter Notebook
- Power BI Desktop
- Python (including libraries e.g.: Pandas, Matplotlib, Seaborn, Kagglehub)