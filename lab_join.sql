use sakila;

select category_id, name, count(film_id)
from category
inner join film_category
using (category_id)
group by category_id, name;

select s.store_id, c.city, a.city_id, c.country_id
from store as s
inner join address as a on s.address_id = a.address_id
inner join city as c on a.city_id = c.city_id;


select s.store_id, round(sum(amount),2)
from store as s
inner join staff as st on s.store_id = st.store_id
inner join payment as p on st.staff_id = p.staff_id
group by store_id;

select c.name, c.category_id, round(avg(length),2)
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on fc.category_id = c.category_id
group by c.category_id, c.name;







