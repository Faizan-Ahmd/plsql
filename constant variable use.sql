DECLARE 
PI CONSTANT NUMBER :=3.141592654;
radius number(5,2);
dia number(5,2);
circumference number(7,2);
area number(10,2);
BEGIN
radius:=9.5;
dia :=radius*2;
circumference:=2.0*pi*radius;
area:=pi*radius*radius;
--output 
dbms_output.put_line('Radius is : '||radius);
dbms_output.put_line('Diameter is :'||radius);
dbms_output.put_line('Circumference is : '||circumference);
dbms_output.put_line('Area is : '||area);
end;

