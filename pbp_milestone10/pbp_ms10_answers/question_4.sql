CREATE VIEW q4_view AS
SELECT 
    s.store_type,
    SUM(o.product_quantity * p.sale_price) AS total_sales,
    (SUM(o.product_quantity * p.sale_price) * 100.0) / 
        (SELECT SUM(o2.product_quantity * p2.sale_price) 
         FROM orders o2
         JOIN dim_products p2 ON o2.product_code = p2.product_code) AS percentage_total_sales,
    COUNT(o.index) AS order_count
FROM orders o
JOIN dim_products p 
    ON o.product_code = p.product_code
JOIN dim_stores s 
    ON o.store_code = s.store_code
JOIN dim_date d 
    ON o.order_date = d.date
GROUP BY s.store_type;


