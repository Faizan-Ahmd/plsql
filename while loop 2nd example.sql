declare
test boolean :=true;
counter number:=0;
begin
while test loop
dbms_output.put_line(counter);
counter:=counter+1;
if counter=11 then
test:=false;
end if;
end loop;
end;