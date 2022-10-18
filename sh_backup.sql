select * from superheros where 1=2;

select * from superheros where 2=2;

select * from superheros where 3=3;

select * from superheros where 1=3;



create table superheroes_backup as select * from superheros where 1=2;

select * from superheroes_backup;
/
create or replace trigger sh_backup 
before insert or delete or update on superheros
for each row  
begin 
if inserting then
insert into superheroes_backup (sh_name) values (:NEW.sh_name);
elsif deleting then 
delete from superheroes_backup where sh_name =:old.sh_name;
elsif updating then 
update superheroes_backup set sh_name=:new.sh_name where sh_name=:old.sh_name;
end if;
end;
/
select * from superheroes_backup;


insert into superheros values ('Faizan');


select * from superheroes_backup;

delete superheros where sh_name='Faizan';

select * from superheroes_backup;


insert into superheros values ('ReedRichard');

select * from superheroes_backup;

