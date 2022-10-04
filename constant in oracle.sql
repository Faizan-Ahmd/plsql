declare
v_pi constant number(6,3) :=3.141;
begin
dbms_output.put_line(v_pi);
end;

/
declare
v_pi constant number(6,3) not null default 3.141;
begin
dbms_output.put_line(v_pi);
end;
/
declare 
v_pi constant number(6,3)  default 3.141;
begin
dbms_output.put_line(v_pi);
end;
