create database KMS_ORDERS

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










