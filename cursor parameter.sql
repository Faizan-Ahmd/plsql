declare 
v_name varchar(30);
cursor p_cur (var_e_id number) is 
select emp_name from employees 
where emp_id>var_e_id and emp_id<var_e_id;
begin 
open p_cur(105);
loop
fetch p_cur into v_name;
exit when p_cur%NOTFOUND;
dbms_output.put_line(v_name);
end loop;
close p_cur;
end;
/
select emp_id,emp_name from employees where emp_id>100 and emp_id<105;