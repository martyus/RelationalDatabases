show databases;

create database if not exists employee_sys;

use employee_sys;

create table department(
	dep_id tinyint primary key auto_increment,
    dep_name varchar(5) not null,
    team_id tinyint );
    
create table employee(
	employee_id int primary key auto_increment,
    first_name varchar(15) not null,
    last_name varchar(15) not null,
    age tinyint not null,
    dept tinyint,
    foreign key(dept) references department(dep_id) );
    
insert into department values (1, "IT", 9);

insert into department(dep_name) values ("HR"); 

insert into department(dep_name, team_id) values ("IT", 7),("OPS", 1), ("FIN", 3);

select * from department;

select * from employee;

insert into employee values (1001, "Martina", "Yusuf", 18, 1);

insert into employee(first_name, last_name, age, dept) values ( "John", "Doe", 35, 3);

-- referential integrity
insert into employee(first_name, last_name, age, dept) values ( "Jane", "Doe", 36, 33);

insert into employee(first_name, last_name, age, dept) values ( 'Neil', 'O\'Neil', 36, 3);

insert into employee values (1003, "Santa", "Claus", 65, 2);








