













































me varchar(20),deptid int,salary int);

Table created.

SQL> alter table employee add primary key(empid);

Table altered.

SQL> create table departments(deptid int primary key,deptname varchar(20),hod varchar(20))

Table created.

SQL> alter table employee add foreign key(deptid) references departments(deptid);

Table altered.

SQL> insert into departments values(1,'mca','Anit');

1 row created.

SQL> insert into departments values(2,'mba','Aswanth');

1 row created.

SQL> insert into employee values(01,'sneha',1,25000);

1 row created.

SQL> insert into employee values(02,'Aleena',2,25000);

1 row created.

SQL> insert into employee values(03,'Gokul',2,25000);

1 row created.

SQL> commit
  2
SQL> commit;

Commit complete.

SQL> select * from departments;

    DEPTID DEPTNAME             HOD
---------- -------------------- --------------------
         1 mca                  Anit
         2 mba                  Aswanth

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      25000
         3 Gokul                         2      25000

SQL> update employee set salary=30000 where deptid=2;

2 rows updated.

SQL> select * from employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000
         3 Gokul                         2      30000

SQL> delete from employee where empid=3
  2
SQL> delete from employee where empid=3;

1 row deleted.

SQL> select * from  employee;

     EMPID NAME                     DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 sneha                         1      25000
         2 Aleena                        2      30000

SQL>



