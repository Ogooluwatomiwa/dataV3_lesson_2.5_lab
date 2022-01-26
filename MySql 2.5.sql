USE sakila;

SELECT * FROM sakila.actor 
WHERE first_name = 'Scarlett';

SELECT COUNT(inventory_id) as Available FROM Sakila.inventory;
SELECT COUNT(rental_id) as Rented from sakila.rental;

Select avg(length) as avg_length from sakila.film;

SELECT min(length) as shortest_duration,
 max(length) as longest_duration from sakila.film;
 
 Select distinct last_name from sakila.actor;
 
 select DATEDIFF('2006-02-14', '2005-05-24') as Operating_time;
 
alter table sakila.rental add months varchar(20), add weekdays varchar(20);
UPDATE Sakila.rental set months = month(rental_date);
UPDATE Sakila.rental set weekdays = weekday(rental_date);
 select * from sakila.rental
 limit 20;
 
 ALTER TABLE sakila.rental add day_type varchar(20);
 UPDATE Sakila.rental set day_type = 'weekend' WHERE dayofweek(rental_date) = 7 OR 1;
 UPDATE Sakila.rental set day_type = 'weekday' WHERE dayofweek(rental_date) != 7 AND dayofweek(rental_date) != 1;
 SELECT*FROM Sakila.rental;
 
 
 
 SELECT release_year from sakila.film;
 

 
 SELECT* FROM sakila.film
 where title like 'ARMAGEDDON%';
 
 SELECT * FROM Sakila.film
 where title like '%APOLLO';
 
 SELECT LENGTH FROM Sakila.film
 ORDER BY LENGTH DESC
 LIMIT 10 ;
 
 SELECT*FROM SAKILA.FILM;
 
 select * from sakila.film
 WHERE Special_features like '%Behind the Scenes%';
 