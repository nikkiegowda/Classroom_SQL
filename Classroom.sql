create database sql_commands;
use sql_commands;

# Create a table called "students" with the following columns: "id" (integer, primary key), "name" (text), "age" (integer), "gender" (text), and "major" (text).

create table students (
id int primary key,
s_name text,
age int ,
gender text,
major text
);

#	Insert a new row into the "students" table with the following values: id=1, name='John Smith', age=22, gender='Male', major='Computer Science'.
insert into students values (1,'john smith',22,'male','computer science');

#	Write a SQL query to retrieve the names of all students in the "students" table.

select s_name from students;
#4.	Write a SQL query to retrieve the names and ages of all female students in the "students" table.
select s_name,age from students where gender = 'female';

#	Write a SQL query to update the age of the student with id=1 to 23.

update students
set id = 23
where s_name = 'john smith';
select * from students;
#6.	Create a new table called "courses" with the following columns: "id" (integer, primary key), "name" (text), and "description" (text).

create table courses(
id int primary key,
name text,
description text
);

#DATABASE CREATION: -
#1.	Create a database ‘classroom’
#2.	Create a table named ‘science_class’ with the following properties
#a.	columns(enrollment_no int, name varchar, science_marks int)

create database classroom;
use classroom;
create table science_class(
enrollment_no int,
name varchar(40),
science_marks int
);
#1.	Insert the following data into science_class using the insert into command
#1	popeye	33
#2	olive	54
#3	brutus	98

insert into science_class values (1,'popeye',33),(2,'olive',54),(3,'brutus',98);
select * from science_class;

#2.	import data from CSV file ‘student.csv’ attached in resources to science_class to insert data of the next 8 students
#1.Retrieve all data from the table ‘Science_Class’
select * from science_class;


#2.	Retrieve the name of students who have scored more than 60 marks
select name from science_class where science_marks > 60;

#3.	Retrieve all data of students who have scored more than 35 but less than 60 marks
select * from science_class where science_marks >35 and science_marks<65;
select * from science_class where science_marks between 35 and 65;

#4.	Retrieve all other students i.e., who have scored less than or equal to 35 or more than or equal to 60.
select* from science_class where science_marks <= 35 or science_marks >= 60;

#UPDATING TABLES: -
#1.	update the marks of popeye to 45
update science_class
set science_marks = '45'
where name = 'popeye';
 
select* from science_class;
#2.	delete the row containing details of the student named ‘robb’

delete from science_class where name='robb';

#3.	Rename column ‘name’ to ‘student_name’
alter table science_class rename to student_name;
