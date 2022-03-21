-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT category.name
FROM film
INNER JOIN inventory
ON film.film_id = inventory.film_id
LEFT JOIN rental
ON rental.inventory_id = inventory.inventory_id
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON film_category.category_id = category.category_id
WHERE rental.last_update IS NULL;