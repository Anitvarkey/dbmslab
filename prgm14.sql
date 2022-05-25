SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2  n number;
  3  fac number:=1;
  4  i number;
  5   begin
  6  n:=&n;
  7   for i in 1..n
  8  loop
  9  fac:=fac*i;
 10  end loop;
 11
 12  dbms_output.put_line('factorial='||fac);
 13  end;
 14  /
Enter value for n: 4
old   6: n:=&n;
new   6: n:=4;
factorial=24

PL/SQL procedure successfully completed.
