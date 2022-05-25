SQL> SET SERVEROUTPUT ON;
SQL> Declare
  2     a number;
  3     b number;
  4     c number;
  5  PROCEDURE max(x IN number, y IN number, z OUT number) IS
  6  BEGIN
  7     IF x > y THEN
  8        z:= x;
  9     ELSE
 10        z:= y;
 11     END IF;
 12  END;
 13  BEGIN
 14     a:= &x;
 15     b:= &y;
 16     max(a, b, c);
 17     dbms_output.put_line(' Maximum : ' || c);
 18  END;
 19  /
Enter value for x: 4
old  14:    a:= &x;
new  14:    a:= 4;
Enter value for y: 6
old  15:    b:= &y;
new  15:    b:= 6;
Maximum : 6

PL/SQL procedure successfully completed.

SQL>
