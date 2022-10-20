declare
v_emp employees%rowtype;
begin
select emp_name,salary into v_emp.emp_name,v_emp.salary from employees
where emp_id=102;
dbms_output.put_line(v_emp.emp_name);
dbms_output.put_line(v_emp.salary);
end;