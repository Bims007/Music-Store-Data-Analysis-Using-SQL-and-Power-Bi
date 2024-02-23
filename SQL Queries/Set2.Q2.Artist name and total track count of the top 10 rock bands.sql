
/* Question Set 2 - Moderate */

/* Q2: Let's invite the artists who have written the most rock music
in our dataset. Write a query that returns the Artist name and total 
track count of the top 10 rock bands. */

select top 10 artist.name, count(track_id) as total_tracks from artist
join album on artist.artist_id = album.artist_id
join track on 
track.album_id= album.album_id
join genre on track.genre_id = genre.genre_id
where genre.name like 'Rock'
group by artist.name
order by total_tracks desc;