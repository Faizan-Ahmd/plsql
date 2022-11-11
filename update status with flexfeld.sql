create or replace procedure update_status is
cursor cur_p is
select subno,status,discon from crm_user_info where status=60 and subno like '6%' and discon>= trunc(sysdate)- 6;
v_status cur_p%rowtype;
begin
open cur_p;
loop 
fetch cur_p into v_status;
update crm_commdevice set status=50,flex_fld1='EPIC-INC-8 '|| sysdate,discon=v_status.discon where subno=v_status.subno and status=40;
exit when cur_p%NOTFOUND;
end loop;
close cur_p;
end;

execute update_status;

commit;

/
select * from discon_date;

update crm_commdevice set status =40 where subno=621916218;

select * from crm_commdevice;


