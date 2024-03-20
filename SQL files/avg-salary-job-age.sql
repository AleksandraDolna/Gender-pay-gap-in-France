-- shows average salary for different job categories and age categories for each group 
--for men and women and the difference between them as an absolute value

SELECT lpg.`group` AS "GROUP" , 
        AVG(nsptc.SNHMF14) AS "WOMEN", 
        AVG(nsptc.SNHMH14) AS "MEN", 
		AVG(nsptc.SNHM14) AS "MEAN NET",
        AVG(ABS(nsptc.SNHMF14-nsptc.SNHMH14)) AS "DIFFERENCE MEAN ABS",  
        AVG(nsptc.SNHMFC14) AS "W - EXECUTIVE", 
        AVG(nsptc.SNHMHC14) AS "M - EXECUTIVE", 
        AVG(ABS(nsptc.SNHMFC14-nsptc.SNHMHC14)) AS "DIFFERENCE EXECUTIVE ABS",
        AVG(nsptc.SNHMFP14) AS "W - MIDDLE MANAGER", 
        AVG(nsptc.SNHMHP14) AS "M - MIDDLE MANAGER", 
        AVG(ABS(nsptc.SNHMFP14-nsptc.SNHMHP14)) AS "DIFFERENCE MIDDLE MANAGER ABS",
        AVG(nsptc.SNHMFE14) AS "W - EMPLOYEE", 
        AVG(nsptc.SNHMHE14) AS "M - EMPLOYEE", 
        AVG(ABS(nsptc.SNHMFE14-nsptc.SNHMHE14)) AS "DIFFERENCE EMPLOYEE ABS",
        AVG(nsptc.SNHMFO14) AS "W - WORKER", 
        AVG(nsptc.SNHMHO14) AS "M - WORKER", 
        AVG(ABS(nsptc.SNHMFO14-nsptc.SNHMHO14)) AS "DIFFERENCE WORKER ABS",
        AVG(nsptc.SNHMF1814) AS "W - 18-25", 
        AVG(nsptc.SNHMH1814) AS "M - 18-25", 
        AVG(ABS(nsptc.SNHMF1814-nsptc.SNHMH1814)) AS "DIFFERENCE 18-25 ABS",
        AVG(nsptc.SNHMF2614) AS "W - 26-50",
        AVG(nsptc.SNHMH2614) AS "M - 26-50", 
        AVG(ABS(nsptc.SNHMF2614-nsptc.SNHMH2614)) AS "DIFFERENCE 26-50 ABS",
        AVG(nsptc.SNHMF5014) AS "W - 50+",
        AVG(nsptc.SNHMH5014) AS "M - 50+", 
        AVG(ABS(nsptc.SNHMF5014-nsptc.SNHMH5014)) AS "DIFFERENCE 50+ ABS"
FROM NET_SALARY_PER_TOWN_CATEGORIES nsptc 
right JOIN LIBGEO_POPULATION_GROUPS lpg ON nsptc.LIBGEO=lpg.LIBGEO 
GROUP BY lpg.`group` ;