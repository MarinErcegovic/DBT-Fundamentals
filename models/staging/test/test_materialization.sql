WITH customers AS (
    SELECT * FROM {{ ref('dim_customers')}}
)
SELECT 
customer_id AS id,
first_name AS  name,
number_of_orders AS number
FROM customers c


/*
Testni scenarij 1.

U big query-u definiramo tablicu na način:

CREATE TABLE dbt_mercegovic.TEST_MATERIALIZATION
(
id string(255),
name string(255),
number string(255)
);

Nakon što pokrenemo model TEST_MATERIALIZATION DBT automatski rekreira model/tablicu i promjeni tabličnu strukturu

*/


/*
Testni scenarij 2 

Izgleda da u verziji 1.7 treba odraditi manualni drop view-a / tablice ukoliko se radi promjena načina materijalizacije.

U verziji 1.6 je moguće pokrenuti dbt build komandu bez dropa (uz --full-refresh).


*/