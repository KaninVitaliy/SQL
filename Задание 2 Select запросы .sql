-- 1. Получение самого длинного трека 
SELECT track_name , duration  
FROM track 
WHERE duration = (SELECT MAX(duration) FROM track);

-- 2. Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name 
FROM track 
WHERE duration >= 210;

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_tittle 
FROM collection 
WHERE year_collection 
BETWEEN 2018 AND 2020;

-- 4. Исполнители, чьё имя состоит из одного слова.
SELECT nick_name 
FROM artist  
WHERE nick_name NOT LIKE '% %';

-- 5. Название треков, которые содержат слово «мой» или «my».
SELECT track_name  FROM track 
WHERE track_name LIKE '% my %' OR track_name LIKE '% мой %';