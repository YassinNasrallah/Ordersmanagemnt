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