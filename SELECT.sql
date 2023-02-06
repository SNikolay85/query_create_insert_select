SELECT album_name, release_date
  FROM album
 WHERE release_date BETWEEN '01-01-2018' AND '31-12-2018';

SELECT track_name, duration
  FROM track
 WHERE duration=(SELECT MAX(duration) FROM track);
 
SELECT track_name, duration
  FROM track
 WHERE duration >= 60 * 3.5;

SELECT collection_name, release_date
  FROM collection
 WHERE release_date BETWEEN '01-01-2018' AND '31-12-2020';
 
SELECT artist_name
  FROM artist
 WHERE artist_name NOT LIKE '% %';
 
SELECT track_name
  FROM track
 WHERE LOWER (track_name) LIKE '%my%' OR LOWER (track_name) LIKE '%мой%';