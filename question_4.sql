CREATE VIEW "Summary Store Data" AS
SELECT 
    "Store Type",
    "Revenue",
    "Revenue" / SUM("Revenue") OVER () AS "Percentage of Total Revenue",
    "Count of Orders"
FROM(
    SELECT 
        ds.store_type AS "Store Type",
        SUM(o.product_quantity * dp.sale_price) AS "Revenue", 
        COUNT(*) AS "Count of Orders"
    FROM orders o
    INNER JOIN dim_product dp ON dp.product_code = o.product_code
    INNER JOIN dim_store ds ON ds.store_code = o.store_code
    INNER JOIN dim_date dd ON dd.date = o.order_date
    GROUP BY "Store Type"
) AS info;
