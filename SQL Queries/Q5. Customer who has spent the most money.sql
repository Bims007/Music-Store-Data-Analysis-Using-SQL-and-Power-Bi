/*	Question Set 1 - Easy */

/* Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money.*/

With cte as (
select top 1 c.first_name as firstname, c.last_name as lastname, sum(total) as total_Spending
from customer c 
join invoice i 
on c.customer_id = i.customer_id
group by c.first_name, c.last_name
order by total_Spending desc)
select firstname, lastname from cte

