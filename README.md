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

# Results and Insights
- *Top Product Category*: The product category with the highest sales was identified, allowing targeted marketing efforts.
- *Regional Performance*: The top 3 and bottom 3 regions in terms of sales were identified, aiding regional sales strategies.
- *Customer Segments*: Corporate customers contributed significantly to revenue, while small business customers had growth potential.
- *Shipping Costs*: Express Air, though fastest, incurred the highest costs, indicating potential areas for cost optimization.
- *Customer Profitability*: Certain customers were highly profitable, suggesting potential for loyalty programs.
- *Order Priorities*: Majority of orders were of normal priority, but high-priority orders had a significant share of total sales.
- *Order Analysis*: The most frequent order status was completed, with some delayed or returned orders highlighting areas for process improvement.

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
