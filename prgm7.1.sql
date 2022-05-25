SQL> create table student_1(StudentID int not null,StudentName varchar(20),Marks int);

Table created.

SQL> insert into student_1 values(1,'Sanjay',64);

1 row created.

SQL> insert into student_1 values(2,'Varun',72);

1 row created.

SQL> insert into student_1 values(3,'Akash',45);

1 row created.

SQL> insert into student_1 values(4,'Rohit',86);

1 row created.

SQL> insert into student_1 values(5,'Anjali',92);

1 row created.

SQL> insert into student_1 values(6,'Ammu',95);

1 row created.

SQL> insert into student_1 values(7,'Rahul',80);

1 row created.

SQL> insert into student_1 values(8,'Prathibha',62);

1 row created.

SQL> insert into student_1 values(9,'Ravi',75);

1 row created.

SQL> insert into student_1 values(10,'Pulkit',76);

1 row created.


SQL> select count(StudentName)from student_1 where Marks>75;

COUNT(STUDENTNAME)
------------------
                 5


SQL> select avg(Marks) from student_1;

AVG(MARKS)
----------
      74.7

SQL> select min(Marks) from student_1;

MIN(MARKS)
----------
        45

SQL> select max(Marks) from student_1;

MAX(MARKS)
----------
        95

