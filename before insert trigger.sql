--triggers are the specialized program which execute when a triggering event occurs.
CREATE TABLE superheros(
sh_name varchar(20)
);
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bi_superheros
BEFORE INSERT ON superheros
FOR EACH ROW
ENABLE
DECLARE 
 v_user varchar(20);
BEGIN 
SELECT user INTO v_user FROM dual;
DBMS_OUTPUT.PUT_LINE('You Just Inserted A Line Mr.' ||v_user);
END;
/

SELECT * FROM dual;




INSERT INTO superheros VALUES ('IronMan');















INSERT INTO superheros VALUES ('CaptainAmerica');


SELECT * FROM superheros;

DELETE FROM superheros WHERE sh_name='IronMan';

SELECT * FROM superheros;

DELETE FROM superheros WHERE sh_name='CaptainAmerica';

SELECT * FROM superheros;

INSERT INTO superheros VALUES ('IronMan');

INSERT INTO superheros VALUES ('Hulk');