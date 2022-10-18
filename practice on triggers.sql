create or replace trigger bi_superheroes
before insert on superheros
for each row 
enable
declare 
v_user varchar(20);
begin
select user into v_user from dual;
dbms_output.put_line('You Just inserted a new line Mr. '||v_user);
end;
/ 
insert into superheros values('captain');


/
create or replace trigger bu_superheroes
before update on superheros 
for each row 
enable 
declare 
u_user varchar(20);
begin 
select user into u_user from dual;
dbms_output.put_line('You Just Updated data : ' ||u_user);
end;

update superheros set sh_name='Stark' where sh_name='IronMan';

/

create or replace trigger tr_superheroes
before delete or update or insert on superheros
for each row 
enable 
declare
v_user varchar(20);
begin 
select user into v_user from dual;
if inserting then
dbms_output.put_line('One line is inserted by : '|| v_user);
elsif deleting then
dbms_output.put_line('One line is deleted by : ' ||v_user);
elsif updating then
dbms_output.put_line('One line is updated by : ' ||v_user);
end if;
end;
/

select * from superheros;

delete from superheros where sh_name='Stark';

select * from superheros;

delete from superheros where sh_name='Thor';

select * from superheros;

insert into superheros values('Thor'); 

insert into superheros values('Stark');

insert into superheros values('Loki');

insert into superheros values('IronMan');

update superheros set sh_name='IronMan' where sh_name='Stark';

update superheros set sh_name='Stark' where sh_name='IronMan';

select * from superheros;

delete superheros where sh_name='Stark';

select * from superheros;

insert into superheros values('IronMan');

insert into superheros values('Stark');