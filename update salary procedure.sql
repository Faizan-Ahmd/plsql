create or replace procedure emp_sal(id number, sal_raise number)
is
begin
update EMPLOYEES set salary=salary+sal_raise where emp_id=id;
dbms_output.put_line('Salary Updated Successfully');
end;

/
select * from employees;

/
execute emp_sal(100,100);