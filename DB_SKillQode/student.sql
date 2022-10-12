-- Create Table
-- create table student(
--     Roll_no int,
--     Name varchar(30),
--     Mobile numeric,
--     CONSTRAINT primary key(Roll_no,Name,Mobile)
-- );

-- Insert Table
insert into student values(1,'Kaushik',6353125194);
insert into student values(2,'Dhruvik',6355968944);
insert into student values(3,'Harshil',7656986754);

-- Select Table :-
select * from student;

-- OutPut:-
-- Query OK, 1 row affected (0.01 sec)

-- Query OK, 1 row affected (0.00 sec)

-- Query OK, 1 row affected (0.00 sec)

-- +---------+---------+------------+
-- | Roll_no | Name    | Mobile     |
-- +---------+---------+------------+
-- |       1 | Kaushik | 6353125194 |
-- |       2 | Dhruvik | 6355968944 |
-- |       3 | Harshil | 7656986754 |
-- +---------+---------+------------+
-- 3 rows in set (0.00 sec)

-- mysql> source D:\Tution\SQL\DB_SKillQode\student.sql
-- ERROR 1062 (23000): Duplicate entry '1-Kaushik-6353125194' for key 'student.PRIMARY'
-- ERROR 1062 (23000): Duplicate entry '2-Dhruvik-6355968944' for key 'student.PRIMARY'
-- ERROR 1062 (23000): Duplicate entry '3-Harshil-7656986754' for key 'student.PRIMARY'
-- +---------+---------+------------+
-- | Roll_no | Name    | Mobile     |
-- +---------+---------+------------+
-- |       1 | Kaushik | 6353125194 |
-- |       2 | Dhruvik | 6355968944 |
-- |       3 | Harshil | 7656986754 |
-- +---------+---------+------------+
-- 3 rows in set (0.00 sec)