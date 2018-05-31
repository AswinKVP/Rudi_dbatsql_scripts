SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' ALTER COLUMN ', COLUMN_NAME, ' ',
		DATA_TYPE, '(', CHARACTER_OCTET_LENGTH, ')', ' COLLATE French_CI_AS') 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE DATA_TYPE LIKE '%char%'