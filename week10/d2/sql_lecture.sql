DROP TABLE IF EXISTS boardgames;
DROP TABLE IF EXISTS people;
drop table if exists reviews;

CREATE TABLE boardgames (
   id SERIAL PRIMARY KEY,
   name VARCHAR UNIQUE,
   avg_rating NUMERIC(3, 2),
   max_players INTEGER,
   category VARCHAR(50)
);

CREATE TABLE people (
   id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   fave_category VARCHAR(50),
);

CREATE TABLE reviews (
   id SERIAL PRIMARY KEY,
   content TEXT,
   boardgame_id INTEGER REFERENCES boardgames(id)
)
