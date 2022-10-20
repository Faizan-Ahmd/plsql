declare 
v_name varchar(30);
v_id number(10);
cursor cur_p is 
select emp_name,emp_id from employees where emp_id>100;
begin 
for l_idx in cur_p
loop
dbms_output.put_line(l_idx.emp_name||' ' ||l_idx.emp_id);
end loop;
end;