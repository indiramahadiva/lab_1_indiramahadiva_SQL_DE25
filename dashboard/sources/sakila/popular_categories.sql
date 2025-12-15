SELECT
    c.name AS category,
    COUNT(r.rental_id) AS rental_count
FROM
    staging.category c
    JOIN staging.film_category fc ON c.category_id = fc.category_id
    JOIN staging.inventory i ON fc.film_id = i.film_id
    JOIN staging.rental r ON i.inventory_id = r.inventory_id
GROUP BY
    c.name
ORDER BY
    rental_count DESC