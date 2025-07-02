# DSA_SQL_PROJECT

MY FINAL PROJECT AS A STUDENT AT DIGITAL SKILL AFRICA


## Project Topic: Kultra Mega Stores (KMS) SQL Analysis

## Project Background

KMS headquartered in Lagos, specialises in office supplies and furniture. Its customer base includes individual consumers, small businesses (retail), and large corporate clients (wholesale) across Lagos, Nigeria

### Project Overview
This project is designed to help KMS analyze the order data from 2009 to 2012, present key insights and findings that can guide service improvement, marketing strategies, and customer engagement to support decision-making.

### Data Source:
A CSV File gotten from Digital Skill Africa Warehouse
- <a href="https://github.com/Hidaayah-7/DSA_SQL_PROJECT/blob/main/KMS%20Sql%20Case%20Study.csv//">Dataset</a>

### Tool Used
My SQL server 
- for Data Collection 
- for Data Cleaning and Preparation
- Analysis
  

### Data Cleaning and Preparation
At the initial stage of the Data Cleaning and Preparation, i performed the following actions;

1. Data Loading and Inspection into My SQL server
2. Ensure Appropriate Data Type
3. Allowed Null where Necessary
4. Removed Duplicate

### Analysis:  <a href="https://github.com/Hidaayah-7/DSA_SQL_PROJECT/blob/main/dsa%20query.sql">[View Here]</a>


 ### Exploratory Data Analysis
   This Exploratory Data Analysis (EDA) report aims to provide a comprehensive details of the Analysis performed.
   
#### Case Scenario I
1. Which product category had the highest sales?
2. What are the Top 3 and Bottom 3 regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
5. KMS incurred the most shipping cost using which shipping method


### Queries
 Which product category had the highest sales?

 








### CATEGORY VIEW INSIGHTS

- Top Revenue Generating Categories

 Smartphones $39M, Smart Televisions $26M and Smart Watches $13M

 These are the categories that dominates revenue, accounting for the bulk of total sales.


- Average Discount % by Category

 Highest 0.9 (Computers & Accessories, Electronics) and Lowest 0.82 (Shower & Wall Mounts)

 High discounts are clustered around tech categories, driving volume sales.


- Product Category with Highest Discount

 Wearable Tech 0.70 and Smartwatches 0.59

 Wearable tech has the highest discount among all, but it doesn’t top revenue or reviews.


### PRODUCT VIEW INSIGHTS

- Top Products by Average Rating (5.0 stars)

 Syncwire LTG to USB Cable, REDTECH USB-C to HDMI Cable, and Amazon Basics USB Extension

 Simple, affordable tech accessories are hitting perfect review scores


- Product with Discount > 50%

 VU 138 cm 4K TV $30K and ECOVACS DEEBOT Vacuum Cleaner $28K

 Premium electronics and appliances are being sold at steep discounts.


- Rating by Price Bucket

 $1,001–$5,000 bucketHighest product count (575)

 Most products fall into this mid-price range.


### METRICS OBSERVATION

Reviews vs. Revenue: Products with the most reviews are not always the top revenue drivers.

Smartwatches have high reviews (76) and discount (0.59) but generate lower revenue ($13M) than Smartphones.


 #### Recommendation:

Amazon should Considers improving the perceived value or functionality of Smartwatches to increase conversion from reviews to revenue.

Analyze if lower ASP (average selling price) is holding back revenue growth.


### RECOMMENDATIONS

I recommend that Amazon should:

- Revisit discounting strategy for top performers. Don’t over-discount items that already perform well.

- Consider reducing discount rates for high-performing products with inelastic demand.

- Use top-rated, low-cost products as “customer delight” tools—possibly include them as freebies or loyalty rewards.

- Prioritize Smartphones, Smart TVs, and Smartwatches for ad spend, and target upsell to accessories.

- Highlight 5-star rated products with lower visibility in key homepage placements to boost organic sales.

- Understand customer return rates, repeat purchase behavior, and profit margin by category for deeper insights.
