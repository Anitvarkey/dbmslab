SQL> create table emp(id int primary key,firstname varchar(10),lastname varchar(
10),dep varchar(10),location varchar(10),salary int);

Table created.

SQL> insert into emp values(1,'Harshad','Kawar','Marketing','Pune',10000);

1 row created.

SQL> insert into emp values(2,'Anurag','Rajput','IT','Mumbai',20000);

1 row created.

SQL> insert into emp values(3,'Chaitali','Tarle','IT','Chennai',30000);

1 row created.

SQL> insert into emp values(4,'Pranjal','Patil','IT','Chennai',25000);

1 row created.

SQL> insert into emp values(5,'Suraj','Tripathi','Marketing','Pune',15000);

1 row created.

SQL> insert into emp values(6,'Roshmi','Jadhav','Finance','Banglore',20000);

1 row created.

SQL> insert into emp values(7,'Sandhya','Jain','Finance','Banglore',20000);

1 row created.

SQL> select * from emp;

        ID FIRSTNAME  LASTNAME   DEP        LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         1 Harshad    Kawar      Marketing  Pune            10000
         2 Anurag     Rajput     IT         Mumbai          20000
         3 Chaitali   Tarle      IT         Chennai         30000
         4 Pranjal    Patil      IT         Chennai         25000
         5 Suraj      Tripathi   Marketing  Pune            15000
         6 Roshmi     Jadhav     Finance    Banglore        20000
         7 Sandhya    Jain       Finance    Banglore        20000

7 rows selected.




SQL> select * from emp where dep='IT' AND location='Chennai';

        ID FIRSTNAME  LASTNAME   DEP        LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         3 Chaitali   Tarle      IT         Chennai         30000
         4 Pranjal    Patil      IT         Chennai         25000

SQL> select * from emp where dep='IT' or  location='Chennai';

        ID FIRSTNAME  LASTNAME   DEP        LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         2 Anurag     Rajput     IT         Mumbai          20000
         3 Chaitali   Tarle      IT         Chennai         30000
         4 Pranjal    Patil      IT         Chennai         25000




SQL> select firstname as empfn,location as address from emp;

EMPFN      ADDRESS
---------- ----------
Harshad    Pune
Anurag     Mumbai
Chaitali   Chennai
Pranjal    Chennai
Suraj      Pune
Roshmi     Banglore
Sandhya    Banglore

7 rows selected.



SQL> select * from emp where firstname like'S%';

        ID FIRSTNAME  LASTNAME   DEP        LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         5 Suraj      Tripathi   Marketing  Pune            15000
         7 Sandhya    Jain       Finance    Banglore        20000




SQL> select location,sum(salary) from emp group by(location);

LOCATION   SUM(SALARY)
---------- -----------
Mumbai           20000
Pune             25000
Chennai          55000
Banglore         40000




SQL> select location,sum(salary) from emp group by(location) having sum(salary)>
10000;

LOCATION   SUM(SALARY)
---------- -----------
Mumbai           20000
Pune             25000
Chennai          55000
Banglore         40000

SQL> select * from emp order by(firstname);

        ID FIRSTNAME  LASTNAME   DEP        LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         2 Anurag     Rajput     IT         Mumbai          20000
         3 Chaitali   Tarle      IT         Chennai         30000
         1 Harshad    Kawar      Marketing  Pune            10000
         4 Pranjal    Patil      IT         Chennai         25000
         6 Roshmi     Jadhav     Finance    Banglore        20000
         7 Sandhya    Jain       Finance    Banglore        20000
         5 Suraj      Tripathi   Marketing  Pune            15000

7 rows selected.

SQL> commit;

Commit complete.

SQL>