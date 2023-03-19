/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 *
 */
 

SELECT country FROM country 
JOIN address USING (city_id) 
JOIN city USING (country_id) 
JOIN customer USING (address_id) 

GROUP BY country 
ORDER BY count(customer_id) DESC
LIMIT 1;
