SELECT * FROM [KMS Sql Case Study]


 --Which product category had the highest sales?
 SELECT TOP 3 Product_category, sales
 from [KMS Sql Case Study]

 --2.	What are the Top 3 and Bottom 3 regions in terms of sales?

  SELECT TOP 3 Region,sales
 from [KMS Sql Case Study]
 union all
 SELECT TOP 3 Region,sales
 from [KMS Sql Case Study]
 order by sales asc


  --What were the total sales of appliances in Ontario?

  select Product_Sub_Category, region,  sum(Sales) as total_sales
  from [KMS Sql Case Study]
  where region = 'Ontario' and Product_Sub_Category = 'appliances'
  group by Product_Sub_Category, Region

--KMS incurred the most shipping cost using which shipping method?

SELECT TOP 5 Shipping_Cost, Ship_Mode
 from [KMS Sql Case Study]
 order by shipping_cost desc


 --Who are the most valuable customers, and what products or services do they typically
--purchase?

SELECT TOP 10 customer_name, product_name, Product_Sub_Category, sum(sales) as total_sales
 from [KMS Sql Case Study]
 group by Sales, Customer_Name,Product_Name, Product_Sub_Category
 order by total_sales desc


 --. Which small business customer had the highest sales?

 select top 1 customer_name, customer_segment, sum(Sales) as total_sales
  from [KMS Sql Case Study]
  where Customer_Segment = 'small business' 
  group by Customer_Segment, Customer_Name
  

  --. Which Corporate Customer placed the most number of orders in 2009 – 2012?


  select top 1 customer_name, Customer_Segment, sum(Order_Quantity) as total_orders, sum(Sales) as total_sales
  from [KMS Sql Case Study]
  where Customer_Segment = 'corporate' and year(Order_Date)  between 2009 and  2012
  group by Customer_Segment, Customer_Name
  order by total_orders desc
  
  --Which consumer customer was the most profitable one?

  select top 1 Customer_Segment, Customer_Name, sum(Order_Quantity) as total_orders, sum(Sales) as total_sales, sum(profit) as total_profit
  from [KMS Sql Case Study]
  group by Customer_Segment, Customer_Name
  order by total_profit desc

  --Which customer returned items, and what segment do they belong to?

  select  customer_name,Order_ID, customer_segment, Profit
  from [KMS Sql Case Study]
  where Profit < 0
  order by Profit asc