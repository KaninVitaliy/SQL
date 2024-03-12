-- 1. Количество исполнителей в каждом жанре.

SELECT g.name_genre , COUNT(a.nick_name)  FROM genre_artist ga
JOIN genre g ON g.genre_id = ga.genre_id 
JOIN artist a ON ga.artist_id = a.artist_id 
GROUP BY g.name_genre ;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT COUNT(*)  FROM track t 
JOIN album a ON t.album_id = a.album_id 
WHERE a.year_release >= 2019 AND year_release <= 2020;

-- 3. Средняя продолжительность треков по каждому альбому.

SELECT a.album_tittle  , AVG(t.duration) FROM track t 
JOIN album a ON t.album_id = a.album_id 
GROUP BY a.album_id ;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT DISTINCT a.nick_name FROM artist a 
    WHERE a.nick_name NOT IN (
        SELECT DISTINCT a.nick_name FROM artist a
        JOIN album_artist aa ON aa.artist_id = a.artist_id 
        JOIN album a2 ON a2.album_id = aa.album_id
        WHERE a2.year_release = 2020)
    GROUP BY a.artist_id ;

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT DISTINCT a2.nick_name , c.collection_tittle FROM collection c
JOIN collection_track ct ON c.collection_id = ct.collection_id 
JOIN track t ON ct.track_id = t.track_id 
JOIN album a ON a.album_id = t.album_id 
JOIN album_artist aa ON a.album_id = aa.album_id 
JOIN artist a2 ON aa.artist_id = a2.artist_id 
WHERE a2.nick_name = 'Eminem';
