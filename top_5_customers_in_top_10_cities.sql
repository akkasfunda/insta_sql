
-- Top 5 customers in the top 10 cities
SELECT a.customer_id,
	B. first_name,
	B. last_name,
	D. city,
	E. country,
	SUM(amount) AS total_amount_paid
	FROM payment A
	INNER JOIN customer B ON A. customer_id = B. customer_id
	INNER JOIN address C ON B. address_id = C. address_id
	INNER JOIN city D ON C. city_id = D. city_id
	INNER JOIN country E ON D. country_id = E. country_id
	WHERE country IN
	(
	'India',
	'China',
	'United States',
	'Japan',
	'Mexico',
	'Brazil',
	'Russian Federation',
	'Philippines',
	'Turkey',
	'Indonesia')
	AND D.city IN
	(
	'Aurora',
	'Atlixco',
	'Xintai',
	'Adoni',
	'Dhule',
	'Kurashiki',
	'Pingxiang',
	'Sivas',
	'Celaya',
	'So Leopoldo'
	)
GROUP BY 
	A. customer_id,
	B. first_name,
	B. last_name,
	D. city,
	E. country
ORDER BY total_amount_paid DESC
LIMIT 5
