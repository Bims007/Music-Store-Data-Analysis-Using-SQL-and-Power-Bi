/*	Question Set 1 - Easy */

/* Q1: Who is the senior most employee based on job title? */

select top 1 employee_id, last_name, first_name
from employee 
order by levels desc

