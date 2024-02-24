use music_store
/* Question Set 3 - Advance */

/* Q4: Write a query that determines the customer that has spent the most on music for each country. 
Write a query that returns the country along with the top customer and how much they spent. 
For countries where the top amount spent is shared, provide all customers who spent this amount. */

/* Steps to Solve:  Similar to the above question. There are two parts in question- 
first find the most spent on music for each country and second filter the data for respective customers. */
;
with CTE as (select first_name , last_name, billing_country, sum(total) as total_spending, 
row_number() over (partition by billing_country
order by sum(total) desc) as rowno
from customer join 
invoice on 
customer.customer_id = invoice.customer_id 
group by first_name, last_name, billing_country
)
select first_name, last_name, billing_country, total_spending
from cte
where rowno <=1
order by total_spending desc
