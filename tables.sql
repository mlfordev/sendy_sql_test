CREATE TABLE publishing_houses (
  id SERIAL PRIMARY KEY,
  name CHARACTER VARYING(256)
);

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name CHARACTER VARYING(256),
  publishing_houses_id integer NULL REFERENCES publishing_houses(id) ON DELETE SET NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  name CHARACTER VARYING(256),
  authors_id integer NULL REFERENCES authors(id) ON DELETE SET NULL
);

INSERT INTO "publishing_houses" ("id", "name") VALUES
	(2, 'Издательство 2'),
	(3, 'Издательство 3');
	
INSERT INTO "authors" ("id", "name", "publishing_houses_id") VALUES
	(1, 'автор 1', NULL),
	(3, 'автор 3', NULL),
	(4, 'автор 4', 2),
	(6, 'автор 6', 2),
	(8, 'автор 8', 3),
	(9, 'автор 9', 3);

INSERT INTO "books" ("id", "name", "authors_id") VALUES
	(1, 'книга 1', 1),
	(2, 'книга 2', 1),
	(3, 'книга 3', NULLа
	(4, 'книга 4', NULL),
	(5, 'книга 5', 3),
	(6, 'книга 6', 3),
	(7, 'книга 7', 4),
	(8, 'книга 8', 4),
	(9, 'книга 9', NULL),
	(10, 'книга 10', NULL),
	(11, 'книга 11', 6),
	(12, 'книга 12', 6),
	(13, 'книга 13', NULL),
	(14, 'книга 14', NULL),
	(15, 'книга 15', 8),
	(16, 'книга 16', 8),
	(17, 'книга 17', 9),
	(18, 'книга 18', 9);
	