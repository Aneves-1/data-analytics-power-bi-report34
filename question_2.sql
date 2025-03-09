SELECT 
    SUM(o.product_quantity * dp.sale_price) AS "Total Revenue", 
    dd.month_name AS "Month"
FROM orders o
INNER JOIN dim_product dp ON dp.product_code = o.product_code
INNER JOIN dim_date dd ON dd.date = o.order_date
WHERE dd.year = '2022'
GROUP BY dd.month_name
ORDER BY "Total Revenue" DESC
LIMIT 1;