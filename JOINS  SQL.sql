-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

-- Insert 10 records into Department table
INSERT INTO Department (DepartmentName, Location) VALUES
('HR', 'Mumbai'),
('Finance', 'Delhi'),
('IT', 'Bangalore'),
('Sales', 'Chennai'),
('Marketing', 'Hyderabad'),
('Operations', 'Pune'),
('R&D', 'Kolkata'),
('Legal', 'Ahmedabad'),
('Customer Support', 'Jaipur'),
('Admin', 'Lucknow');

-- Create Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DateOfJoining DATE NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID) ON DELETE SET NULL
);

-- Insert 40 records into Employee table
INSERT INTO Employee (FirstName, LastName, Email, Salary, DateOfJoining, DepartmentID) VALUES
('Amit', 'Sharma', 'amit.sharma@example.com', 60000, '2020-01-15', 1),
('Priya', 'Verma', 'priya.verma@example.com', 75000, '2019-03-22', 2),
('Rohan', 'Singh', 'rohan.singh@example.com', 80000, '2018-06-10', 3),
('Sneha', 'Patel', 'sneha.patel@example.com', 55000, '2021-07-18', 4),
('Rahul', 'Iyer', 'rahul.iyer@example.com', 72000, '2017-11-25', 5),
('Deepak', 'Nair', 'deepak.nair@example.com', 65000, '2022-02-20', 6),
('Anjali', 'Reddy', 'anjali.reddy@example.com', 70000, '2016-09-30', 7),
('Vikram', 'Chopra', 'vikram.chopra@example.com', 68000, '2023-05-14', 8),
('Meena', 'Das', 'meena.das@example.com', 71000, '2015-12-05', 9),
('Suresh', 'Ghosh', 'suresh.ghosh@example.com', 73000, '2014-08-19', 10),
('Neha', 'Jain', 'neha.jain@example.com', 64000, '2019-04-21', 1),
('Arun', 'Bajaj', 'arun.bajaj@example.com', 59000, '2020-10-30', 2),
('Kavita', 'Mishra', 'kavita.mishra@example.com', 62000, '2018-07-13', 3),
('Rakesh', 'Malhotra', 'rakesh.malhotra@example.com', 67000, '2017-02-27', 4),
('Pooja', 'Deshmukh', 'pooja.deshmukh@example.com', 70000, '2016-11-10', 5),
('Sandeep', 'Yadav', 'sandeep.yadav@example.com', 66000, '2021-06-05', 6),
('Lata', 'Kulkarni', 'lata.kulkarni@example.com', 74000, '2015-09-28', 7),
('Mahesh', 'Rastogi', 'mahesh.rastogi@example.com', 72000, '2023-03-12', 8),
('Komal', 'Joshi', 'komal.joshi@example.com', 69000, '2014-07-08', 9),
('Sunil', 'Kapoor', 'sunil.kapoor@example.com', 63000, '2019-12-01', 10),
('Gaurav', 'Bose', 'gaurav.bose@example.com', 58000, '2020-05-17', 1),
('Swati', 'Aggarwal', 'swati.aggarwal@example.com', 61000, '2018-02-24', 2),
('Yash', 'Tripathi', 'yash.tripathi@example.com', 65000, '2017-08-19', 3),
('Bhavya', 'Saxena', 'bhavya.saxena@example.com', 72000, '2016-05-22', 4),
('Ritu', 'Chatterjee', 'ritu.chatterjee@example.com', 78000, '2021-01-11', 5),
('Anup', 'Thakur', 'anup.thakur@example.com', 64000, '2015-06-30', 6),
('Ishita', 'Menon', 'ishita.menon@example.com', 69000, '2023-04-15', 7),
('Kunal', 'Bhatia', 'kunal.bhatia@example.com', 71000, '2014-10-18', 8),
('Divya', 'Roy', 'divya.roy@example.com', 62000, '2019-01-29', 9),
('Rajeev', 'Kumar', 'rajeev.kumar@example.com', 58000, '2020-06-23', 10),
('Sonali', 'Pandey', 'sonali.pandey@example.com', 67000, '2018-03-15', 1),
('Manish', 'Verma', 'manish.verma@example.com', 73000, '2017-09-26', 2),
('Geeta', 'Dutta', 'geeta.dutta@example.com', 75000, '2016-07-21', 3),
('Harsh', 'Mangal', 'harsh.mangal@example.com', 69000, '2021-02-28', 4),
('Snehal', 'Tiwari', 'snehal.tiwari@example.com', 62000, '2015-10-12', 5),
('Ajay', 'Shetty', 'ajay.shetty@example.com', 77000, '2023-05-09', 6),
('Lavanya', 'Shah', 'lavanya.shah@example.com', 65000, '2014-06-05', 7),
('Ravi', 'Naik', 'ravi.naik@example.com', 71000, '2019-11-14', 8),
('Megha', 'Sinha', 'megha.sinha@example.com', 63000, '2020-08-30', 9),
('Tushar', 'Bhattacharya', 'tushar.bhattacharya@example.com', 70000, '2018-12-03', 10);


SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;

Here are 15 SQL questions using simple joins on your Employee and Department tables;

-- 1. Retrieve all employees along with their department names;

select concat(e.firstname,' ', e.lastname)as fullname, d.departmentname from employee as e
left join department as d
on e.departmentid = d.departmentid;

-- 2. Find employees who work in the "IT" department;

select e.firstname, e.lastname, d.departmentname from employee as e
join department as d
on e.departmentid = d.departmentid
where departmentname = 'it';

-- 3. List employees along with their department locations;

select e.firstname, e.lastname, d.location  from employee as e
left join department as d
on e.departmentid = d.departmentid;

-- 4. Retrieve the total number of employees in each department;

select  d.departmentname,count(employeeid) as totalemployee from department as d
left join employee as e
on d.departmentid = e.departmentid
group by d.departmentname;


-- 5. Find the highest-paid employee in each department;

select max(salary) as highestsalary from employee 
where d.departmentid = e.departmentid;

select e.firstname, e.lastname, d.departmentname, e.salary  from  department as d
join employee as e
on d.departmentid = e.departmentid
where e.salary = (select max(salary) as highestsalary from employee 
where d.departmentid = e.departmentid);

-- 6. Display employees who joined after January 1, 2020, along with their department names;

select e.EmployeeID, e.firstname, e.lastname,DateOfJoining, d.departmentname from employee as e
left join department as d
on e.departmentid = d.departmentid
where DateOfJoining > '2020-01-01';

-- 7. Show employees earning more than ₹70,000 and their respective departments;

select e.firstname, e.lastname, e.salary, d.departmentname from employee as e
join department as d
on e.departmentid = d.departmentid
where e.salary > 70000;

-- 8. Retrieve employees working in the "Pune" office;

select e.EmployeeID, e.firstname, e.lastname,d.location from employee as e
left join department as d
on e.departmentid = d.departmentid
where location = 'pune';

-- 9. List employees along with department names in alphabetical order of department names;

select e.firstname, e.lastname, d.departmentname from employee as e
left join department as d
on e.departmentid = d.departmentid
order by departmentname asc;

-- 10. Find the average salary of employees in each department;

select  d.departmentname, avg(e.salary) as avgsalary  from department as d
left join employee as e
on d.departmentid = e.departmentid
group by departmentname;

-- 11. Show employees whose last names start with 'S' along with department names;

select e.firstname, e.lastname, d.departmentname from employee as e
left join department as d
on e.departmentid = d.departmentid
where e.lastname like 's%';

-- 12. Find the department with the most employees;

select  d.departmentname, count(e.employeeid) as totalemployees from department as d
left join employee as e
on d.departmentid = e.departmentid
group by departmentname 
order by totalemployees desc limit 1;

-- 13. Show employees who do not have a department assigned;

select  * from employee 
where departmentid = null;

-- 14. Retrieve employees sorted by salary in descending order along with their department names;

select e.firstname, e.lastname, d.departmentname, e.salary from employee as e
left join department as d
on e.departmentid = d.departmentid
order by e.salary desc;

-- 15. List the employees with the same department as 'Amit Sharma';

 select e2.firstname, e2.lastname from employee e2
 where e2.DepartmentID = (select DepartmentID from employee where  firstname = 'amit' and lastname = 'sharma');
 
 --16. Retrieve employees who work in departments located in Mumbai or Delhi;
 
 select e.*, d.departmentname,d.location from employee as e
 join department as d
 on e.departmentid = d.departmentid
 where location in ('mumbai','delhi');

--17. Show employee names along with the department names for employees earning less than ₹60,000;

select e.firstname,e.lastname,d.departmentname, e.salary from employee as e
join department as d
on e.departmentid = d.departmentid
where e.salary < 60000;

--18. Retrieve employees who joined before 2018 along with their department details;

select e.firstname,e.lastname,d.departmentname,e.DateOfJoining from employee as e
join department as d
on e.departmentid = d.departmentid
where e.DateOfJoining < '2018-01-01';

--19. List the departments that have no employees;

select d.departmentname from department as d
left join employee as e
on d.departmentid = e.departmentid
where e.employeeid = null;

--20. Show the name of the department with the lowest average salary;

select d.departmentname,avg(salary) from department as d
 join employee as e
 on d.departmentid = e.departmentid
 group by d.departmentname
 order by avg(salary) asc limit 1;

--21. Retrieve employees who work in the same city (location) as their colleagues;

select e.firstname,e.lastname,d.departmentname,d.location from employee as e
join department as d
on e.departmentid = d.departmentid
where d.departmentid in( select departmentid from employee
group by departmentid
having count(employeeid) > 1);

--22. Show employees whose department name contains the letter 'a';

select e.firstname,e.lastname,d.departmentname from employee as e
join department as d
on e.departmentid = d.departmentid
where d.departmentname like '%a%';

--23. Find employees who earn more than the average salary of their department;

select avg(salary) from employee;

select e.firstname,e.lastname,d.departmentname,e.salary from employee as e
join department as d
on e.departmentid = d.departmentid
where e.salary > (select avg(salary) from employee
where DepartmentID = e. DepartmentID);

--24. List departments along with total salary expenditure of each department;

select d.departmentname, sum(salary)  from department d
 join employee as e
 on d.departmentid = e.departmentid
 group by  d.departmentname;

--25. Retrieve employees who joined in the same year as 'Priya Verma';

select e.* from employee as e
where year(DateOfJoining) = (select year(DateOfJoining) from employee
where firstname = 'priya' and lastname = 'verma' );

--26. Show the youngest (most recently joined) employee per department;

--27. Retrieve all departments along with the highest salary in each department;

--28. List employees who belong to top 3 highest-paid departments (based on avg salary);

--29. Retrieve employees whose department location starts with 'B';

--30. Find departments where more than 4 employees work;

--31. List employees along with department name sorted by joining date (newest first);

--32. Retrieve employees whose salary is between the minimum and maximum salary of their department;

--33. Show each department along with number of employees having salary > 70,000;

--34. Show departments where total salary expense is more than ₹3,00,000;

--35. Retrieve employees who work in the same department as at least two other employees;