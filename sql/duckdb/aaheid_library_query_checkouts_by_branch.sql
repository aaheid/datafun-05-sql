SELECT
    b.branch_name,
    b.city,
    COUNT(c.checkout_id) AS checkout_count,
    SUM(c.fine_amount) AS total_fines
FROM branch AS b
JOIN checkout AS c
    ON b.branch_id = c.branch_id
GROUP BY b.branch_name, b.city
ORDER BY checkout_count DESC;
