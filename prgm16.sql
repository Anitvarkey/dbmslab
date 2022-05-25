
SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2     a number;
  3  PROCEDURE squareNum(x IN OUT number) IS
  4  BEGIN
  5    x := x * x;
  6  END;
  7  BEGIN
  8     a:= &n;
  9     squareNum(a);
 10     dbms_output.put_line(' Square of (2): ' ||  a);
 11  END;
 12  /
Enter value for n: 5
old   8:    a:= &n;
new   8:    a:= 5;
Square of (2): 25

PL/SQL procedure successfully completed.
