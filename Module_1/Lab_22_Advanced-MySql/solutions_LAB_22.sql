use publications;

##Step 1
SELECT ta.title_id as TITLE_ID, ta.au_id as AUTHOR_ID, t.advance as ADVANCE, ta.royaltyper as RoyTyper
, s.qty as SALES, t.price as PRICE, t.royalty as ROYALTY
FROM titleauthor ta
LEFT JOIN titles t using (title_id)
LEFT JOIN sales s using (title_id)
LEFT JOIN roysched r using (title_id);

SELECT TITLE_ID, (ADVANCE*RoyTyper)/100 as advance2, (PRICE*SALES*ROYALTY)/100 * (RoyTyper/100) as sales_royalty
FROM (SELECT ta.title_id as TITLE_ID, ta.au_id as AUTHOR_ID, t.advance as ADVANCE, ta.royaltyper as RoyTyper
, s.qty as SALES, t.price as PRICE, t.royalty as ROYALTY
FROM titleauthor ta
LEFT JOIN titles t using (title_id)
LEFT JOIN sales s using (title_id)
LEFT JOIN roysched r using (title_id)
) summary;

##Step 2
SELECT TITLE_ID, (ADVANCE*RoyTyper)/100 as advance2, (PRICE*SALES*ROYALTY)/100 * (RoyTyper/100) as sales_royalty
#SUM(sales_royalty) as Sum_Sales
FROM (SELECT ta.title_id as TITLE_ID, ta.au_id as AUTHOR_ID, t.advance as ADVANCE, ta.royaltyper as RoyTyper
, s.qty as SALES, t.price as PRICE, t.royalty as ROYALTY
FROM titleauthor ta
LEFT JOIN titles t using (title_id)
LEFT JOIN sales s using (title_id)
LEFT JOIN roysched r using (title_id)
) summary
#GROUP BY AUTHOR_ID, TITLE_ID;



##Step 3




#CHALLENGE 2
CREATE TEMPORARY TABLE most_profiting_authors
SELECT ta.title_id as TITLE_ID, ta.au_id as AUTHOR_ID, t.advance as ADVANCE, ta.royaltyper as RoyTyper
, s.qty as SALES, t.price as PRICE, t.royalty as ROYALTY
FROM titleauthor ta
LEFT JOIN titles t using (title_id)
LEFT JOIN sales s using (title_id)
LEFT JOIN roysched r using (title_id);


SELECT * from most_profiting_authors