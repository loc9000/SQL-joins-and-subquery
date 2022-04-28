--1. List all customers who live in Texas (use JOINs)
select first_name, last_name, district
from customer
join address on customer.address_id = address.address_id
where district = 'Texas'
order by last_name asc


--2. Get all payments above $6.99 with the Customer's Full Name
select amount, first_name, last_name
from payment 
join customer on customer.customer_id = payment.customer_id 
where amount > 6.99
order by amount asc


--3. Show all customers names who have made payments over $175(use subqueries)
select customer.customer_id , first_name, last_name, sum(amount) as total_payments
from customer 
join payment on payment.customer_id = customer.customer_id
group by customer.customer_id 
having 175 < (
	select sum(amount)
)


--4. List all customers that live in Nepal (use the city table)
select customer.customer_id , first_name, last_name, country
from customer 
join address on customer.address_id = address.address_id 
join city on address.city_id = city.city_id 
join country on city.country_id = country.country_id
where country = 'Nepal'

--5. Which staff member had the most transactions?
select staff.staff_id, first_name, last_name, count(rental_id)
from staff
join payment on payment.staff_id = staff.staff_id 
group by staff.staff_id


--6. How many movies of each rating are there?
select count(rating), rating
from film 
group by rating

--7. Show all customers who have made a single payment above $6.99 (Use Subqueries)
select customer.customer_id, first_name, last_name, amount
from customer
join payment on payment.customer_id = customer.customer_id 
where amount > 6.99


--8. How many free rentals did our stores give away?
select count(amount), amount
from payment
where amount = 0
group by amount
