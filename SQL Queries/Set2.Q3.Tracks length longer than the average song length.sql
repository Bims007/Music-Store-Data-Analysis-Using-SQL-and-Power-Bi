
/* Question Set 2 - Moderate */

/* Q3: Return all the track names that have a song length longer than 
the average song length. Return the Name and Milliseconds for each 
track. Order by the song length with the longest songs listed first. */

 
 select name, Milliseconds from track
 where Milliseconds > ( select avg(milliseconds) from track )
 order by Milliseconds desc;
 