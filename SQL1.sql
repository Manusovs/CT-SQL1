--#1 Query actors last name Wahlberg
select actor_id, first_name, last_name
from actor
where last_name like 'Wahlberg';

--#1 Query count of actors last name Wahlberg
select COUNT(actor_id)
from actor
where last_name like 'Wahlberg';

--#2 Query to count payments between 3.99 and 5.99
select * from payment;
select COUNT(amount), amount from payment where amount between 3.99 and 5.99 group by amount;

--#2 Query to count payments between 3.99 and 5.99
select amount from payment where amount between 3.99 and 5.99

--#2 query to count all payments (used staff id, so I could easily sume 2 the sets)
select COUNT(staff_id) from payment group by (staff_id)


--#3 Query to count amount of each film_id
select COUNT(film_id), film_id from inventory group by film_id;

--#3 Query to check which film_id's had greater than 8 counts
select COUNT(film_id), film_id from inventory group by film_id having Count(film_id) > 8;

--#3 Query to check which film_id's had 8 counts
select COUNT(film_id), film_id from inventory group by film_id having Count(film_id) = 8;

--#4 Query count of customers last name William
select * from customer;

--#4 Query count of customers last name William
select COUNT(last_name) from customer where last_name like 'William';

--#5 Query of all saleperson's
select staff_id, COUNT(staff_id) from rental group by staff_id;

--#5 Query of all saleperson's
select staff_id from rental;

--#6 Query of all districts
select COUNT(district), district from address group by district;

--#7 query of film_actor
select * from film where film_id = '508'

--#7 query of count of actor_id per film_id
select COUNT(actor_id),film_id from film_actor group by film_id;

--#8 query of count of actor_id per film_id
select * from customer where store_id = '1', where last_name like '%th';

--#8 query of count of actor_id per film_id
select store_id, Count(store_id) from customer where last_name like '%es' group by store_id;


--#9 query of how many specific costs 
select amount, Count(amount) from payment where customer_id between 380 and 430 group by amount having COUNT(customer_id) > 250;


--#10 query of film table movie_ratings 
select rating, count(rating) from film group by rating

--#10 query of film table movie_ratings 
select * from film 
