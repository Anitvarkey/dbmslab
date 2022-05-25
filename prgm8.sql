SQL> create table sailor(sid int primary key, sname varchar(20),rating int,age i
nt);

Table created.




SQL> create table boats(bid int primary key, bname varchar(20),color varchar(20)
);

Table created.






SQL> create table reserves(sid int, bid int, day date, foreign key(sid) referenc
es sailor(sid), foreign key(bid) references boats(bid));

Table created.

SQL>



SQL> insert into sailor values(22,'Dustin',7,45.0);	

1 row created.

SQL> insert into sailor values(29,'Brutus',1,33.0);

1 row created.

SQL> insert into sailor values(31,'Lubber',8,55.5);

1 row created.

SQL> insert into sailor values(32,'Andy',8,25.5);

1 row created.

SQL> insert into sailor values(58,'Rusty',10,35.5);

1 row created.

SQL> insert into sailor values(64,'Horatio',7,35.5);

1 row created.

SQL> insert into sailor values(71,'Zorba',10,16.0);

1 row created.

SQL> insert into sailor values(74,'Horatio',9,35.0);

1 row created.

SQL> insert into sailor values(85,'Art',3,25.5);

1 row created.

SQL> insert into sailor values(95,'Bob',3,63.5);

1 row created.

SQL> select * from sailor;

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        29 Brutus                        1         33
        31 Lubber                        8       55.5
        32 Andy                          8       25.5
        58 Rusty                        10       35.5
        64 Horatio                       7       35.5
        71 Zorba                        10         16
        74 Horatio                       9         35
        85 Art                           3       25.5
        95 Bob                           3       63.5

10 rows selected.




SQL> insert into boats values(101,'Interlake','blue');

1 row created.

SQL> insert into boats values(102,'Interlake','red');

1 row created.

SQL> insert into boats values(103,'Clipper','green');

1 row created.

SQL> insert into boats values(104,'Marine','red');

1 row created.





SQL> insert into reserves values(22,101,date '1998-10-10');

1 row created.

SQL> insert into reserves values(22,102,date '1998-10-10');

1 row created.

SQL> insert into reserves values(22,103,date '1998-08-10');

1 row created.

SQL> insert into reserves values(22,104,date '1998-07-10');

1 row created.

SQL> insert into reserves values(31,102,date '1998-10-11');

1 row created.

SQL> insert into reserves values(31,103,date '1998-06-11');

1 row created.

SQL> insert into reserves values(31,104,date '1998-12-11');

1 row created.

SQL> insert into reserves values(64,101,date '1998-5-9');

1 row created.

SQL> insert into reserves values(64,102,date '1998-8-9');

1 row created.

SQL> insert into reserves values(74,103,date '1998-8-9');

1 row created.


SQL> select * from reserves;

       SID        BID DAY
---------- ---------- ---------
        22        101 10-OCT-98
        22        102 10-OCT-98
        22        103 10-AUG-98
        22        104 10-JUL-98
        31        102 11-OCT-98
        31        103 11-JUN-98
        31        104 11-DEC-98
        64        101 09-MAY-98
        64        102 09-AUG-98
        74        103 09-AUG-98

10 rows selected.

SQL>



SQL> select distinct(sname) from sailor;

SNAME
--------------------
Rusty
Lubber
Brutus
Andy
Art
Bob
Dustin
Zorba
Horatio

9 rows selected.



SQL> select * from sailor where sid in(select sid from reserve where bid=101);

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        64 Horatio                       7       35.5


SQL> select sid,sname from sailor where sid in(select sid from reserve);

       SID SNAME
---------- --------------------
        22 Dustin
        31 Lubber
        64 Horatio
        74 Horatio



SQL> select sname from sailor where sid in(select sid from reserve where bid in(
select bid from boats where color='red'))order by age;

SNAME
--------------------
Horatio
Dustin
Lubber



SQL> select sid,sname from sailor where sid in(select sid from reserve having co
unt(*)>1 group by day,sid);

       SID SNAME
---------- --------------------
        22 Dustin