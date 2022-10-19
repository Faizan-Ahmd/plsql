create table schema_audit(
ddl_date date,
ddl_user varchar(30),
object_created varchar(30),
object_name varchar(30),
ddl_operation varchar(30)
);
/
create or replace trigger hr_audit_tr
after ddl on schema
begin 
 insert into schema_audit values (
 sysdate,
 sys_context('USERENV','CURRENT_USER'),
 ora_dict_obj_type,
 ora_dict_obj_name,
 ora_sysevent
 );
end;
