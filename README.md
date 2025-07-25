# DSA_SQL_PROJECT

MY FINAL PROJECT AS A STUDENT AT DIGITAL SKILL AFRICA


## Project Topic: Kultra Mega Stores (KMS) SQL Analysis

## Project Background

KMS headquartered in Lagos, specialises in office supplies and furniture. Its customer base includes individual consumers, small businesses (retail), and large corporate clients (wholesale) across Lagos, Nigeria

### Project Overview
This project is designed to help KMS analyze the order data from 2009 to 2012, present key insights and findings that guides service improvement, marketing strategies, and customer engagement to support decision-making.

### Data Source:
A CSV File gotten from Digital Skill Africa Warehouse
- <a href="https://github.com/Hidaayah-7/DSA_SQL_PROJECT/blob/main/KMS%20Sql%20Case%20Study.csv//">Dataset</a>

### Tool Used
My SQL server 
- for Data Collection 
- for Data Cleaning and Preparation
- Analysis
  

### Data Cleaning and Preparation
At the initial stage of the Data Cleaning and Preparation, I performed the following actions;

1. Data Loading and Inspection into My SQL server
2. Ensure Appropriate Data Type
3. Allowed Null where Necessary
4. Removed Duplicate

### Analysis:  <a href="https://github.com/Hidaayah-7/DSA_SQL_PROJECT/blob/main/dsa%20query.sql">[View Here]</a>


 ### Exploratory Data Analysis
   This Exploratory Data Analysis (EDA) report aim at providing a comprehensive details of the Analysis performed on the Order Data.
   
### Case Scenario I
1. Which product category had the highest sales?
2. What are the Top 3 and Bottom 3 regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
5. KMS incurred the most shipping cost using which shipping method

### Case Scenario II
6. Who are the most valuable customers, and what products or services do they typically purchase?
7. Which small business customer had the highest sales?
8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
9. Which consumer customer was the most profitable one?
10. Which customer returned items, and what segment do they belong to?
11. If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company appropriately spent shipping costs based on the Order Priority? Explain your answer


### Queries
-  Which product category had the highest sales?


```
 SELECT TOP 3 Product_category, sales
 from [KMS Sql Case Study]

 ```


 ![dsa 1](https://github.com/user-attachments/assets/72680517-c9ac-492f-a704-ed443cd03630)


- What are the Top 3 and Bottom 3 regions in terms of sales?

```
 SELECT TOP 3 Region,sales
 from [KMS Sql Case Study]
 union all
 SELECT TOP 3 Region,sales
 from [KMS Sql Case Study]
 order by sales asc

 ```

![dsa 2](https://github.com/user-attachments/assets/edb9a8dd-425a-40f7-8ce3-71b104d90313)

- What were the total sales of appliances in Ontario?


```
 select Product_Sub_Category, region,  sum(Sales) as total_sales
 from [KMS Sql Case Study]
 where region = 'Ontario' and Product_Sub_Category = 'appliances'
  group by Product_Sub_Category, Region

 ```

![dsa 3](https://github.com/user-attachments/assets/5098d35a-13ea-4057-8055-f1c65b18bad3)



- Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers


1. Price adjustment

2. Provide dedicated support or premium services

3. Customize product/services to meet their needs


 
- KMS incurred the most shipping cost using which shipping method


```
SELECT TOP 5 Shipping_Cost, Ship_Mode
 from [KMS Sql Case Study]
 order by shipping_cost desc

 ```

![dsa 4](https://github.com/user-attachments/assets/abd6ce26-7acb-4ce8-82d6-b6de0c861578)


- Who are the most valuable customers, and what products or services do they typically purchase?


```
SELECT TOP 10 CUSTOMER_NAME, PRODUCT_NAME, PRODUCT_SUB_CATEGORY, SUM(SALES) AS TOTAL_SALES
 FROM [KMS SQL CASE STUDY]
 GROUP BY SALES, CUSTOMER_NAME, PRODUCT_NAME, PRODUCT_SUB_CATEGORY
 ORDER BY TOTAL_SALES DESC

 ```

![dsa 5](https://github.com/user-attachments/assets/bff6692d-6d1e-4d31-b7ae-99fed5b13d5f)


- Which small business customer had the highest sales?


```
SELECT TOP 1 CUSTOMER_NAME, CUSTOMER_SEGMENT, SUM(SALES) AS TOTAL_SALES
  FROM [KMS SQL CASE STUDY]
  WHERE CUSTOMER_SEGMENT = 'SMALL BUSINESS' 
  GROUP BY CUSTOMER_SEGMENT, CUSTOMER_NAME
 ```

  ![dsa 6](https://github.com/user-attachments/assets/6f6928e0-9d03-4bae-8920-ebe9833d65e7)


-  Which Corporate Customer placed the most number of orders in 2009 – 2012?


 ```
SELECT TOP 1 CUSTOMER_NAME, CUSTOMER_SEGMENT, SUM(ORDER_QUANTITY) AS TOTAL_ORDERS, SUM(SALES) AS TOTAL_SALES
  FROM [KMS SQL CASE STUDY]
  WHERE CUSTOMER_SEGMENT = 'CORPORATE' AND YEAR(ORDER_DATE)  BETWEEN 2009 AND  2012
  GROUP BY CUSTOMER_SEGMENT, CUSTOMER_NAME
  ORDER BY TOTAL_ORDERS DESC
 ```

 ![dsa 7](https://github.com/user-attachments/assets/29859277-66d8-40db-a7e9-d73f41b89371)

 
- Which consumer customer was the most profitable one?


 ```
SELECT TOP 1 CUSTOMER_SEGMENT, CUSTOMER_NAME, SUM(ORDER_QUANTITY) AS TOTAL_ORDERS, SUM(SALES) AS TOTAL_SALES, SUM(PROFIT) AS TOTAL_PROFIT
  FROM [KMS SQL CASE STUDY]
  GROUP BY CUSTOMER_SEGMENT, CUSTOMER_NAME
  ORDER BY TOTAL_PROFIT DESC
 ```


![dsa 8](https://github.com/user-attachments/assets/c0c0497a-a3f7-40a4-a46a-afc868146140)


- Which customer returned items, and what segment do they belong to?


 ```
SELECT  CUSTOMER_NAME,ORDER_ID, CUSTOMER_SEGMENT, PROFIT
  FROM [KMS SQL CASE STUDY]
  WHERE PROFIT < 0
  ORDER BY PROFIT ASC
 ```


 ![dsa 9](https://github.com/user-attachments/assets/b74e0e38-a022-480a-a0bd-bd4d05277ab2)

 
- If the delivery truck is the most economical but the slowest shipping method and
Express Air is the fastest but the most expensive one, do you think the company
appropriately spent shipping costs based on the Order Priority? Explain your answer

Yes, they spent shipping costs based on the Order Priority but majority of the items were returned.



























