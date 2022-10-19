declare
v_name varchar(30);
cursor cur_emp is
select emp_name from employees where emp_id>100 and emp_id<105;
begin 
open cur_emp;
loop 
fetch cur_emp into v_name;
dbms_output.put_line(v_name);
exit when cur_emp%NOTFOUND;
end loop;
close cur_emp;
end;
/
describe employees;