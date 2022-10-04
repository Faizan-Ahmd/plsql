declare 
v_num number:=&enter_a_number;
begin
if mod(v_num,2)=0 then 
dbms_output.put_line(v_num || ' is even Number');
else
dbms_output.put_line(v_num ||' is odd Number');
end if;
end;

--substitution operator is usdes to take input from the user &enter_a_number