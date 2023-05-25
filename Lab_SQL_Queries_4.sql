-- Use sakila database.
use sakila;

-- Get film ratings.

select distinct rating from film;

-- Get release years.

select distinct release_year from film;

-- Get all films with ARMAGEDDON in the title.

select * from film where title like '%Armageddon%';

-- Get all films with APOLLO in the title

select * from film where title like '%Apollo%';

-- Get all films which title ends with APOLLO.

select * from film where title like '%Apollo';

-- Get all films with word DATE in the title.

select * from film where title like '%Date%';

-- Get 10 films with the longest title.

select * from film
order by length(title) desc
limit 10;

-- Get 10 the longest films.

select * from film
order by length desc
limit 10;

-- How many films include Behind the Scenes content?

select count(*) as Movies_With_Behind_the_Scenes
from film
where special_features = 1;

-- List films ordered by release year and title in alphabetical order.

select title, release_year from film
order by release_year, title;


