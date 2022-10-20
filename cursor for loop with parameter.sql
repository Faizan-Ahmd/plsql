declare
v_name varchar(30);
v_id number(10);
cursor cur_p(var_e_id number) is 
select emp_name,emp_id from employees 
where emp_id>100 and emp_id<var_e_id;
begin 
for l_idx in cur_p(105)
loop 
dbms_output.put_line(l_idx.emp_name||' '||l_idx.emp_id);
end loop;
end;

