-- 2. Наименование треков которые не входят в сборники.

SELECT t.track_name FROM track t
   WHERE t.track_name NOT IN (
   SELECT DISTINCT t.track_name FROM collection c 
   JOIN collection_track ct ON ct.collection_id = c.collection_id
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

SELECT DISTINCT a.album_tittle, count(t.track_name)  FROM album a
JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_tittle ;