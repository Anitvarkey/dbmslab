
SQL*Plus: Release 11.2.0.2.0 Production on Thu Apr 7 14:57:56 2022

Copyright (c) 1982, 2010, Oracle.  All rights reserved.

SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> select * from customer where id='4';

        ID NAME                        AGE HOMETOWN                 SALARY
---------- -------------------- ---------- -------------------- ----------
         4 chaitali                     25 mumbai                     6500

SQL> select distinct hometown from customer;

HOMETOWN
--------------------
bhopal
mp
ahamedabad
delhi
mumbai
indore
kota

7 rows selected.

SQL> select count(salary) from customer;

COUNT(SALARY)
-------------
           10

SQL>