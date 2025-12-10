SELECT category.name AS category_name, AVG(DATE_PART('day', rental.return_date - rental.rental_date)) AS average_days
FROM category
INNER JOIN film_category
 ON category.category_id = film_category.category_id
INNER JOIN film
 ON film_category.film_id = film.film_id
INNER JOIN inventory
 ON film.film_id = inventory.film_id
INNER JOIN rental
 ON inventory.inventory_id = rental.inventory_id
GROUP BY category.name;