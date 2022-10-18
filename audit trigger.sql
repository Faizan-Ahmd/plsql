create or replace table sh_audit(
new_name varchar(30),
old_name varchar(30),
user_name varchar(30),
entry_date varchar(30),
operation varchar(30)
);

select * from sh_audit;
/
create or replace trigger superheros_audit
before insert or update or delete on superheros 
for each row 
enable
declare 
v_user varchar(30);
v_date varchar(30);
begin 
select user,to_char(sysdate,'DD/MON/YYYY HH24:MI:SS') into v_user,v_date from dual;
if inserting then 
insert into sh_audit (new_name,old_name,user_name,entry_date,operation)
values (:new.sh_name,NULL,v_user,v_date,'Insert');
elsif deleting then
insert into sh_audit(new_name,old_name,user_name,entry_date,operation)
values (NULL,:OLD.sh_name,v_user,v_date,'Delete');
elsif updating then
insert into sh_audit (new_name,old_name,user_name,entry_date,operation)
values (:NEW.sh_name,:OLD.sh_name,v_user,v_date,'Upadte');
end if;
end;

/

select * from sh_audit;

insert into superheros values('Thanos');

select * from sh_audit;

update superheros set sh_name='William' where sh_name='Thor';

select * from sh_audit;

delete superheros where sh_name='William';

select * from sh_audit;

select * from superheros;

delete superheros where sh_name='Hulk';


select * from sh_audit;


select * from superheros;

insert into superheros values('Hulk');

select * from sh_audit;


