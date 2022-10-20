declare
type r_type is record(
v_emp varchar(30),
v_id number
);
var1 r_type;
begin 
select emp_name,salary into var1.v_emp,var1.v_id from employees where emp_id=102;
dbms_output.put_line(var1.v_emp||' ' ||var1.v_id);
end;