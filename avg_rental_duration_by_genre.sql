--Average rental duration by genre

SELECT
    name AS genre,
    AVG(rental_duration) AS avg_rental_duration
FROM film A
    INNER JOIN film_category B ON A. film_id = B. film_id
    INNER JOIN category C ON B. category_id = C. category_id
GROUP BY genre
ORDER BY avg_rental_duration DESC