                -- Basic Aggregate Function :

-- Question 1: Retrieve the total number of rentals made in sakila database
-- Answer: 
          select count(rental_id) from rental;

-- Question 2: Find the average  rental duration(in days) of movies rented from the sakila database.
-- Answer:    
          select avg(rental_duration) from film;

             -- String Function
           
-- Question 3 : Display the first name and last name of customer in uppercase 
-- Answer:  
          select upper(first_name),upper(last_name) from customer;

          select upper(concat(first_name," ",last_name)) as FULL_NAME from customer;

-- Questio 4 : Extract the month from the rental date and display it alongside the rental ID
-- Answer
          select rental_id,monthname(rental_date) from rental;
          
          -- Group by 
          
-- Question 5: Retrieve the count of rental for each customer (display customer ID and the count of rentals)
-- Answer: 
           select customer_id, count(rental_id) from rental group by customer_id;
           
-- Question 6: Find the total revenue generated by each store
-- Answer: 
           SELECT 
    SUM(amount), staff_id
FROM
    payment
GROUP BY staff_id;
           
              -- Joins
              
-- Question 7: Display the title pf the movie,customer's first name,and last name who rented it
-- Answer: 
SELECT 
    title AS movie_name,
    CONCAT(first_name, ' ', last_name) AS Full_name
FROM
    film
        INNER JOIN
    inventory ON film.film_id = inventory.film_id
        INNER JOIN
    rental ON inventory.inventory_id = rental.inventory_id
        INNER JOIN
    customer ON rental.customer_id = customer.customer_id;

-- Question 8: Retrieve the names of all actors who have appeared in the film "Gone with the Wind"
-- Answer : 
           
            -- Group by
            
-- Question 1: Determine the total number of rentals for each category of movies
-- Answer: 
SELECT 
    category_id, COUNT(rental_rate)
FROM
    film
        INNER JOIN
    film_category ON film.film_id = film_category.film_id
GROUP BY category_id;

-- Question 2: Find the average rental rate of movies in each language.
-- Answer:
SELECT 
    AVG(rental_rate), name
FROM
    film
        INNER JOIN
    language ON film.language_id = language.language_id
GROUP BY name;

             -- join
-- Question 1: Retrieve the customer names along with the total amount they have spent on rental
SELECT 
    AVG(rental_rate), name
FROM
    film
        INNER JOIN
    language ON film.language_id = language.language_id
GROUP BY name;             
