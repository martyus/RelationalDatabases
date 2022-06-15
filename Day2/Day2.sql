select * from employee;

update employee set first_name = "Derek" where employee_id = 1004;

delete from employee where employee_id = 1003;

-- where clause needs to use the primary key
delete from employee where first_name = "Derek";

-- if age was not set to not null
update employee set age = null where employee_id = 1002;

-- clear all the data in the table
delete from employee;

select * from employee;

select * from employee where last_name = "Doe" or first_name = "Martina";

select first_name, last_name, age from employee;

select * from department;

select dep_name as Department, team_id as Team from department;

select team_id+1 as Calculation from department;

select * from department order by dep_name desc;

update employee set first_name = 'Daisy' where employee_id between 1001 and 1004;

select * from employee where employee_id >= 1002 order by age desc;

update employee set first_name = 'Mary' where last_name like "%eil";

select * from employee where last_name like "%eil";

select * from department;

select count(*), dep_name from department group by dep_name;


insert into department(dep_name, team_id) values ("IT", 5);


select * from employee;

-- inner join
select first_name, last_name, age, dep_name, team_id from employee inner join department on employee.dept = department.dep_id;


-- outer join
select first_name, last_name, age, dep_name, team_id from employee right outer join department on  employee.dept = department.dep_id;


insert into employee(first_name, last_name, age) values ( "John", "Doe", 35);
