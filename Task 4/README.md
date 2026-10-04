# Amazon Sales Analytics Dashboard

## 📌 Project Overview

This project analyzes Amazon sales data to understand sales performance, customer behavior, product performance, order status, fulfilment, and geographic sales distribution.

The project follows a complete data analytics workflow:

**Raw Data → Python Data Cleaning & EDA → SQL Analysis → Power BI Dashboard**

The objective is to transform raw e-commerce data into meaningful business insights through data cleaning, exploratory analysis, SQL queries, and an interactive Power BI dashboard.

---

## 🎯 Objectives

- Analyze overall sales and order performance.
- Identify top-performing product categories and SKUs.
- Analyze B2B and B2C customer sales.
- Study order status and cancellation patterns.
- Analyze fulfilment and courier status.
- Compare shipping service levels.
- Identify high-performing states by sales and orders.
- Build an interactive and professional Power BI dashboard.

---

## 📂 Project Structure

```text
Amazon-Sales-Analytics/
│
├── README.md
│
├── data/
│   └── Amazon_Sale_Report.csv
│
├── notebooks/
│   └── Amazon_Sales_Cleaning_EDA.ipynb
│
├── sql/
│   └── Amazon_Sales_Queries.sql
│
├── dashboard/
│   └── Amazon_Sales_Analytics_Dashboard.pbix
│
└── images/
    └── Dashboard_Screenshot.png
```

> File names can be adjusted to match the actual names used in the repository.

---

## 🗃️ Dataset

The dataset contains Amazon e-commerce order and sales information.

### Main columns

- Order ID
- Date
- Status
- Fulfilment
- Sales Channel
- Ship Service Level
- Style
- SKU
- Category
- Size
- ASIN
- Courier Status
- Qty
- Currency
- Amount
- Ship City
- Ship State
- Ship Postal Code
- Ship Country
- Promotion IDs
- B2B

The dataset contains approximately **129K order records**.

---

## 🐍 Python: Data Cleaning & EDA

Python and Jupyter Notebook were used for data preparation and exploratory data analysis.

### Libraries

- Pandas
- NumPy
- Matplotlib

### Major cleaning activities

- Loaded the raw Amazon sales dataset.
- Inspected rows, columns, and data types.
- Checked duplicate records.
- Identified missing values.
- Analyzed categorical columns.
- Checked numerical columns such as `Qty` and `Amount`.
- Converted the `Date` column into an appropriate date format.
- Identified missing values in important fields such as `Amount`, `Currency`, and shipping information.
- Created/used a zero-quantity flag where required.
- Prepared the cleaned data for SQL analysis and Power BI.

---

## 🗄️ SQL Analysis

The cleaned Amazon sales data was imported into PostgreSQL for structured analysis.

SQL was used to answer business questions such as:

- Which categories generate the highest sales?
- What are the total sales and total orders?
- Which SKUs perform best?
- What is the order-status distribution?
- What is the cancellation performance?
- How do different fulfilment methods compare?
- What is the B2B vs B2C distribution?
- Which states generate the most sales?
- How does shipping service level affect order distribution?
- What are the major operational patterns?

The SQL queries used for the analysis are available in:

`sql/Amazon_Sales_Queries.sql`

---

## 📊 Power BI Dashboard

The final interactive dashboard is divided into three pages.

### 1. Executive Sales Overview

Focuses on overall business performance.

Key components:

- Total Sales
- Total Orders
- Average Order Value
- Cancellation Rate
- Sales Trend
- Category-wise Sales
- Order Status Distribution
- Sales contribution analysis

### 2. Product & Sales Analysis

Focuses on product and customer-level analysis.

Key components:

- Customer Type (B2B/B2C)
- Sales Channel
- Category and Size analysis
- Top 10 SKUs
- B2B vs B2C Sales
- Product-level analysis
- Category × Size analysis

### 3. Operations & Geography

Focuses on fulfilment, delivery, and geographic performance.

Key components:

- Order Status
- Fulfilment Analysis
- Courier Status
- Shipping Service Level
- State-wise Sales Map
- State-wise Orders
- Geographic performance analysis

---

## 📈 Key Measures

The Power BI dashboard uses measures such as:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Cancelled Orders
- Cancellation Rate

Example:

```DAX
Total Sales =
SUM(amazon_sales[Amount])
```

```DAX
Total Orders =
DISTINCTCOUNT(amazon_sales[Order ID])
```

```DAX
Average Order Value =
DIVIDE([Total Sales], [Total Orders], 0)
```

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and EDA |
| Jupyter Notebook | Data analysis documentation |
| Pandas | Data manipulation |
| NumPy | Numerical analysis |
| Matplotlib | Visualization |
| PostgreSQL | SQL-based analysis |
| Power BI | Interactive dashboard |
| GitHub | Project version control and documentation |

---

## 🔄 Project Workflow

```text
Raw Amazon Sales Data
          ↓
Python / Pandas
          ↓
Data Cleaning & EDA
          ↓
PostgreSQL
          ↓
SQL Business Analysis
          ↓
Power BI
          ↓
Interactive Dashboard
          ↓
Business Insights
```

---

## 💡 Business Insights

The final dashboard can be used to identify:

- High-performing product categories.
- Top-selling SKUs.
- Sales trends over time.
- Order cancellation patterns.
- Differences between B2B and B2C customers.
- Fulfilment and courier performance.
- Preferred shipping service levels.
- High-performing geographic regions.
- Areas that may require operational improvement.

> Add your final numerical insights here after completing the dashboard. For example: highest-sales category, top state, cancellation rate, and top SKU.

---

## 🖼️ Dashboard Preview

Add your final Power BI screenshots to the `images/` folder and update this section.

Example:

```markdown
![Amazon Sales Dashboard](images/Dashboard_Screenshot.png)
```

You can also add separate screenshots:

```markdown
![Executive Overview](images/page1.png)

![Product & Sales Analysis](images/page2.png)

![Operations & Geography](images/page3.png)
```

---

## 🚀 Future Improvements

Possible future improvements include:

- Adding automated data refresh.
- Adding more advanced customer segmentation.
- Adding predictive sales forecasting.
- Adding anomaly detection.
- Adding advanced geographic analysis.
- Connecting Power BI directly to a production database.
- Adding machine learning-based sales prediction.

---

## 👨‍💻 Author

**Ankit Yadav**

B.Tech – Computer Science Engineering

Interested in Data Analytics, Data Science, Machine Learning, and Business Intelligence.

---

## ⭐ Project Highlights

This project demonstrates an end-to-end data analytics workflow:

**Data Cleaning → EDA → SQL → Visualization → Business Intelligence**

The project is designed to demonstrate practical skills in **Python, SQL, PostgreSQL, Power BI, data visualization, and business analysis**.
