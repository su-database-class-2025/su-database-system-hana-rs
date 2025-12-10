SELECT country.country, COUNT(DISTINCT customer.customer_id) AS customer_count, SUM(payment.amount) AS amount
FROM country
INNER JOIN city
 ON country.country_id = city.country_id
INNER JOIN address
 ON city.city_id = address.city_id
INNER JOIN customer
 ON address.address_id = customer.address_id
INNER JOIN payment
 ON customer.customer_id = payment.customer_id
GROUP BY country.country;