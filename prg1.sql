 create table student(roll_no int,name varchar(20),course varchar(20),year varchar(10));
SQL> insert into student values(1,'aishwarya','mca',2021);

1 row created.

SQL> insert into student values(2,'alen','mca',2021);

1 row created.

SQL> insert into student values(3,'anakha','mca',2021);

1 row created.

SQL> insert into student values(4,'aneeta','mca',2021);

1 row created.

SQL> insert into student values(5,'anit','mca',2021);

1 row created.

SQL> commit;

Commit complete.

SQL> alter table student add primary key(roll_no);

Table altered.

SQL> select * from student;

   ROLL_NO NAME                 COURSE               YEAR
---------- -------------------- -------------------- ----------
         1 aishwarya            mca                  2021
         2 alen                 mca                  2021
         3 anakha               mca                  2021
         4 aneeta               mca                  2021
         5 anit                 mca                  2021

SQL>
