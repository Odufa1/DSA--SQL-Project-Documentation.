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

## SQL Script
The SQL script below was used in SQL Server Management studio (SSMS) to generate key queries and insights.

[Uploading Kultra Mega Store DBcreate database KMS_ORDERS

Create Table KMS_Sales (
	[Row_ID] INT,
	[Order_ID] INT,
	[Order_Date] DATE,
	[Order_Priority] VARCHAR (50),
	[Order_Quantity] INT,
	Sales DECIMAL (10, 2),
	Discount Decimal (10, 2),
	[Ship_Mode] VARCHAR (50),
	Profit DECIMAL (10, 2),
	[Unit_Price] DECIMAL (10, 2),
	[Shipping_Cost] DECIMAL (10, 2),
	[Customer_Name] VARCHAR (255),
	Province VARCHAR (100),
	Region VARCHAR (100),
	[Customer_Segment] VARCHAR (100),
	[Product_Category] VARCHAR (100),
	[Product_Sub_Category] VARCHAR (100),
	[Product_Name] VARCHAR (MAX),
	[Product_Container] VARCHAR (100),
	[Product_Base Margin] DECIMAL (10, 2),
	[Ship_Date] DATE
	)

Select * from KMS_Sales

sELECT * From [KMS Sql Case Study]

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN sales DECIMAL(10, 3);

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN Discount DECIMAL(10, 3);

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN Profit DECIMAL(10, 3);

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN unit_price DECIMAL(10, 3);

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN shipping_cost DECIMAL(10, 3);

ALTER TABLE [kms Sql Case Study]
ALTER COLUMN product_base_margin DECIMAL(10, 4); 

Create Table ORDERS (
	[ORDER_ID] INT,
	Status VARCHAR (20) 
	)

Select * from [Order_Status]



-1----Product Category With The Highest Sale-----

Select product_Category,Sum ([sales]) as [Total sales]
from [dbo].[KMS Sql Case Study]
group by product_category
order by [Total sales] desc

-2---TOP 3 And Bottom 3 Regions In terms Of Sales-----

Select Top 3 region,
Sum (sales) as [Total_Sales]
from [dbo].[KMS Sql Case Study]
group by Region
order by [Total_Sales]asc


Select Top 3 region,
Sum (sales) as [Total_Sales]
from [dbo].[KMS Sql Case Study]
group by Region
order by [Total_Sales]desc


3---Total Sales Of Appliances In Ontario----

select product_sub_category, Sum (Sales) as [Total Sales]
From [dbo].[KMS Sql Case Study]
where Region = 'Ontario'
group by Product_Sub_Category


-4--Revenue from bottom 10 customers----

Select Top 10 customer_name,sum (sales) as [Total_Sales]
from [dbo].[KMS Sql Case Study]
group by [customer_name]
order by [Total_sales]asc

-5----Most shipping sost incurred----

select Top 1 ship_mode,sum (shipping_cost) as [Total_shipping_cost]
from [dbo].[KMS Sql Case Study]
group by [ship_mode]
order by [total_shipping_cost] desc

			CASE SCENARIO 2

--6--Most Valuable customers,and products they purchase-----

select customer_name,customer_segment,product_sub_category, 
sum (sales) as[total_sales]
from [dbo].[KMS Sql Case Study]
group by Customer_name, customer_segment, product_sub_category
order by [Total_sales] desc

--7---Small Business customer with the highest sales----

Select Top 1 
customer_name,sum (sales) as [Total_sales]
from [dbo].[KMS Sql Case Study]
where customer_segment = 'small business'
group by customer_name, customer_segment
order by [Total_sales]desc

--8---corporate customer who placed the most number of sales from 2009-2012----

select Top 1
customer_name,count (order_id) as Total_order
from [dbo].[KMS Sql Case Study]
where customer_segment = 'corporate'
group by customer_name
order by [Total_order] desc

--9--Most profitable consumer customer----

select Top 1
customer_name,sum(profit) as Total_profit
from [dbo].[KMS Sql Case Study]
where customer_segment = 'consumer'
group by customer_name
order by Total_profit desc

select * from [dbo].[KMS Sql Case Study]

select * from [dbo].[Order_Status]

select  [dbo].[KMS Sql Case Study].order_id,
		[dbo].[KMS Sql Case Study].customer_name,
		[dbo].[KMS Sql Case Study].customer_segment,
		[dbo].[Order_Status].order_id,
		[dbo].[Order_Status].status
from[dbo].[KMS Sql Case Study]
join [dbo].[Order_Status]
on[dbo].[Order_Status].order_id =[dbo].[KMS Sql Case Study].order_id

--10--customer who returned items and segment they belong to----

select Top 10 customer_name,customer_segment
from[dbo].[KMS Sql Case Study] as s
join [dbo].[Order_Status] as os
on s.order_id = os.order_id
where os.[status]= 'Returned'



--11--Company shipping cost based on the order of priority---

SELECT
   order_priority,ship_mode,count(order_id) AS [Total orders]
   from [dbo].[KMS Sql Case Study]
   Group by [order_priority],ship_mode
   order by [Total orders]Desc

   AVERAGE SHIPPING COST BY PRIORITY

Select
	order_priority,cast(Round(AVG(Shipping_cost),3) as Decimal (10,3))
	AS [Average shipping cost]
	from [dbo].[KMS Sql Case Study]
	Group by order_Priority
	order by [Average shipping cost]Desc

With TotalPerPriority As(Select
order_priority,count(order_id)As [Total orders]
from [dbo].[KMS Sql Case Study]
Group by order_Priority
)
select * from TotalPerPriority

With TotalPerPriority as (select order_priority,
Count (order_id) AS [Total Orders]
from [dbo].[KMS Sql Case Study]
Group by order_priority
) Select
k.order_priority,k.ship_mode,count(k.order_id)
AS [ORDER_COUNT],
CAST (Count(k.order_id)*100.0/tp.[Total orders]
AS DECIMAL (10, 2)) AS [Percentage of order]
from [dbo].[KMS Sql Case Study]k
Join TotalPerPriority tp
ON k.order_priority= tp.order_priority
Group by k.order_priority, k.ship_mode,tp.[Total orders]
Order By k.order_priority










.sql…]()

