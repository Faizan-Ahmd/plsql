create or replace function circle_area(radius number)--creating funcation 
return number is 
pi constant number(7,3):=3.141;
area number(7,3);
begin
area:=pi*(radius*radius);
return area;
end;
/ 
--anonymous plsql block
begin 
dbms_output.put_line(circle_area(25));
end;