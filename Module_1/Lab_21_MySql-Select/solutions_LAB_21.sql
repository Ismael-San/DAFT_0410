use publications;

##Challenge 1 -- 20/04/23
SELECT  publi_titaut.au_id as author_id, au_lname as Last_Name, au_fname as First_Name, title as Title, pub_name as Publisher

FROM publications.titleauthor as publi_titaut

left join publications.authors as publi_aut
	on publi_titaut.au_id = publi_aut.au_id

left join publications.titles as publi_tit
	on publi_tit.title_id = publi_titaut.title_id

left join publications.publishers as publi_publi
	on publi_publi.pub_id = publi_tit.pub_id;

-- 13/05/23
SELECT a.au_id as AUTHOR_ID, a.au_lname as LAST_NAME, a.au_fname as FIRST_NAME, t.title as TITLE, p.pub_name as PUBLISHER
FROM titleauthor ta
LEFT JOIN authors a using (au_id)
LEFT JOIN titles t using (title_id)
LEFT JOIN publishers p using (pub_id)
ORDER BY a.au_id, p.pub_name DESC
limit 12;

##Challenge 2
-- SELECT ,
-- COUNT(*)
-- FROM titleauthor ta
-- GROUP BY au_id;
#LEFT JOIN authors a using (au_id)
#LEFT JOIN titles t using (title_id)
#LEFT JOIN publishers p using (pub_id);


##Challenge 3
SELECT a.au_id as AUTHOR_ID, a.au_lname as LAST_NAME, a.au_fname as FIRST_NAME, 
COUNT(t.title) as TOTAL
FROM titleauthor ta
LEFT JOIN authors a using (au_id)
LEFT JOIN titles t using (title_id)
LEFT JOIN publishers p using (pub_id)
GROUP BY (a.au_id)
ORDER BY TOTAL DESC;
#limit 3;

-- ------------------------------------------
SELECT a.au_id as AUTHOR_ID, a.au_lname as LAST_NAME, a.au_fname as FIRST_NAME, SUM(s.qty) as TOTAL
FROM authors a
LEFT JOIN titleauthor ta using (au_id)
LEFT JOIN sales s using (title_id)
GROUP BY a.au_id
ORDER BY TOTAL DESC
limit 3;

#Challenge 4

SELECT a.au_id as AUTHOR_ID, a.au_lname as LAST_NAME, a.au_fname as FIRST_NAME, SUM(s.qty) as TOTAL
FROM authors a
LEFT JOIN titleauthor ta using (au_id)
LEFT JOIN sales s using (title_id)
GROUP BY a.au_id
ORDER BY TOTAL DESC;

UPDATE authors a
SET TOTAL=0
WHERE TOTAL IS NULL;
