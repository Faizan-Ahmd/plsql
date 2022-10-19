select * from schema_audit;

/
create or replace trigger hr_audit_tr
after ddl on schema
begin
insert into schema_audit values(
    sysdate,
    sys_context('USERENV','CURRENT_USER'),
    ora_dict_obj_type,
    ora_dict_obj_name,
    ora_sysevent
    );
    end;
/
create table FaizanAhmad(v_name varchar(20));

select * from schema_audit;

insert into FaizanAhmad values ('Faizan');

insert into FaizanAhmad values ('Ahmad');

select * from FaizanAhmad;

truncate table FaizanAhmad;

select * from schema_audit;

drop table FaizanAhmad;

select * from schema_audit;