CREATE DATABASE url_shortener_chip_morris;

CREATE TABLE urls (
  id SERIAL PRIMARY KEY,
  original_url VARCHAR NOT NULL,
  count INT DEFAULT 0
);

-- insert 5 rows of data into the 'urls' table
-- give each one a different original_url.
-- give each one a different count.
INSERT INTO urls (original_url, count) VALUES
  ('www.chip.com', 3),
  ('www.dom.com', 43),
  ('www.luis.com', 49),
  ('www.johnny.com', 55),
  ('www.ryan.com', 32);

-- display all of the rows in the urls table with all of the columns
SELECT * FROM urls;

-- display all of the rows in the urls table with only the original_url column
SELECT original_url FROM urls;

-- display one row from the urls table with a specific original_url
SELECT * FROM urls WHERE original_url = 'www.chip.com';

-- display one row from the table with a specific id
;

-- update one of the rows with a specific id to have a new count
UPDATE urls SET count = 4 WHERE id = 2;

-- delete one row that matches an original_url
DELETE FROM urls WHERE original_url = 'www.ryan.com';
SELECT * FROM urls;

-- ************************************************************************************
-- everything else below here are tests that I'm running to gain a better understanding

-- insert a new url and show that it worked
INSERT INTO urls (original_url, count) VALUES
  ('www.michael.org', 5);
SELECT * FROM urls;

-- show selected table info
SELECT original_url FROM urls;
SELECT id FROM urls;
SELECT count FROM urls;




-- drops the table so that each time I run this it creates a new table, as opposed
-- to adding on to it and making one long one
DROP TABLE urls;
