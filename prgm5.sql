SQL> create table student(rollno int not null,name varchar(20),cgpa int,gender varchar(20),age int);

Table created.

SQL> insert into student values(1,'Aishwarya',8,'female',21);

1 row created.

SQL> insert into student values(2,'Alen',9,'male',22);

1 row created.

SQL> insert into student values(3,'Anakha',8,'female',21);

1 row created.

SQL> insert into student values(4,'Aneeta',10,'female',22);

1 row created.

SQL> select * from student where gender='female';

    ROLLNO NAME                       CGPA GENDER                      AGE
---------- -------------------- ---------- -------------------- ----------
         1 Aishwarya                     8 female                       21
         3 Anakha                        8 female                       21
         4 Aneeta                       10 female                       22

SQL> select * from student where age=(select min(age)from student);

    ROLLNO NAME                       CGPA GENDER                      AGE
---------- -------------------- ---------- -------------------- ----------
         1 Aishwarya                     8 female                       21
         3 Anakha                        8 female                       21

SQL> select name,cgpa from student where cgpa>6 and gender='male' order by name;

NAME                       CGPA
-------------------- ----------
Alen                          9

SQL> select name from student where cgpa=(select max(cgpa)from student);

NAME
--------------------
Aneeta
