SQL> Declare
  2  a number:=&x;
  3  b number:=&y;
  4  c number:=&z;
  5  begin
  6  if a>b AND a>c
  7  then
  8  dbms_output.put_line('a is greatest');
  9  else
 10  if b>a AND b>c
 11  then
 12  dbms_output.put_line('b is greatest');
 13  else
 14  dbms_output.put_line('c is greatest');
 15  end if;
 16  end if;
 17  end;
 18  /
Enter value for x: 4
old   2: a number:=&x;
new   2: a number:=4;
Enter value for y: 7
old   3: b number:=&y;
new   3: b number:=7;
Enter value for z: 8
old   4: c number:=&z;
new   4: c number:=8;
c is greatest

PL/SQL procedure successfully completed.