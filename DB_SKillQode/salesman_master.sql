-- Create Table
create table salesman_master
(
    salesman_no varchar(50),
    salesmanname varchar(50), 
    address varchar(50),
    city varchar(50),
    pincode numeric(38),
    state varchar(50),
    salamt numeric(38),
    tgttoget numeric(38),
    ytdsale numeric(38),
    remark varchar(50),
    CONSTRAINT pk_salesman primary key(salesman_no)
);

-- Insert Record
insert into salesman_master values ('S00001', 'Manish', '65, nariman', 'Bombay', 400001, 'Mah', 3000, 200, 100, 'Good');
insert into salesman_master values ('S00002', 'Kiran', 'A/14 worli', 'Bombay', 400002, 'Mah', 3000, 100, 50, 'Good'); 
insert into salesman_master values ('S00003', 'Ravi', 'P-7 Bandra', 'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good'); 
insert into salesman_master values ('S00004', 'Ashish', 'A/5 Juhu', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good');

-- Show Table
select * from salesman_master;

-- OUTPUT :-
-- mysql> desc salesman_master;
-- +--------------+---------------+------+-----+---------+-------+
-- | Field        | Type          | Null | Key | Default | Extra |
-- +--------------+---------------+------+-----+---------+-------+
-- | salesman_no  | varchar(50)   | NO   | PRI | NULL    |       |
-- | salesmanname | varchar(50)   | YES  |     | NULL    |       |
-- | address      | varchar(50)   | YES  |     | NULL    |       |
-- | city         | varchar(50)   | YES  |     | NULL    |       |
-- | pincode      | decimal(38,0) | YES  |     | NULL    |       |
-- | state        | varchar(50)   | YES  |     | NULL    |       |
-- | salamt       | decimal(38,0) | YES  |     | NULL    |       |
-- | tgttoget     | decimal(38,0) | YES  |     | NULL    |       |
-- | ytdsale      | decimal(38,0) | YES  |     | NULL    |       |
-- | remark       | varchar(50)   | YES  |     | NULL    |       |
-- +--------------+---------------+------+-----+---------+-------+
-- 10 rows in set (0.00 sec)

-- mysql> select * from salesman_master;
-- +-------------+--------------+-------------+--------+---------+-------+--------+----------+---------+--------+
-- | salesman_no | salesmanname | address     | city   | pincode | state | salamt | tgttoget | ytdsale | remark |
-- +-------------+--------------+-------------+--------+---------+-------+--------+----------+---------+--------+
-- | S00001      | Manish       | 65, nariman | Bombay |  400001 | Mah   |   3000 |      200 |     100 | Good   |
-- | S00002      | Kiran        | A/14 worli  | Bombay |  400002 | Mah   |   3000 |      100 |      50 | Good   |
-- | S00003      | Ravi         | P-7 Bandra  | Bombay |  400032 | Mah   |   3000 |      200 |     100 | Good   |
-- | S00004      | Ashish       | A/5 Juhu    | Bombay |  400044 | Mah   |   3500 |      200 |     150 | Good   |
-- +-------------+--------------+-------------+--------+---------+-------+--------+----------+---------+--------+
-- 4 rows in set (0.00 sec)