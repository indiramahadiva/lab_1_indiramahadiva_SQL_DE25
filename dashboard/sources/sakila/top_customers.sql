SELECT
    c.first_name || ' ' || c.last_name AS customer_name,
    ROUND(SUM(p.amount), 2) AS total_spend
FROM
    staging.customer c
    JOIN staging.payment p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY
    total_spend DESC
LIMIT
    5