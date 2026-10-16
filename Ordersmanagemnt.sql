-- level 1: Explore the table

select * from sample limit 10;
-- display the first 10 rows

select COUNT(*) from sample;

-- list all unique regions without repeat
select distinct Region
from sample;

-- list all unique categories without repeat
select distinct Category
from sample;

-- level 2 : filter and sort

-- show all the orders from the west
select * from sample
where Region = 'West';

-- find orders where sales is greater than 500
select * from sample
where Sales > 500;

-- find orders in the technology category with a profite above 0
select * from sample
where Category = 'Technology' and Profit > 0;

-- find orders shipped with ship mode 'first class' or 'same day'
select * from sample
where `Ship Mode` = 'First Class'
or `Ship Mode` = 'Same Day';

-- Backend-style queries
select * from sample
where `Product Name` like "%chair%"; 

-- select one specific row orders
select * from sample
where `Order ID` = 'CA-2016-152156';

-- pagination
select *
from sample
limit 20
offset 0;

-- latest show the 5 most recent orders by order date
select * from sample
order by `Order Date` desc limit 5

-- filter by costumers
select * from sample
where `Customer ID` = 'SP-20620'

-- TOTAL AND STATE
-- calcule the total state
select sum(Sales)
from sample;

-- calcule the totoal profite
select sum(Profit)
from sample;

-- the avargare sales per rows
select avg(Sales)
from sample;

-- find the highest and lowest Sales values
select Max(Sales) as Hightest_value, Min(Sales) as Lowest_values
from sample;

-- count how many defrent customers exist
select count(distinct Segment) from sample;

-- Groupt data
-- total sales for each category
select Category, sum(Sales) from sample
group by Category;

-- number of orders for each region
select Region, count(`order ID`) from sample
group by Region;

-- total profit for each Segment
select Segment, sum(Profit) from sample
group by Segment;

-- top 5 consumers by total sales
select `Customer Name`, sum(Sales) as Total_sales from sample
group by `Customer Name`
order by total_sales desc 
limit 5;


-- customers who have more than 10 rows(use having)
select `Customer Name`, COUNT(*) as total_rows from sample
group by `Customer Name`
having total_rows > 10;

-- total sales for each year
select Year(`Order Date`) as year, sum(Sales) from sample
group by year;
