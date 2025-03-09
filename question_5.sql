SELECT 
    SUM(o.product_quantity * (dp.sale_price - dp.cost_price)) AS "Profit", 
    dp.category AS "Product Category"
FROM orders o
INNER JOIN dim_product dp ON dp.product_code = o.product_code
INNER JOIN dim_store ds ON ds.store_code = o.store_code
INNER JOIN dim_date dd ON dd.date = o.order_date
WHERE dd.year = '2021' AND ds.full_region = 'Wiltshire, UK'
GROUP BY "Product Category"
ORDER BY "Profit" DESC
LIMIT 1;
