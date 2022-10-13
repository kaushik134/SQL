-- create table
create table client_master
(
   Clientno varchar(50) ,
   Name varchar(50),
   city varchar(50),
   pincode numeric(38),
   state varchar(50),
   baldue numeric(38),
   CONSTRAINT pk_client primary key(Clientno)
);

-- insert record
insert into client_master values('C00001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000);
insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 10000);
insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000);
insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 8000);
insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000);
insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 12000);

-- show table data
select * from client_master;

-- OUTPUT :-
-- mysql> desc client_master;
-- +----------+---------------+------+-----+---------+-------+
-- | Field    | Type          | Null | Key | Default | Extra |
-- +----------+---------------+------+-----+---------+-------+
-- | Clientno | varchar(50)   | NO   | PRI | NULL    |       |
-- | Name     | varchar(50)   | YES  |     | NULL    |       |
-- | city     | varchar(50)   | YES  |     | NULL    |       |
-- | pincode  | decimal(38,0) | YES  |     | NULL    |       |
-- | state    | varchar(50)   | YES  |     | NULL    |       |
-- | baldue   | decimal(38,0) | YES  |     | NULL    |       |
-- +----------+---------------+------+-----+---------+-------+
-- 6 rows in set (0.04 sec)

-- mysql> select * from client_master;
-- +----------+---------+--------+---------+-------------+--------+
-- | Clientno | Name    | city   | pincode | state       | baldue |
-- +----------+---------+--------+---------+-------------+--------+
-- | C00001   | Ivan    | Bombay |  400054 | Maharashtra |  15000 |
-- | C00002   | Vandana | Madras |  780001 | Tamilnadu   |  10000 |
-- | C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
-- | C00004   | Basu    | Bombay |  400056 | Maharashtra |   8000 |
-- | C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
-- | C00006   | Rukmini | Bombay |  400050 | Maharashtra |  12000 |
-- +----------+---------+--------+---------+-------------+--------+
-- 6 rows in set (0.00 sec)