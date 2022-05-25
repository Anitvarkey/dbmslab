
SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000
         3 Sonu                          2      45000

SQL> commit;

Commit complete.

SQL> delete from employee where empid=2;

1 row deleted.

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         3 Sonu                          2      45000

SQL> rollback;

Rollback complete.

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000
         3 Sonu                          2      45000

SQL> delete from employee where empid=2;

1 row deleted.
SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         3 Sonu                          2      45000

SQL> savepoint s2;

Savepoint created.

SQL> delete from employee where empid=1;

1 row deleted.

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         3 Sonu                          2      45000

SQL> rollback to s2;

Rollback complete.

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         3 Sonu                          2      45000

SQL>



