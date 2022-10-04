declare
v_salary number(8);
begin
select salary into v_salary from employees where emp_id=100;
dbms_output.put_line(v_salary);
end;
/
declare 
v_salary number(8);
v_name varchar(20);
begin
select emp_name,salary into v_name,v_salary from employees where emp_id=100;
dbms_output.put_line(v_name || ' Has salary '|| v_salary);
end;