# Gender pay gap in France

The report presents the gender pay gap in France. It compares the average salary for men and women in different age and job categories. The aim of the report is to show the difference between men's and women's salary. 

## Data
### Source 
Data source: 
https://www.kaggle.com/datasets/etiennelq/french-employment-by-town

### Data overview
This dataset includes various demographic, economic, and geographic data about towns in France. It includes information such as the number of firms categorized by size, geographical codes, town names, regional and departmental details, as well as demographic statistics like population, age, sex, and living conditions. Additionally, mean net salaries per job category, age group, and gender are provided

### Data processing
The data was uploaded to a database and through SQL queries I created CSV files with the data needed for the report. Then, I imported the data into Power BI and created the analyses. 

## Information extraction
### Data segmentation
The cities were divided into 5 groups according to their size. 

* Group 1 - cities with a population of 0 to 999 

* Group 2 - cities with a population of 1 000 to 9 999 

* Group 3 - cities with a population of 10 000 to 99 999 

* Group 4 - cities with population 100 000 to 999 999 

* Group 5 - cities with population more than 1 000 000

Through the [SQL query](./SQL%20files/population-groups.sql), I created a new table that contained the groups, the total population in the group and the number of cities in each group.
### Generating CSV files
 I created SQL queries with the data needed for the report and generated CSV files
* Getting company sizes

    * [SQL](./SQL%20files/company-sizes.sql)
    * [Output CSV](./CSV%20files/company-sizes.csv)
* Getting average salary for age and job categories
    * [SQL](./SQL%20files/avg-salary-job-age.sql)
    * [Output CSV](./CSV%20files/avg-salary-job-age.csv)
## Analysis
Based on the files generated, I created a Power BI report.


![alt text](<PNG files/report1.png>)
![alt text](<PNG files/report2.png>)
![alt text](<PNG files/report3.png>)
![alt text](<PNG files/report4.png>)
![alt text](<PNG files/report5.png>)