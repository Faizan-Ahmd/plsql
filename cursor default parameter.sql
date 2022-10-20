declare 
v_name varchar(30);
v_eid number(10);
cursor cur_p(var_e_id number:=105) is 
select emp_name,emp_id from employees
where emp_id>100 and emp_id<var_e_id;
begin
open cur_p;
loop
fetch cur_p into v_name,v_eid;
exit when cur_p%notfound;
dbms_output.put_line(v_name||' '||v_eid);
end loop;
end;