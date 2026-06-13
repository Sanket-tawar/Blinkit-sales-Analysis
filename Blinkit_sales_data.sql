SELECT* FROM sales_data limit 5;

SELECT sum(sales) as Total_Sales FROM sales_data;

SELECT avg(sales) from sales_data;

SELECT item_type, SUM(sales) from sales_data
group by item_type
ORDER by sum(sales);

SELECT item_type, item_identifier, sum(sales) as total_sale from sales_data
GROUP by item_type, item_identifier
order by total_sale DESC 
limit 10;

SELECT outlet_type,  sum(sales) as total_sale from sales_data
GROUP by outlet_type
order by total_sale desc;

SELECT outlet_size,  sum(sales) as total_sale from sales_data
GROUP by outlet_size
order by total_sale desc;

SELECT outlet_location_type,  sum(sales) as total_sale from sales_data
GROUP by outlet_location_type
order by total_sale desc;

SELECT item_type, round(avg(rating),2) as average_rating from sales_data
GROUP by item_type
order by average_rating desc;

SELECT item_fat_content, avg(sales), sum(sales) from sales_data
GROUP by item_fat_content
order by avg(sales), sum(sales) desc;

SELECT outlet_establishment_year,  sum(sales) as total_sale from sales_data
GROUP by outlet_establishment_year
order by outlet_establishment_year desc;

SELECT outlet_identifier, sum(sales) as total_sale from sales_data
group by outlet_identifier
order by total_sale desc;

SELECT item_type, sum(sales) as Sales, round(sum(sales) * 100 / (SELECT sum(sales) FROM sales_data), 2) as contribution_in_sales
from sales_data
GROUP by item_type
ORDER by Sales DESC;

SELECT item_type, avg(item_visibility) as avg_visiblity, sum(sales) from sales_data
GROUP by item_type
ORDER by item_type;

SELECT outlet_size, sum(sales), rank() over(
order by sum(sales) DESC 
) as sales_rank
from sales_data
GROUP by outlet_size;

