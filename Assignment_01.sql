use Mavenmovies;
-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
-- Primary key: Primary key is the unique identifier of the table,it is the combination of Not null and Unique.
-- Foreign key: A foreign is a field in one table,that refers to the PRIMARY KEY in another table.
describe actor;
-- here actor_id is the primary key and last_name foreign key
describe actor_award;
-- here actor_award_id is the primary key and last_name foreign key
describe address;
-- here address_id is the primary key and city_id foreign
-- Similarly
describe advisor;
describe category;
describe city;
describe country;
describe customer;
describe film;
describe film_actor;
describe film_category;
describe film_text;
describe inventory;
describe investor;
describe language;
describe payment;
describe rental;
describe staff;
describe store;
-- All list of actors
select * from actor;
-- customer table information
select * from customer;
-- List different countries
select * from country;
select distinct(country) as List_of_different_countries from country;
-- active customes details
select * from customer
where active =1;
-- rental IDs list
select * from rental
where customer_id=1;
-- film whose rental duration is greter than 5
select * from film
where rental_duration>5;
-- film whose replacement cost is between 15 to 20
select count(film_id) from film
where replacement_cost>15 and replacement_cost<20;
-- no of films whose rental_rate is less than 1
select count(film_id) from film
where rental_rate<1;
-- unique first name of actors
select count(distinct(first_name)) from actor;
-- first 10 records from customer table
select * from customer limit 10;
-- first 10 records from customer table name start with 'b'
select * from customer where first_name like "b%" limit 3;
-- movie rated as 'G'
select title from film where rating='G' limit 5;
-- first name stat with 'a' in customer table
select * from customer where first_name like "a%";
-- first name end with 'a' in customer table
select * from customer where first_name like "%a";
-- customers with 'NI' in name at any position
select * from customer where first_name like "%NI%";
-- customers with 'r' in name at second position 
select * from customer where first_name like "_r%";
-- customers whose first name starts with "a" and are at least 5 characters in length
select * from customer where first_name like "a____";
--  customers whose first name starts with "a" and ends with "o"
select * from customer where first_name like "a%o";
--  films with pg and pg-13 rating using IN operator
select * from film where rating in ("PG","PG-13");
-- films with length between 50 to 100 using between operator
select * from film where length between 50 and 100;
-- top 50 actors using limit operator
select * from actor limit 50;
-- distinct film ids from inventory table
select distinct(film_id) from inventory;






