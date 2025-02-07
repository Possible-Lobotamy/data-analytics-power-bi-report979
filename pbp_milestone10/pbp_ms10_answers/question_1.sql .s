
SELECT country, SUM(staff_numbers) AS total_staff
FROM dim_stores
GROUP BY country;
