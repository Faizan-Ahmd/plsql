declare
counter number:=1;
result number;
begin
while counter <=10 loop 
result:=counter*19;
dbms_output.put_line('19'||' x '||counter||' = '||result);
counter:=counter+1;
end loop;
end;