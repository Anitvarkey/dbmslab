SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2  n integer:=&n;
  3
  4  begin
  5  if mod(n,2)=0
  6  then
  7  dbms_output.put_line('number is even');
  8  else
  9  dbms_output.put_line('number is odd');
 10  end if;
 11  end;
 12  /
Enter value for n: 5
old   2: n integer:=&n;
new   2: n integer:=5;
number is odd

PL/SQL procedure successfully completed.
