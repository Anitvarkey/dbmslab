
SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> create user anit identified by 123;

User created.

SQL> grant create session to anit;

Grant succeeded.

SQL> connect
Enter user-name: anit
Enter password:
Connected.
SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000

SQL> grant insert,select on employee to anit;

Grant succeeded.

SQL> connect
Enter user-name: anit
Enter password:
Connected.
SQL> select * from system.employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000

SQL> insert into system.employee values(3,'Sonu',2,45000);

1 row created.

SQL> select * from system.employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000
         3 Sonu                          2      45000

SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> revoke insert on employee from anit;

Revoke succeeded.

SQL> connect
Enter user-name: anit
Enter password:
Connected.
SQL> insert into system.employee values(4,'jaypal',3,34567);
insert into system.employee values(4,'jaypal',3,34567)
                   *
ERROR at line 1:
ORA-01031: insufficient privileges


SQL>

