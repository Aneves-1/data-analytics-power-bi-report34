-- Extract table list
SELECT tablename
FROM pg_tables 
WHERE schemaname = 'public';

-- Extract column list and data types for Orders table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'dim_date';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'orders';