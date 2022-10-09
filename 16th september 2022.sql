select emp_name,dept_name from emp,dept;

create table emp1(
    emp_id number(3),
    emp_name varchar(20),
    emp_dept varchar(20),
    emp_salary int
    );
    
select * from emp1;

insert into emp1 values(1,'Ram','HR',1000);

select * from emp1;

insert into emp1 values (2,'Amrit','MRkT',2000);

select * from emp1;

delete from emp1 where emp_id=2;

select * from emp1;

insert into emp1 values(2,'Amrit','MRKT',2000);

select * from emp1;

insert into emp1 values(3,'Ravi','HR',3000);

select * from emp1;

insert into emp1 values(4,'Nitin','MRKt',4000);

insert into emp1 values(5,'Varun','IT',5000);

select * from emp1;

select max(emp_salary) from emp1;

select emp_name,emp_salary,emp_dept,emp_id from emp1 where emp_salary= ( select max(emp_salary) from emp1);

select emp_name,emp_salary from emp1 where emp_salary=(select max(emp_salary) from emp1 where emp_salary<(select max(emp_salary) from emp1));

select count(emp_dept) from emp1;

select emp_dept, count(*) from emp1 group by emp_dept;

select * from emp1;

select emp_dept,count(emp_name) from emp1 group by emp_dept;

select * from emp1;

update emp1 set emp_dept='MRKT' where emp_dept='MRKt';

select * from emp1;

select emp_dept,count(emp_name) from emp1 group by emp_dept;

select emp_name,count(emp_dept) from emp1 group by emp_name;

select emp_name from emp1 where emp_dept in (select emp_name,emp_dept,count(emp_name) from emp1 group by emp_dept having count(*)<2);