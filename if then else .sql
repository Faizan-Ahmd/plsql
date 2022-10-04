--draw back of using if then statement is that no special action is taken when if condition is not satisfied
--to overcome this problem if then else statment is used also known as if else statement
--syntax
--if condition then
--statement 1;
--else statement 2;
--end if;
--statement3;

declare
v_num number:=10;
begin 
if v_num>10 then
dbms_output.put_line('Number is greater then 10');
else 
dbms_output.put_line('No number is not greater then 10');
end if;
end;