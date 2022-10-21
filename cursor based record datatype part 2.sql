declare 
cursor cur_p is 
select emp_name,salary from employees 
where emp_id>100 and emp_id<105;
v_emp cur_p%rowtype;
begin 
open cur_p;
loop
fetch cur_p into v_emp;
exit when cur_p%notfound;
dbms_output.put_line(v_emp.emp_name||' '||v_emp.salary);
end loop;
close cur_p;
end;
    