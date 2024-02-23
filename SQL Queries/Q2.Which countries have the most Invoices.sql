/*	Question Set 1 - Easy */

/* Q2: Which countries have the most Invoices?  */

Select * from invoice
select top 1 count(Invoice_id) as total_invoices, billing_country from invoice 
group by billing_country
order by count(Invoice_id)desc
