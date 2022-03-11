SELECT
-- Release Year of Film
    MAX (release_year) AS max_release_year,
    MIN (release_year) AS min_release_year,
    AVG (release_year) AS avg_release_year,
-- 	Rental Duration of Film
    MAX (rental_duration) AS max_rental_duration,
    MIN (rental_duration) AS min_rental_duration,
    AVG (rental_duration) AS avg_rental_duration,
-- Rental Rate of Film
    MAX (rental_rate) AS max_rental_rate,
    MIN (rental_rate) AS min_rental_rate,
    AVG (rental_rate) AS avg_rental_rate,
-- Length of Film
    MAX (length) AS max_film_length,
    MIN (length) AS min_film_length,
    AVG (length) AS avg_film_length,
-- Replacement Cost of film
    MAX (replacement_cost) AS max_rental_replacement_cost,
    MIN (replacement_cost) AS min_rental_replacement_cost,
    AVG (replacement_cost) AS avg_rental_replacement_cost
FROM film;