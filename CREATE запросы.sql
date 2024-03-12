CREATE TABLE IF NOT EXISTS Genre(
    genre_id SERIAL PRIMARY KEY,
    name_genre VARCHAR(60) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS Artist (
    artist_id SERIAL PRIMARY KEY,
    nick_name VARCHAR(60) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS Genre_artist (
    genre_id INTEGER REFERENCES Genre(genre_id),
    artist_id INTEGER REFERENCES Artist(artist_id),
    CONSTRAINT pk1 PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    Album_tittle VARCHAR(60) NOT NULL,
    year_release INTEGER NOT NULL CHECK (year_release > 1900 AND year_release < 2024)
);

CREATE TABLE IF NOT EXISTS Collection(
    collection_id SERIAL PRIMARY KEY,
    Collection_tittle VARCHAR(60) NOT NULL,
    year_collection INTEGER NOT NULL CHECK (year_collection > 1900 AND year_collection < 2024)
);

CREATE TABLE IF NOT EXISTS Album_artist (
    artist_id INTEGER REFERENCES Artist(artist_id),
    album_id INTEGER REFERENCES Album(album_id),
    CONSTRAINT pk2 PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track(
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(60) NOT NULL,
    album_id INTEGER REFERENCES Album(album_id),
    duration INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection_track (
    track_id INTEGER REFERENCES Track(track_id),
    collection_id INTEGER REFERENCES Collection(collection_id),
    CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
);


