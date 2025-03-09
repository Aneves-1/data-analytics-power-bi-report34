SELECT 
    SUM(o.product_quantity * dp.sale_price) AS "Total Revenue", 
    ds.store_type AS "Store Type"
FROM orders o
INNER JOIN dim_product dp ON dp.product_code = o.product_code
INNER JOIN dim_store ds ON ds.store_code = o.store_code
INNER JOIN dim_date dd ON dd.date = o.order_date
WHERE dd.year = '2022' AND ds.country = 'Germany'
GROUP BY "Store Type"
ORDER BY "Total Revenue" DESC
LIMIT 1;