select (select count(*) from emp1


select emp_id as Employee_Number from emp1;

select emp_Id Employee_Count from emp1;

select * from emp1;

select emp_id,emp_name as LastName from emp1;  

select * from emp1;

select *,emp_id,ID emp_name,Name emp_dept as dept from epm1;

select * from emp1;

select emp_id id,emp_name,emp_dept as dept from emp1;

select * from employees;

create table designation(
designation_id int,
salary int
);

drop table designation;

select * from designation;

insert into designation values (100,500000);

insert into designation values (102,300000);

select * from employees;



select * from designation where designation_id=(select emp_id from employees where designation='CEO');

select emp_name, e.salary emp_sal, designation, designation_id from employees e, designation d
where E.EMP_ID=D.DESIGNATION_ID

