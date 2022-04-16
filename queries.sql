-- Не соответствуют ни одному автору
SELECT * FROM books
WHERE authors_id IS NULL;

-- Не соответствуют ни одному автору и ни одному издательству
SELECT b.*, a.publishing_houses_id FROM books b
LEFT JOIN authors a
ON b.authors_id = a.id
WHERE a.publishing_houses_id IS NULL;
