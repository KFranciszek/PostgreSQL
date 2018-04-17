#Script 1
select concat(customer.first_name, ' ', customer.last_name) as klient, payment.payment_date as  płatności
from payment inner join customer on customer.customer_id = payment.customer_id
where  payment.payment_date  >'2007-03-22 03:01:00'
#Script 2
select  film.title
from film inner join  film_category on film.film_id = film_category.film_id
inner join category  on category.category_id = film_category.category_id
where category.name = 'Sci-Fi' 
#Script 3
select concat(customer.first_name, ' ', customer.last_name) as klient, address.phone as telefon, film.title
from  customer  inner join rental on customer.customer_id = rental.customer_id
INNER JOIN address ON customer.address_id = address.address_id
inner join inventory on inventory.inventory_id = rental.inventory_id
inner join film on inventory.film_id = film.film_id
#Script 4
select customer.first_name, customer.last_name, address.phone as telefon
from  customer  inner join rental on customer.customer_id = rental.customer_id
INNER JOIN address ON customer.address_id = address.address_id
inner join inventory on inventory.inventory_id = rental.inventory_id
inner join film on inventory.film_id = film.film_id
group by customer.last_name, customer.first_name, customer.last_name, address.phone
having count(customer.customer_id) > 4
