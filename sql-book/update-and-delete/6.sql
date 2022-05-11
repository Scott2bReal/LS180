-- ALTER TABLE celebrities
-- RENAME TO singers;

-- SELECT * FROM singers
DELETE FROM singers
WHERE occupation NOT ILIKE '%sing%';
