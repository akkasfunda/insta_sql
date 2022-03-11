--Bottom 10 movies by revenue
SELECT 
    title AS movies,
    SUM(amount) AS total_revenue
FROM payment A
    INNER JOIN rental B ON A. rental_id = B. rental_id
    INNER JOIN inventory C ON B. inventory_id = C. inventory_id
    INNER JOIN film D ON C. film_id = D. film_id
GROUP BY movies
ORDER BY total_revenue ASC
LIMIT 10