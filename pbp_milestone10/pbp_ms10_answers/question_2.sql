SELECT d.year, d.month_number, 
       SUM(o.product_quantity * p.sale_price) AS total_revenue
FROM orders o
JOIN dim_products p 
    ON o.product_code = p.product_code
JOIN dim_date d 
    ON o.order_date = d.date
WHERE d.year = 2022
GROUP BY d.year, d.month_number
ORDER BY total_revenue DESC;
