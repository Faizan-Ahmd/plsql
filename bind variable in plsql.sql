--bind variable declaration outside the plsql block 
variable v_bind1 varchar2(20);
exec :v_bind:='Rebellion Rider';
--2nd way of initializing bind variable 
begin
:v_bind :='Faizan Ahmad';

end;