### **Sales-Data-Analysis-and-Visualization**

## Overview
This project demonstrates how to build a predictive sales forecasting model using **Power BI**, leveraging historical sales data to generate actionable insights. The project covers essential aspects such as data cleaning, transformation, and modeling using **Power Query**, creating advanced calculations with **DAX (Data Analysis Expressions)**, and building interactive visualizations for analyzing and forecasting sales trends. 

## Tools and Technologies
- **Power BI**: Used for data modeling, calculations, and visualizations.
- **Power Query**: For cleaning and transforming raw data.
- **DAX**: For creating complex calculations and time series forecasting measures.
- **Excel**: Source for historical sales data.

## Project Steps

### 1. Data Import and Cleaning
- Imported sales data from an Excel file into Power BI.
- Cleaned and transformed the data using **Power Query**:
  - Removed duplicates and handled missing values.
  - Formatted dates and normalized data for consistency.
  
### 2. Data Modeling
- Created relationships between tables (e.g., sales, products, customers) to form a **Star Schema**.
- Validated relationships to avoid circular dependencies.

### 3. DAX Measures
- Developed custom **DAX measures** for KPIs such as:
  - **Total Sales**
  - **Average Sales**
  - **Year-over-Year Growth**
- Utilized **time intelligence** DAX functions to calculate rolling averages and growth trends over time.

### 4. Predictive Modeling
- Implemented **DAX time series forecasting** using historical trends.
- Created dynamic "what-if" scenarios to simulate different sales conditions.

### 5. Dashboard Design
- Designed a fully interactive **Power BI dashboard**:
  - Visualized forecasted sales trends with line charts and bar graphs.
  - Enabled filters and slicers for interactive exploration by product, region, and customer segment.
  - Integrated KPIs to summarize sales performance.

## Key Insights
- **Historical Trends**: Insights on which products, regions, and time periods drove the most sales.
- **Future Forecast**: Predictive analysis of expected sales in upcoming quarters.
  
## Learning Outcomes
- **Data Cleaning and Transformation**: Practical experience with Power Query for cleaning and preparing sales data.
- **DAX**: Advanced use of DAX for predictive modeling and time intelligence calculations.
- **Dashboarding**: Designing interactive, user-friendly dashboards for real-time business insights.
- **Predictive Analytics**: Leveraging past sales data to forecast future performance.

## How to Use
1. Open the Power BI file.
2. Connect it to the provided Excel data source.
3. Explore the interactive dashboard to analyze historical sales and view forecasted trends.
  
## Future Improvements
- Enhance the predictive model using advanced machine learning techniques.
- Incorporate additional data sources for deeper insights (e.g., marketing spend, customer demographics).

