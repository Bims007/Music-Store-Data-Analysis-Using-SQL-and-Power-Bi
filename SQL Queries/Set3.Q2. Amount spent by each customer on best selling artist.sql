use music_store
/* Question Set 3 - Advance */

/* Q2: Find how much amount spent by each customer on best selling artists?
Write a query to return customer name, artist name and total spent */
;
With CTE AS (

SELECT Top 1 artist.name as artist_name,artist.artist_id as a_id,
sum(invoice_line.unit_price*invoice_line.quantity) as total_Spend  from invoice_line
 join track on
invoice_line.track_id = track.track_id
join album on 
track.album_id = album.album_id
join artist on 
album.artist_id = artist.artist_id
group by artist.name, artist.artist_id  
order by total_Spend desc
)

select customer.first_name as cx_firstname, customer.last_name as cx_lastname, 
artist_name, sum(invoice_line.unit_price*invoice_line.quantity) as total_Spend  
from customer
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
 join track on
invoice_line.track_id = track.track_id
join album on 
track.album_id = album.album_id
join cte on 
album.artist_id = cte.a_id
group by customer.first_name, customer.last_name, artist_name
order by total_Spend desc
