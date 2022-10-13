-- SALES_ORDER TABLE
create table sales_order(
    orderno varchar(30) primary key,
    Clientno varchar(30),
    orderdate date,
    delyaddr varchar(25),
    salesman_no varchar(6),
    delytype char(1),
    billyn char(1),
    delydate date,
    orderstatus varchar(10),
    CONSTRAINT fk_salesman FOREIGN KEY(salesman_no) REFERENCES salesman_master(salesman_no),
    CONSTRAINT fk_client FOREIGN KEY(Clientno) REFERENCES client_master(Clientno)
);