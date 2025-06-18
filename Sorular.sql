--i. Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
select first_name, last_name from actor where first_name in ('Nick', 'Ed', 'Jennifer');

-- ii. Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
select last_name from actor where first_name in ('Nick', 'Ed', 'Jennifer');

--iii. Show all details from the address table..
select * from address;

-- iv. Display district and phone from the address table, sorted in descending order.
select district , phone from address order by district desc, phone desc;

--v. Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.
select f.film_id, f.title, i.inventory_id from film as f join inventory as i on f.film_id=i.film_id; 

-- vi. Show the first 5 rows consisting of the inventory and rental tables.
select i.*,r.* from inventory as i join rental as r on i.inventory_id = r.inventory_id  limit 5;

--vii. Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.
select r.rental_id, r.rental_date, p.payment_id from rental as r join payment as p on r.rental_id=p.rental_id order by p.amount desc limit 10;

-- viii. Show all details of rows where actor_id is empty (NULL) in the actor table.
select * from actor where actor_id is Null;

-- ix. Show all details of rows in the actor table where actor_id is not empty (NOT NULL).
select * from actor where actor_id is not Null;

-- x.  Find the number of non-empty rows in the film table.
select count(*) from film ;

--xi. Show the total amount from the payment table as the output header sum_amt.
select sum(amount) as sum_amount from payment;

--xii. Show the maximum and minimum amount in the payment table.
SELECT MAX(amount) AS max_amount, MIN(amount) AS min_amount FROM payment;

select * from payment;

select * from payment where amount=0.00;



