-- -- SALES_ORDER TABLE
-- create table sales_order(
--     orderno varchar(30) primary key,
--     Clientno varchar(30),
--     orderdate date,
--     delyaddr varchar(25),
--     salesman_no varchar(6),
--     delytype char(1),
--     billyn char(1),
--     delydate date,
--     orderstatus varchar(10),
--     CONSTRAINT fk_salesman FOREIGN KEY(salesman_no) REFERENCES salesman_master(salesman_no),
--     CONSTRAINT fk_client FOREIGN KEY(Clientno) REFERENCES client_master(Clientno)
-- );

-- insert record
insert into sales_order values('O19001','C00001','2004-04-12','Bombay','S00001','F','N','2002-02-20','In Process');
insert into sales_order values('O19002','C00002','2004-04-25','Madras','S00002','P','N','2002-02-27','Cancelled');
insert into sales_order values('O19003','C00003','2004-04-18','Bombay','S00003','F','Y','2002-02-20','Fulfilled');
insert into sales_order values('O19004','C00004','2004-04-03','Bombay','S00004','F','Y','2002-02-07','Fulfilled');
insert into sales_order values('O19005','C00005','2004-04-20','Delhi','S00002','P','N','2002-02-22','Canceleed');
insert into sales_order values('O19006','C00006','2004-04-24','Bombay','S00003','F','N','2002-02-26','In Process');

-- Show Tables
select * from sales_order;