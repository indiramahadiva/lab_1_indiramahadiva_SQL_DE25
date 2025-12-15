SELECT
    cat.name AS category_name,
    ROUND(SUM(p.amount), 2) AS total_revenue
FROM
    staging.category cat
    JOIN staging.film_category fc ON cat.category_id = fc.category_id
    JOIN staging.inventory i ON fc.film_id = i.film_id
    JOIN staging.rental r ON i.inventory_id = r.inventory_id
    JOIN staging.payment p ON r.rental_id = p.rental_id
GROUP BY
    cat.name
ORDER BY
    total_revenue DESC