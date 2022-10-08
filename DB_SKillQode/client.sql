-- create table
create table client_master(
   Clientno varchar(50) ,
   Name varchar(50),
   city varchar(50),
   pincode numeric(38),
   state varchar(50),
   baldue numeric(38)
);

-- insert record
insert into client_master values('C00001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000);
insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0);
insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000);
insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0);
insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000);
insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0);

-- show table data
select * from client_master;