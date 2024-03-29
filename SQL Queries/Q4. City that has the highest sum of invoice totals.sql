/*	Question Set 1 - Easy */

/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */


select Top 1 billing_city, sum(total) as invoice_total 
from invoice 
group by billing_city
order by invoice_total desc
