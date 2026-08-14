create database Employee;
use Employee;
create  table departments( department_id   int auto_increment primary key,
	department_name varchar(30) not null);
   create table  location( location_id int  auto_increment primary key,
   location_name varchar(30) not null);
     create table employee( employee_id int auto_increment primary key,
     employee_name varchar(30) not null,
     gender  enum('M','F'),
     age  int  check(age>=18),
     hire_date date default (current_date),
     designation  varchar(50),
     salary decimal(8,2),
     department_id int,
     location_id int,
     foreign key (department_id) references departments(department_id),
     foreign key(location_id) references location (location_id));
     
     
     
     
     INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);
     
     
     select * from departments;
     select * from locations;
     select * from employees;
     
     
     DIATINCT SALARIES FRO EMPLOYEES
  select distinct salary from employees;
  
  --- alise using age amd salary
  
select age as employee_age,
  salary as employee_salary
  from employees;  

--- where clause and operator

select  * from employees
 where salary >50000
 and hire_date <'2016-01-01';
     
     select * from employees where   designation  is null;
	---sorting and grouping
    order by
     select * from employees order by Department_id ASC , salary DESC;
     
     
     limit
     select * from employees where year(Hire_date)= '2018'limit 5;
     
     Aggregate Functions
     SELECT SUM(salary) AS total_finance_salary
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Finance'
);

SELECT MIN(age) AS minimum_age
FROM employees;

group by 
list of max
select location_id ,max(salary) max_salary
from employees
group by  location_id;

calculate  average

select designation,
avg (salary) as average_salary
from employees 
where designation  like '% Analyst%'
group by designation;

---Having

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) < 3;


SELECT location_id, AVG(age) AS average_age
FROM employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;

---join functions using 
inner join

select e.employee_name,
e.designation,
d.Department_name
from employees as e
inner join departments AS d
  on e.department_id= d.department_id;

Left join


SELECT 
    d.department_id,
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
 
right join
 
 
 SELECT
    l.location_name,
    e.employee_name
FROM locations AS l
LEFT JOIN employees AS e
    ON l.location_id = e.location_id;
