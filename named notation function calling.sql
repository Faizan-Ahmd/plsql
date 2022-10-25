--calling notation 
--calling notation is a way of providing values to the parameters or subroutine such as pl/sql functions or stored procedure.
--types of calling notation 
--1. positional notation 2. Named Notation 3. Mixed calling Notation
--In positional notation you have to specify the value of each formal parameter in a sequential manner.
--cover the topic of actual and formal parameters. 
--named calling notation practical example is given below.
create or replace function add_num
(var_1 number,var_2 number default 0,var_3 number) return number
is 
var_4 number;
begin
dbms_output.put_line('var_1 ->'||var_1);
dbms_output.put_line('var_2 ->'||var_2);
dbms_output.put_line('var_3 ->'||var_3);
var_4 := var_1 + var_2 + var_3;
return var_4;
end;

/
declare
var_result number;
begin
    var_result:=add_num(var_3=>5,var_1=>2);
    dbms_output.put_line('Result '||var_result);
end;
/
--the above mentioned named notation is used to call a function by specifying specific variables in the call