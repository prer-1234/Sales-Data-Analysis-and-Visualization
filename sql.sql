create database project4;
CREATE TABLE PizzaOrder (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price FLOAT,
    total_price FLOAT,
    pizza_size VARCHAR(50),
    pizza_category VARCHAR(50),
    pizza_ingredients VARCHAR(200),
    pizza_name VARCHAR(50),
    PRIMARY KEY (pizza_id, order_id)
);

-- Total Revenue 817860.0508384705
select sum(total_price) as revenue from pizzaorder;

-- Avg. order Value 38.30726233435459
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizzaorder;

-- Total Pizzas sold 49574
select sum(quantity) as Total_Pizzas from pizzaorder;

-- Total orders 21350
SELECT COUNT(DISTINCT order_id) AS orders FROM pizzaorder;

-- Avg Pizzas per order 2.32     
select round(sum(quantity) / COUNT(DISTINCT order_id),2) as Avg_Pizzas_per_order from pizzaorder;

-- Daily Trend for Total Orders
select dayname(order_date), count(distinct order_id) from pizzaorder group by dayname(order_date) order by
dayname(order_date) ;

-- Monthly Trend for Orders
select monthname(order_date), count(distinct order_id) from pizzaorder group by monthname(order_date) order by
monthname(order_date) ;

-- % of Sales by Pizza Category
select pizza_category , round(sum( total_price),2) as revenue_by_category, round(sum( total_price),2) / (
select sum(total_price) as revenue from pizzaorder ) * 100 as sales from pizzaorder group by pizza_category;

-- % of Sales by Pizza Size
select pizza_size , round ( round(sum( total_price),2) / (
select sum(total_price) as revenue from pizzaorder ) * 100 , 2) as Sales_by_Pizza_Size
from pizzaorder group by pizza_size;

-- Total Pizzas Sold by Pizza Category
select sum(quantity) , pizza_category from pizzaorder group by pizza_category;

-- Top 5 Pizzas by Revenue
select pizza_name , sum(total_price) from pizzaorder group by pizza_name order by sum(total_price) desc limit 5;

-- Bottom 5 Pizzas by Revenue
select pizza_name , sum(total_price) from pizzaorder group by pizza_name order by sum(total_price) asc limit 5;

-- Top 5 Pizzas by Quantity
select sum(quantity) , pizza_name from pizzaorder group by pizza_name order by sum(quantity) desc limit 5;

-- Bottom 5 Pizzas by Quantity
select sum(quantity) , pizza_name from pizzaorder group by pizza_name order by sum(quantity) asc limit 5;

-- Top 5 Pizzas by Total Orders
select count(distinct order_id) , pizza_name from pizzaorder group by pizza_name order by sum(quantity) desc limit 5;

-- Borrom 5 Pizzas by Total Orders
select count(distinct order_id) , pizza_name from pizzaorder group by pizza_name order by sum(quantity) asc limit 5;


