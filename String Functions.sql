/* ........................................................  ..............................................................*/                                       
create database company;
use company;
create table worker (
WORKER_ID int not null,
FIRST_NAME varchar(50) not null,
LAST_NAME varchar(50) not null,
SALARY int not null,
JOINING_DATE datetime not null,
DEPARTMENT varchar(30) not null);
insert into worker ( WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
values(001,'Monika','Arora',100000,'2021-02-20 09:00:00','HR'),
(002,'Niharika','Verma',80000,'2021-06-11 09:00:00','Admin'),
(003,'Vishal','Singhal',300000,'2021-02-20 09:00:00','HR'),
(004,'Amitabh','Singh',500000,'2021-02-20 09:00:00','Admin'),
(005,'Vivek','Bhati',500000,'2021-06-11 09:00:00','Admin'),
(006,'Vipul','Diwan',200000,'2021-06-11 09:00:00','Account'),
(007,'Satish','Kumar',75000,'2021-01-20 09:00:00','Account'),
(008,'Geetika','Chauhan',90000,'2021-04-11 09:00:00','Admin');
select * from worker;



create table bonus (
WORKER_REF_ID int not null,
BONUS_DATE datetime not null,
BONUS_AMOUNT int not null);
insert into bonus ( WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT)
values(1,'2023-02-20 00:00:00',5000),
(2,'2023-06-11 00:00:00',3000),
(3,'2023-02-20 00:00:00',4000),
(1,'2023-02-20 00:00:00',4500),
(2,'2023-06-11 00:00:00',3500);
select * from bonus;


create table title (
WORKER_REF_ID int not null,
WORKER_TITLE varchar(30),
AFFECTED_FROM datetime not null );
insert into title ( WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM)
values(1,'Manager','2023-02-20 00:00:0'),
(2,'Executive','2023-06-11 00:00:00'),
(8,'Executive','2023-06-11 00:00:00'),
(5,'Manager','2023-06-11 00:00:00');
select * from title;

/* Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>. */
select FIRST_NAME as WORKER_NAME from worker;

/* Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in uppercase. */ 
select upper(FIRST_NAME)  from worker;

/* Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table. */
Select distinct (DEPARTMENT) from Worker;

/* Q-4. Write an SQL query to print the first three characters of FIRST_NAME from the Worker table. */ 
SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;

/* Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.*/
SELECT INSTR(FIRST_NAME, BINARY'a') FROM Worker WHERE FIRST_NAME = 'Amitabh';

/* Q-6. Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side. */ 
select rtrim(FIRST_NAME) from worker;

/* Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side. */
select ltrim(DEPARTMENT) from worker;

/* Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length. */
select distinct(DEPARTMENT), length(DEPARTMENT) from worker;

/* Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.  */ 
select replace(FIRST_NAME,"a","A") from worker;

/* Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.*/ 
select concat(FIRST_NAME,' ',LAST_NAME) as COMPLETE_NAME from worker;

/* Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending. */ 
select * from worker order by FIRST_NAME;

/* Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. */ 
select * from worker order by FIRST_NAME ASC , DEPARTMENT DESC;

/* Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. */ 
select * from worker where FIRST_NAME in ("Vipul" , "Satish");

/* Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table. */
select * from worker where FIRST_NAME not in ('Vipul', 'Satish');

/* Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”. */ 
select *  from worker where DEPARTMENT like 'Admin%'; 
select * from worker where DEPARTMENT in ('Admin');

/* Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’. */ 
select * from worker where FIRST_NAME like '%a%';

/* Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’. */
select * from worker where FIRST_NAME like '%a';

/* Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. */
select * from worker where FIRST_NAME like '_____h';
 
/* Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. */
select * from worker where SALARY between 100000 and 500000;
 
/* Q-20. Write an SQL query to print details of the Workers who joined in Feb 2021. */
select * from worker where JOINING_DATE like '2021-02%';

/* Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’. */
select count(DEPARTMENT) from worker where DEPARTMENT= 'Admin';



















