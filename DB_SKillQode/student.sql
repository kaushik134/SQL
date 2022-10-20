Create Table
create table student(
    Roll_no int,
    Name varchar(30),
    Mobile numeric,
    BOD date,
    CONSTRAINT primary key(Roll_no,Name,Mobile)
);

-- Insert Table
insert into student values(1,'Kaushik',6353125194,'2002-08-06');
insert into student values(2,'Dhruvik',6355968944,'2003-09-06');
insert into student values(3,'Harshil',7656986754,'2003-12-21');

-- Select Table :-
select * from student;

1. Age find 
    mysql> update student
        -> set age=date_format(from_days(datediff(now(),BOD)),"%y");
    Query OK, 3 rows affected (0.04 sec)
    Rows matched: 3  Changed: 3  Warnings: 0

    mysql> select * from student;
    +---------+---------+------------+------------+------+
    | Roll_no | Name    | Mobile     | BOD        | age  |
    +---------+---------+------------+------------+------+
    |       1 | Kaushik | 6353125194 | 2002-08-06 |   20 |
    |       2 | Dhruvik | 6355968944 | 2003-09-06 |   19 |
    |       3 | Harshil | 7656986754 | 2003-12-21 |   18 |
    +---------+---------+------------+------------+------+
