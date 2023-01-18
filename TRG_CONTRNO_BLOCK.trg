CREATE OR REPLACE TRIGGER TRG_CONTRNO_BLOCK
BEFORE INSERT OR UPDATE ON crm_user_info
FOR EACH ROW
DECLARE
type contrno_array IS VARRAY(5) OF VARCHAR2(10);
contrnos contrno_array;
total integer;
BEGIN
contrnos:=contrno_array('0020505421','1093585002');
total:=contrnos.count;
for i in 1 .. total LOOP
   IF :new.contrno=contrnos(i)
THEN
    --dbms_output.put_line('operation cannot be completed');
   RAISE_APPLICATION_ERROR(-20101, 'contract cannot be updated.');
    --ROLLBACK;
END IF;
END LOOP;
END;
/
select * from crm_user_info where contrno='1102199674';

update crm_user_info set status=40 where contrno='1102199674';

update crm_user_info set status=60 where contrno='0020505421';

drop trigger CONTRACT;