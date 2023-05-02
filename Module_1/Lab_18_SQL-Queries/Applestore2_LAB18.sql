SELECT 
    *
FROM
    myDatabase_2023.applestore2;
#1
#select distinct prime_genre
#from myDatabase_2023.applestore2;

-- 2. Which is the genre with the most apps rated?
#select prime_genre, sum(rating_count_tot)
-- order by rating_count_tot asc
#from myDatabase_2023.applestore2
#group by prime_genre
#order by sum(rating_count_tot) desc;

#3. Which is the genre with most apps?
#select prime_genre, count(1)
#from myDatabase_2023.applestore2
#group by prime_genre
#order by count(1) desc
#limit 1;

#4. Which is the one with least?
#select prime_genre, count(track_name)
#from myDatabase_2023.applestore2
#group by prime_genre
#order by count(track_name) asc
#limit 1;

#5. Find the top 10 apps most rated.
#select track_name, rating_count_tot
#from myDatabase_2023.applestore2
#order by (rating_count_tot) desc
#limit 10;

#6. Find the top 10 apps best rated by users.
#select track_name, user_rating, prime_genre
#from myDatabase_2023.applestore2
#order by (user_rating) desc
#limit 10;

#7. Take a look at the data you retrieved in question 5. Give some insights.
# Games and Social Networking apps have the highest counting of rate
# Games is the genre with the most apps - Popular genre

#8. Take a look at the data you retrieved in question 6. Give some insights.
# Games and Fitness apps are the best rated
# Games and Fitness apps are the most popular
# Insights : create app from these two genre to multiply chances of obtainaing high rates from users

#9. Now compare the data from questions 5 and 6. What do you see?
# # Games is the genre with the most apps in high rating and counting of rate - Popular genre

#10. How could you take the top 3 regarding both user ratings and number of votes?
select track_name, user_rating, rating_count_tot
from myDatabase_2023.applestore2
group by track_name, user_rating, rating_count_tot
order by user_rating desc
limit 3;

#11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#price - user_rating - rating_count_tot
select track_name, price, user_rating, rating_count_tot
from myDatabase_2023.applestore2
group by track_name, price, user_rating, rating_count_tot
order by user_rating desc;






