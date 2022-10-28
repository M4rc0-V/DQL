-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2 actors with last name Wahlberg



-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- amount of payments is 5602



-- 3. What film does the store have the most of? (search in inventory)
SELECT MAX(title)
FROM film;

-- store has the most 'Zorro Ark'



-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM  customer
WHERE last_name = 'William';

-- There are no customers with the last name William



-- 5. What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id)
FROM rental;

-- store employee's id is 2



-- 6. How many different district names are there?
SELECT COUNT(district)
FROM address;

-- there are 603 districts



-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id) > 13, film_id
FROM film_actor
GROUP BY film_id; 
--508 Film ID

SELECT title
FROM  film
WHERE film_id = 508;

-- film with most actors is Lambs Cincinatti



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';

-- there are 21 customers with last names ending in 'es'



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, payment_id
FROM payment
WHERE payment_id BETWEEN 380 and 430
GROUP BY amount, payment_id
HAVING rental_id > 250;
--??????????????????????????????????????????

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(DISTINCT rating)
FROM film;
-- there are 5 categories 
SELECT MAX(DISTINCT rating)
FROM film;
-- rating with the most movies is NC-17