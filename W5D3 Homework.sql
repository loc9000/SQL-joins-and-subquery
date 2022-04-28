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
select *
from payment
join customer on customer.customer_id = payment.customer_id 
where amount > sum(distinct customer_id)


--4. List all customers that live in Nepal (use the city table)

--5. Which staff member had the most transactions?

--6. How many movies of each rating are there?

--7. Show all customers who have made a single payment above $6.99 (Use Subqueries)

--8. How many free rentals did our stores give away?