-- controle statement is the statement in program that is used to controle the sequenece of the program 
--there are different type of controle statement
--1. If statement 2.case statement
--if is further divided into 3 . 1.If Then 2. If Then Else 3. If Then else if
--case statement has two difffernet from 1.Simple Case 2.Search Case

--implementation of if then statement is a simple plsql statement that allow only single step to be taken 
--syntax
--if condition then     
--statment1;
--....
--statmentN;
--end if 

--Example1,
declare 
v_num number:=11;
begin
if v_num <10 then
dbms_output.put_line('Inside the if');
end if;
dbms_output.put_line('Outside the if');
end;