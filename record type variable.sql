declare 
v_emp employees%rowtype;
begin 
select * into v_emp from employees where emp_id=100;
dbms_output.put_line(v_emp.emp_name||' ' ||v_emp.salary);
end;