# CREATE A CTE AND STORE INTO A temp table

CREATE TABLE All_Data_Science_Salary AS
with cte_name as (
select * 
from latest_data_science_salaries v2
union all select * from v2_latest_data_science_salaries 
union all select
* from v3_latest_data_science_salaries
union all select
* from v4_latest_data_science_salaries
)
SELECT * FROM cte_name;


# CREATE A CTE AND STORE INTO A temp table

CREATE TABLE All_Data_Science_Salary AS
with cte_name as (
select * 
from latest_data_science_salaries v2
union all select * from v2_latest_data_science_salaries 
union all select
* from v3_latest_data_science_salaries
union all select
* from v4_latest_data_science_salaries
)
SELECT * FROM cte_name;

CREATE TABLE Data_Science_Salary (
    `Job Title` TEXT,
    `Employment Type` TEXT,
    `Experience Level` TEXT,
    `Expertise Level` VARCHAR(50),
    Salary INT,
    `Salary Currency` TEXT,
    `Company Location` TEXT,
    `Salary in USD` INT,
    `Employee Residence` TEXT,
    `Company Size` TEXT,
    Year INT
);

insert into Data_science_Salary 
select * from all_data_science_salary;


drop table all_data_science_salary;

drop table latest_data_science_salaries;

drop table v2_latest_data_science_salaries;

drop table v3_latest_data_science_salaries;

drop table v4_latest_data_science_salaries;



alter table data_science_salary
drop column `Salary`;


alter table data_science_salary
drop column `Salary Currency`;


SELECT DISTINCT
    year
FROM
    data_science_salary;

SELECT DISTINCT
    `Salary Currency`
FROM
    data_science_salary;



SELECT 
    *
INTO OUTFILE 'C:ProgramDataMySQLMySQL Server 8.0Uploadsds.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '
' FROM
    data_science_salary;
