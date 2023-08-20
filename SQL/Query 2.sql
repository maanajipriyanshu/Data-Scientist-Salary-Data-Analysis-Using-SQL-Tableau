SELECT 
    `job title`, SUM(Salary_USD) AS `Total_Salary(USD)`
FROM
    data_science_salary
WHERE
    `Experience Level` LIKE '%Entry%'
GROUP BY `job title`
ORDER BY `Total_salary(USD)` DESC
LIMIT 10;


SELECT 
    `job title`, SUM(Salary_USD) AS `Total_Salary(USD)`
FROM
    data_science_salary
WHERE
    `Experience Level` LIKE '%Mid%'
GROUP BY `job title`
ORDER BY `Total_salary(USD)` DESC
LIMIT 10;

SELECT 
    `job title`, SUM(Salary_USD) AS `Total_Salary(USD)`
FROM
    data_science_salary
WHERE
    `Experience Level` LIKE '%senior%'
GROUP BY `job title`
ORDER BY `Total_salary(USD)` DESC
LIMIT 10;


#Year wise Salary 

SELECT 
    `Job Title`,
    SUM(CASE
        WHEN year = 2020 THEN Salary_USD
        ELSE 0
    END) AS `Total Salary in 2020`,
    SUM(CASE
        WHEN year = 2021 THEN Salary_USD
        ELSE 0
    END) AS `Total Salary in 2021`,
    SUM(CASE
        WHEN year = 2022 THEN Salary_USD
        ELSE 0
    END) AS `Total Salary in 2022`,
    SUM(CASE
        WHEN year = 2023 THEN Salary_USD
        ELSE 0
    END) AS `Total Salary in 2023`
FROM
    data_science_salary
WHERE
    year IN (2020 , 2021, 2022, 2023)
GROUP BY `Job Title`
order by `Total Salary in 2020`;

SELECT 
    `Job Title`,
    ROUND(AVG(CASE
                WHEN year = 2020 THEN Salary_USD
                ELSE 0
            END),
            2) AS `Average Salary in 2020`,
    ROUND(AVG(CASE
                WHEN year = 2021 THEN Salary_USD
                ELSE 0
            END),
            2) AS `Average Salary in 2021`,
    ROUND(AVG(CASE
                WHEN year = 2022 THEN Salary_USD
                ELSE 0
            END),
            2) AS `Average Salary in 2022`,
    ROUND(AVG(CASE
                WHEN year = 2023 THEN Salary_USD
                ELSE 0
            END),
            2) AS `Average Salary in 2023`
FROM
    data_science_salary
GROUP BY `Job Title`
LIMIT 5;
    
    
SELECT 
    `Job Title`, COUNT(`Job Title`) AS `Total Employee`
FROM
    data_science_salary
GROUP BY `Job Title`
ORDER BY `Total Employee` DESC
limit 10;