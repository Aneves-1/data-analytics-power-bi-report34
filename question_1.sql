SELECT country, SUM(staff_numbers) AS total_staff_numbers
FROM dim_store
WHERE country = 'UK'
GROUP BY country;