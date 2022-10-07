CREATE OR REPLACE TRIGGER tr_superheros
BEFORE INSERT OR DELETE OR UPDATE ON superheros
FOR EACH ROW 
DECLARE
v_user VARCHAR(20);
BEGIN
SELECT user INTO v_user FROM dual;
IF INSERTING THEN
DBMS_OUTPUT.PUT_LINE('One row inserted by ' || v_user);
ELSE IF DELETING THEN
DBMS_OUTPUT.PUT_LINE('One row deleted by '||v_user);
ELSE IF UPDATING THEN
DBMS_OUTPUT.PUT_LINE('One row updated by '||v_user);
END IF;
END IF;
END IF;
END;
/
DELETE FROM superheros WHERE sh_name='IronMan';
/
SELECT * FROM superheros;
/
INSERT INTO superheros VALUES ('Falcon');