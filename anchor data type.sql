declare
v_name employees.emp_name%type;
begin
select emp_name into v_name from employees where emp_id=100;
dbms_output.put_line(v_name);
end;