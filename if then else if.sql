--if then else if statement
--execution of the if then else if statement start by checking first condition if the condition is
--true then no below mentioned condition is cehecked.
--syntax
--if condition 1 then 
-- statement1;
--els if condition 2 then
--statment2;
--else if condition 3 then 
--statement3;
--....
--else
--statementN;
--end if;
declare 
v_num number:=&enter_a_number;
begin
if v_num>10 then
dbms_output.put_line('Number is greater then 10');
elsif  v_num=10 then
dbms_output.put_line('Number is equal to 10');
else
dbms_output.put_line('Number is lesser then 10');
end if;
end;
