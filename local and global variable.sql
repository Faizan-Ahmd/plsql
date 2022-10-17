DECLARE
  --Global variables
num1 number :=95;
num2 number :=85;
BEGIN
dbms_output.put_line('num 1 value : '||num1);
dbms_output.put_line('num 2 value : '||num2);
            --local variable 
DECLARE 
num1 number :=195;
num2 number :=185;
BEGIN 
dbms_output.put_line('local num 1 value : '|| num1);
dbms_output.put_line('local num 2 value : '||num2);
  END;
END;