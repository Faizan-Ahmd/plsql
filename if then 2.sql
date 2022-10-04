declare
v_website varchar(20):='Faizan.live';
v_name varchar(20):='FaizanAhmad';
begin
if v_website='Faizan.live' and v_name='FaizanAhmad' then
dbms_output.put_line('Everything is fine');
end if;
dbms_output.put_line('Do like and subscribe it ');
end;