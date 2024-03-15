-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT  a2.album_tittle  FROM genre g 
JOIN genre_artist ga ON ga.genre_id = g.genre_id
JOIN artist a ON ga.artist_id = a.artist_id 
JOIN album_artist aa ON a.artist_id = aa.artist_id 
JOIN album a2 ON aa.album_id = a2.album_id
GROUP BY a2.album_id 
HAVING COUNT(g.genre_id) > 1;


-- 2. Наименование треков которые не входят в сборники.

SELECT t.track_name FROM track t
   WHERE t.track_name NOT IN (
   SELECT DISTINCT t.track_name FROM collection c 
   LEFT JOIN collection_track ct ON ct.collection_id = c.collection_id
   JOIN track t ON ct.track_id = t.track_id 
   ); 

-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

SELECT ar.nick_name FROM track t 
JOIN album a ON t.album_id = a.album_id 
JOIN album_artist aa ON a.album_id = aa.album_id 
JOIN artist ar ON aa.artist_id = ar.artist_id 
WHERE t.duration = (
    SELECT MIN(t.duration) FROM track t
);

-- 4. Названия альбомов, содержащих наименьшее количество треков.

SELECT DISTINCT a.album_tittle FROM album a
JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_id  
HAVING COUNT(t.track_id) = (SELECT MIN(t.track_id) FROM album a2
JOIN track t ON t.album_id  = a2.album_id);