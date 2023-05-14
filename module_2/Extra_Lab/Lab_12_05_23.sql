#Question 1
#select customer_id, payment_date, amount,
#sum(amount) over (partition by customer_id order by payment_date) as running_total
#from payment;

#####

#Question 2

#select amount, date_format(payment_date, '%Y-%m-%d') as date_format,
#rank() over (partition by date_format(payment_date, '%Y-%m-%d') order by amount DESC) as rank2,
#dense_rank() over (partition by date_format(payment_date, '%Y-%m-%d') order by amount) as dense_rk2
#from payment;

#Question 3
#SELECT c.name as category, f.title as film_title, f.rental_rate,
#rank() over (partition by c.name order by rental_rate DESC) as rnk,
#rank() over (partition by c.name order by rental_rate DESC) as dens_rank
#FROM film f
#LEFT JOIN film_category fc using (film_id)
#LEFT JOIN category c using (category_id)
#ORDER BY c.name, f.rental_rate DESC, f.title;

#Question 5
#SELECT payment_id, customer_id, amount, payment_date,
#amount - lag(amount) over (partition by customer_id order by payment_date) as diff_from_prev,
#amount - lead(amount) over (partition by customer_id order by payment_date) as diff_from_next
#FROM payment


