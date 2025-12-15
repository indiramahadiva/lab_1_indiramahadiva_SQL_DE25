SELECT
    rating,
    COUNT(*) AS num_films
FROM
    staging.film
GROUP BY
    rating
ORDER BY
    num_films DESC