--Top 10 Title by Average Rental Duration
SELECT
	title,
	AVG(rental_duration) AS avg_rental_duration
FROM film
GROUP BY title
ORDER BY avg_rental_duration DESC
LIMIT 10