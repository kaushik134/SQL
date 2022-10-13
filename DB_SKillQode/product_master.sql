create table product_master
(
    productno varchar(50),
    description varchar(50),
    profitpercent numeric(38,2),
    unitmeasured varchar(50),
    qtyonhand numeric(38),
    recorderlvl numeric(38),
    sellprice numeric(38),
    costprice numeric(38),
    CONSTRAINT pk_product primary key(productno)
);

insert into product_master values ('P00001','1.44floppies',5, 'piece', 100, 20, 525,500);
insert into product_master values ('P00002', 'Monitors', 6, 'piece', 10, 3, 12000,11200);
insert into product_master values ('P00003', 'Mouse',5, 'piece', 20, 5, 1050, 500);
insert into product_master values ('P00004', '1.22 floppies',5, 'piece', 100, 20, 525, 500);
insert into product_master values ('P00005', 'Keyboards',2, 'piece',10,3,3150, 3050);
insert into product_master values ('P00006', 'CD Drive', 2.50, 'piece',10,3,5250,5100);
insert into product_master values ('P00007', '540 HDD',4, 'piece',10,3,8400, 8000);
insert into product_master values ('P00008', '1.44 Drive',5, 'piece', 10, 3, 1050, 1000);
insert into product_master values ('P00009', '1.22 Drive',5, 'piece',2,3,1050, 1000);

select * from product_master;