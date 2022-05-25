
SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> create table item(itemid int primary key,name varchar(20),price varchar(10),expiry date,qnty int);

Table created.

SQL> insert into item values(1,'pen',35,'28-april-22',10);

1 row created.

SQL> insert into item values(2,'shampoo',300,'8-april-22',10);

1 row created.

SQL> insert into item values(3,'soap',350,'8-april-22',10);

1 row created.

SQL> insert into item values(4,'peanut butter',450,'8-april-22',25);

1 row created.

SQL> select * from item where qnty>20;

    ITEMID NAME                 PRICE      EXPIRY          QNTY
---------- -------------------- ---------- --------- ----------
         4 peanut butter        450        08-APR-22         25

SQL> insert into item values(4,'jam',450,'4-april-22',25);
insert into item values(4,'jam',450,'4-april-22',25)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C006999) violated


SQL> insert into item values(5,'jam',450,'4-april-22',25);

1 row created.

SQL> select * from item where expiry<sysdate;

    ITEMID NAME                 PRICE      EXPIRY          QNTY
---------- -------------------- ---------- --------- ----------
         5 jam                  450        04-APR-22         25

SQL> select max(price) from item where price not in(select max(price) from item);

MAX(PRICE)
----------
350

SQL> commit;

Commit complete.

SQL>




















































































