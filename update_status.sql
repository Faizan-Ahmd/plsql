create or replace procedure update_status is
v_date date;
cursor cur_p is
select subno,status from crm_user_info where status=60 and subno like '6%' and discon>v_date;
v_status cur_p%rowtype;
begin
select last_check into v_date from discon_date;
open cur_p;
loop 
fetch cur_p into v_status;
--dbms_output.put_line(v_emp.subno||' ' ||v_emp.status);
update crm_commdevice set status=50 where subno=v_status.subno;
exit when cur_p%NOTFOUND;
end loop;
close cur_p;
end;

execute update_status;