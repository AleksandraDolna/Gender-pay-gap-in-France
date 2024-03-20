-- creates a new table which divides the cities into five groups


CREATE TABLE LIBGEO_POPULATION_GROUPS AS
SELECT 
    p.LIBGEO,
    SUM(p.NB) AS sum_nb,
    CASE 
        WHEN SUM(p.NB) BETWEEN 0 AND 999 THEN 'GROUP 1'
        WHEN SUM(p.NB) BETWEEN 1000 AND 9999 THEN 'GROUP 2'
        WHEN SUM(p.NB) BETWEEN 10000 AND 99999 THEN 'GROUP 3'
        WHEN SUM(p.NB) BETWEEN 100000 AND 999999 THEN 'GROUP 4'
        WHEN SUM(p.NB) BETWEEN 1000000 AND 3000000 THEN 'GROUP 5'
        ELSE 'OTHER'
    END AS "group"
FROM 
    POPULATION p
GROUP BY 
    p.LIBGEO;



-- shows number of inhabitants and the number of towns in each group

    SELECT `group`,SUM(sum_nb), COUNT(LIBGEO) 
FROM LIBGEO_POPULATION_GROUPS lpg
GROUP BY `group` ;