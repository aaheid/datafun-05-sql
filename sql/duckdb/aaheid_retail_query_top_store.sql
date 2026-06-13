SELECT
    store_id,
    SUM(amount) AS total_sales
FROM sale
GROUP BY store_id
ORDER BY total_sales DESC;
