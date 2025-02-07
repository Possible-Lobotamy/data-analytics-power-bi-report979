SELECT p.category, 
       SUM((p.sale_price - p.cost_price) * o.product_quantity) AS total_profit
FROM orders o
JOIN dim_products p 
    ON o.product_code = p.product_code
JOIN dim_stores s 
    ON o.store_code = s.store_code
JOIN dim_date d 
    ON o.order_date = d.date
WHERE d.year = 2021
AND s.country_region = 'Wiltshire'
GROUP BY p.category
ORDER BY total_profit DESC;
