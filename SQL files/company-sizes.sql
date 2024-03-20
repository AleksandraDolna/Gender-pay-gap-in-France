-- shows the average number of firms of different sizes per city for each group

SELECT lpg.`group` AS "GROUP", 
avg(cit.E14TST) AS "NUMBER OF FIRMS", 
avg(E14TS0ND) AS "UNKNOWN OR 0 EMPLOYEES", 
avg(E14TS1) AS "1-5 EMPLOYEES", 
avg(E14TS6) AS "6-9 EMPLOYEES", 
avg(E14TS10) AS "10-19 EMPLOYEES", 
avg(E14TS20) AS "20-49 EMPLOYEES", 
avg(E14TS50) AS "50-99 EMPLOYEES", 
avg(E14TS100)AS "100-199 EMPLOYEES", 
avg(E14TS200) AS "200-499 EMPLOYEES", 
avg(E14TS500) AS "500+ EMPLOYEES"
FROM COMPANIES_IN_TOWN cit 
RIGHT JOIN LIBGEO_POPULATION_GROUPS lpg ON cit.LIBGEO=lpg.LIBGEO 
GROUP BY lpg.`group` ;