create or replace procedure helloworld is 
var1 varchar(20):='Hello World';
begin 
dbms_output.put_line(var1||' Welcome to plsql');
end;
/
execute helloworld;

exec helloworld;
/
begin 
helloworld;
end;