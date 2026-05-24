-- Databricks notebook source
select * from `workspace`.`default`.`retail_sales_data` limit 10;

describe `workspace`.`default`.`retail_sales_data`;

select count(*) as total_rows,
avg(Age) as average_age,
min(Age) as minimum_age,
max(Age) as maximum_age,
sum(`Total Amount`) as total_sales,
avg(`Total Amount`) as avgerage_transaction
from `workspace`.`default`.`retail_sales_data`;

select count(*) as total_rows,
count(`Customer ID`) as customer_id_count,
count(`Product Category`) as product_category_count,
count(`Total Amount`) as sales_count
from `workspace`.`default`.`retail_sales_data`;

select *
from `workspace`.`default`.`retail_sales_data`
where Age < 0 or age > 100;

select * 
from `workspace`.`default`.`retail_sales_data`
where quantity < 0;

select distinct `Product Category`
from `workspace`.`default`.`retail_sales_data`;

select `Product Category`, 
sum(`Total Amount`) as total_sales
from `workspace`.`default`.`retail_sales_data`
group by `Product Category`
order by total_sales desc;

select Gender, 
count (*) as customers 
from `workspace`.`default`.`retail_sales_data`
group by Gender;

comment on table 
`workspace`.`default`.`retail_sales_data` Is
'Retail sales dataset containing transaction, customer, product, and revenue information for business analysis.';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Transaction ID` is 
'Unique identifier for each retail transaction';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Date` is 
'Date when the sales transaction ocurred';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Customer ID` is 
'Unique identifier for each customer';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Gender` is 
'Customer gender';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Age` is 
'Customer age in years';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Product Category` is 
'Category of product purchased';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Quantity` is 
'Number of products purchased in the transaction';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Price per Unit` is 
'Price of one product unit';

comment on column 
`workspace`.`default`.`retail_sales_data`.`Total Amount` is 
'Total sales amount for the transaction';

describe extended 
`workspace`.`default`.`retail_sales_data`;

select*
from `workspace`. `default`.`retail_sales_data`
limit 10;

--Total Revenue Generates by the store 
select sum(`Total Amount`) as total_revenue
from `workspace`.`default`.`retail_sales_data`;
--Best performing Product Category
select `Product Category`,
sum(`Total Amount`) as revenue_by_category
from `workspace`.`default`.`retail_sales_data`
group by `Product Category`;
--Average Spending by gender
select Gender,
avg(`Total Amount`) as avgerage_revenue
from `workspace`.`default`.`retail_sales_data`
group by Gender;
