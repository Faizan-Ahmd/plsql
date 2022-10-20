declare
cursor cur_p is
select emp_name,salary from employees where emp_id=102;
v_emp cur_p%rowtype;
begin
open cur_p;
fetch cur_p into v_emp;
dbms_output.put_line(v_emp.emp_name||' ' ||v_emp.salary);
close cur_p;
end;
