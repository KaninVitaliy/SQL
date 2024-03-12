-- Добавим исполнителей 

INSERT INTO artist (artist_id , nick_name , description) 
VALUES(1, 'Eminem', 'Маршал, Американский рэпер');

INSERT INTO artist (artist_id , nick_name , description)
VALUES(2, 'Michael Jackson', 'Американский певец и автор песен');

INSERT INTO artist (artist_id , nick_name , description)
VALUES(3, 'Ozzy Osbourne', 'Британский рок-певец');

INSERT INTO artist (artist_id , nick_name , description)
VALUES(4, 'Bob Marley', 'Ямайский музыкант и гитарист');

--Добавим жанры

INSERT INTO genre (genre_id, name_genre, description)
VALUES(1, 'Рок', 'Не только музыкальный жанр, но и социокультурный феномен второй половины XX столетия, породивший свою субкультуру.' );

INSERT INTO genre (genre_id, name_genre, description)
VALUES(2, 'Рэп', 'Музыкальная форма вокальной подачи, включающая в себя «рифму, ритмичную речь и уличный жаргон');

INSERT INTO genre (genre_id, name_genre, description)
VALUES(3, 'Поп', 'Область массовой культуры, охватывающая различные формы, жанры и стили развлекательной и прикладной музыки 2-й половины XX — начала XXI веков');

INSERT INTO genre (genre_id, name_genre, description)
VALUES(4, 'Регги', 'направление современной музыки, сформировавшееся на Ямайке в конце 1960-х годов и получившее широкое распространение с начала 1970-х годов.');

-- Добавим альбомы
INSERT INTO album(album_id, album_tittle, year_release)
VALUES (1, 'The Marshall Mathers LP', 2000);

INSERT INTO album(album_id, album_tittle, year_release)
VALUES (2, 'Thriller', 1982);

INSERT INTO album(album_id, album_tittle, year_release)
VALUES (3, 'Exodus', 1977);

INSERT INTO album(album_id, album_tittle, year_release)
VALUES (4, 'No More Tears', 1991);

INSERT INTO album(album_id, album_tittle, year_release)
VALUES (5, 'Music to Be Murdered By', 2020);


--Добавиим треки
INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (1, 'Stan', 1, 489);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (2, 'Marshall Mathers', 1, 321);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (3, 'Beat it', 2, 258);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (4, 'The Heathen', 3, 152);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (5, 'Desire', 4, 346);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (6, 'Billie Jean', 2, 294);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (7, 'The lady in my life', 2, 302);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (8, 'Godzilla', 5, 211);

INSERT INTO track (track_id , track_name, album_id, duration)
VALUES (9, 'Darkness', 5, 337);

-- Добавим коллекции
INSERT INTO collection  (collection_id, collection_tittle , year_collection)
VALUES (1, 'Сборник до 2000-х', 2019);

INSERT INTO collection  (collection_id, collection_tittle , year_collection)
VALUES (2, 'Сборник после 2000-х', 2020);

INSERT INTO collection  (collection_id, collection_tittle , year_collection)
VALUES (3, 'Любимая музыка', 2020);

INSERT INTO collection  (collection_id, collection_tittle , year_collection)
VALUES (4, 'Музыка в машину', 2018);

-- Добавим отношения album_artist
INSERT INTO album_artist (artist_id, album_id)
VALUES (1, 1);

INSERT INTO album_artist (artist_id, album_id)
VALUES (2, 2);

INSERT INTO album_artist (artist_id, album_id)
VALUES (3, 4);

INSERT INTO album_artist (artist_id, album_id)
VALUES (4, 3);

INSERT INTO album_artist (artist_id, album_id)
VALUES (1, 5);

-- Добавим отношения collection_track
INSERT INTO collection_track (track_id, collection_id)
VALUES (1, 2);

INSERT INTO collection_track (track_id, collection_id)
VALUES (2, 2);

INSERT INTO collection_track (track_id, collection_id)
VALUES (3, 1);

INSERT INTO collection_track (track_id, collection_id)
VALUES (4, 1);

INSERT INTO collection_track (track_id, collection_id)
VALUES (5, 1);

INSERT INTO collection_track (track_id, collection_id)
VALUES (6, 1);

INSERT INTO collection_track (track_id, collection_id)
VALUES (1, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (2, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (3, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (4, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (5, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (6, 3);

INSERT INTO collection_track (track_id, collection_id)
VALUES (1, 4);

INSERT INTO collection_track (track_id, collection_id)
VALUES (6, 4);

INSERT INTO collection_track (track_id, collection_id)
VALUES (3, 4);

INSERT INTO collection_track (track_id, collection_id)
VALUES (7, 1);


-- Добавим отношение жанр - артист
INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 3);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (2, 1);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (3, 2);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (4, 4);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 1);