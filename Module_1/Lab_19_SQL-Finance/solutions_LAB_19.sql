use olist;

## 1. From the order_items table, find the price of the highest priced order and lowest price order.
SELECT * 
FROM order_items
WHERE price = (SELECT MAX(price) FROM order_items);

###
SELECT * 
FROM order_items
WHERE price = (SELECT MIN(price) FROM order_items);
#Limit 1;

## 2. From the order_items table, what is range of the shipping_limit_date of the orders?

## 3. From the customers table, find the states with the greatest number of customers.
SELECT customer_city cc, customer_state cs, (COUNT(customer_state))
FROM customers c
GROUP BY customer_city,customer_state
ORDER BY (COUNT(customer_state)) DESC;

## 4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.


## 5. From the closed_deals table, how many distinct business segments are there (not including null)?
SELECT business_segment, COUNT(DISTINCT(business_segment))
FROM closed_deals
WHERE business_segment IS NOT NULL
GROUP BY business_segment;

## 6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
SELECT declared_monthly_revenue, SUM(declared_monthly_revenue);


## 7. From the order_reviews table, find the total number of distinct review score values.
SELECT SUM(DISTINCT(review_score))
FROM order_reviews;
#GROUP BY review_score

## 8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.
SELECT descrip, 
FROM order_reviews;

## 9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs.
SELECT review_score, SUM((review_score))
FROM order_reviews
GROUP BY review_score
ORDER BY SUM((review_score)) DESC
Limit 1;
