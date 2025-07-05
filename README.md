# DSA--SQL-Project-Documentation.

# Project Topic
*SQL Data Analysis and Case Study of Kultra Mega Stores Inventory*

---

# Project Overview
This project involves analyzing the sales, inventory, and customer data of Kultra Mega Stores (KMS), a prominent retail chain based in Lagos, Nigeria. The goal is to utilize SQL queries to extract insightful business intelligence such as top-performing products, regions, customer segments, and shipment costs. The analysis supports strategic decision-making to optimize sales, reduce costs, and improve customer satisfaction.

---

# Dataset Description
The dataset comprises multiple tables with detailed records of orders, sales, order statuses, customer segments, product categories, shipment modes, and related metrics from 2009 to 2012. Key tables include:
- *KMS_Sales*: Contains sales details like order ID, date, quantity, discounts, unit prices, shipping costs, and profit.
- *Order Status*: Tracks the status of each order.
- *Customer Data*: Includes customer names, segments, and regions.
- *Product Data*: Details product categories, subcategories, containers, and margins.
- *Shipment Data*: Contains shipment modes, priorities, and costs.

---

# Tools Used
- *Microsoft SQL Server Management Studio (SSMS)*: For database creation, querying, and data analysis.
- *SQL Language*: For data manipulation, aggregation, and analysis.
- *Excel (Optional)*: For any supplementary data visualization or reporting.

---

# Exploratory Data Analysis
The analysis involved executing SQL queries to:
- Identify the product category with the highest sales.
- Determine the top and bottom regions in terms of sales.
- Calculate total sales of appliances in Ontario.
- Recommend strategies to increase revenue from the bottom 10 customers.
- Analyze shipping costs based on different shipping methods.
- Find the most valuable customers and products.
- Study customer purchase patterns and order frequencies.
- Calculate the proportion of orders by different order priorities.
- Identify the most profitable customers based on sales and profit margins.
- Explore order status details and shipment modes.

---

## 🔹 Case Study Questions & Insights

### 1. Which product category had the highest sales?

📌 **Insight**: The **Technology** category generated the highest total sales. This suggests a strong market demand and presents an opportunity to focus more marketing, stock, and promotional efforts on this category.

---

### 2. What are the top 3 and bottom 3 regions in terms of sales?

📌 **Insight**: 
- The **Top 3 regions** by sales were: **West**, **Central**, and **South**.
- The **Bottom 3 regions** recorded significantly lower sales, indicating a need for improved marketing efforts or better supply chain access in those regions.

---

### 3. What were the total sales of appliances in Ontario?

📌 **Insight**: Appliances generated a notable volume of sales in Ontario. This could imply a growing regional demand, making it a potential area for targeted product expansion or bundled offers.

---

### 4. Who are the bottom 10 customers in terms of revenue?

📌 **Insight**: The bottom 10 customers contributed the least to total sales. These accounts may require follow-up for feedback, targeted promotions, or potential churn analysis.

---

### 5. Which shipping mode incurred the highest total shipping cost?

📌 **Insight**: **Express Air** was identified as the shipping mode with the highest total cost. This may suggest inefficiencies or an opportunity to encourage cost-effective alternatives for lower-priority orders.

---

### 6. Who are the most valuable customers and what products do they purchase?

📌 **Insight**: High-value customers were identified based on sales volume. Understanding the product sub-categories they purchase helps in developing personalized offers, loyalty programs, and retention strategies.

---

### 7. Which small business customer had the highest sales?

📌 **Insight**: A standout small business customer generated the most sales in this segment, signaling a potential for deeper business collaboration or strategic account management.

---

### 8. Which corporate customer placed the most orders from 2009–2012?

📌 **Insight**: The top-performing corporate customer by order count demonstrates consistent purchase behavior and could benefit from a long-term relationship strategy, volume discounts, or a dedicated account manager.

---

### 9. Which consumer customer generated the most profit?

📌 **Insight**: This customer contributed the highest profit in the consumer segment. They represent a highly valuable persona for upselling, exclusive offers, or retention campaigns.

---

### 10. Which customers returned items and what segments do they belong to?

📌 **Insight**: Returned items were associated with a specific set of customers across multiple segments. This can help investigate product quality, shipping issues, or unmet expectations, and reduce return rates.

---

### 11. How does shipping cost vary by order priority?

📌 **Insight**: 
- Orders marked as **"Critical"** or **"High"** were frequently shipped via more expensive modes like **Express Air**.
- However, in some cases, low-priority orders used premium shipping, indicating potential inefficiencies.
- Encouraging better alignment between **order priority** and **shipping mode** can reduce overall logistics costs.


---

# Recommendations
- Focus marketing on high-value product categories and regions.
- Optimize shipping modes to balance cost and delivery speed.
- Implement loyalty programs targeting the most profitable customer segments.
- Streamline order processing to minimize delays and returns.
- Reassess shipping strategies to reduce costs, especially for express modes.
- Enhance customer segmentation for personalized marketing.

---

# Limitations
- The analysis is limited to data from 2009-2012; recent trends are not captured.
- Data quality and completeness are assumed; missing or inaccurate data could affect insights.
- External factors like market conditions, competitors, or economic changes are not considered.
- The dataset does not include detailed customer feedback or satisfaction metrics.

---

# References
- *SQL Server Management Studio Documentation*: [Microsoft Docs](https://docs.microsoft.com/en-us/sql/ssms/sql-server-management-studio)
- *SQL Query Optimization Techniques*: Various online tutorials and guides.
- *Business Intelligence Best Practices*: Literature on retail sales analysis and customer segmentation.

---

# Conclusion
This project demonstrates practical SQL skills in analyzing retail data to derive meaningful business insights. The findings can help Kultra Mega Stores improve sales strategies, optimize operations, and enhance customer engagement. Future work could involve integrating additional data sources, implementing real-time dashboards, and applying advanced analytics such as predictive modeling.












