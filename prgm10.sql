10)
a.select sname,age from sailor where age in(select min(age) from sailor);
SNAME	AGE
Zorba	16
b.select rating,avg(age) from sailor group by rating;
RATING	AVG(AGE)
7	40
1	33
8	40.5
10	25.5
9	35
3	44.5
6 rows selected.
c.select count(distinct sname) from sailor;
COUNT(DISTINCTSNAME)
--------------------
          9
d.select avg(age) from sailor
AVG(AGE)
--------
  36.9