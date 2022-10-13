-- Create table SALES ORDER DETAIL
create table sod(
    orderno varchar(20),
    productno varchar(20),
    qtyordered numeric(8),
    qtydisp numeric(8),
    productrate numeric(10,2),
    CONSTRAINT fk_Sales_order FOREIGN KEY (orderno) REFERENCES sales_order (orderno),
    CONSTRAINT fk_Product_master FOREIGN KEY (productno) REFERENCES product_master (productno)
);

-- Insert record
insert into sod values('O19001','P00001',4,4,525);
insert into sod values('O19001','P00002',2,1,8400);
insert into sod values('O19001','P00002',2,1,5250);
insert into sod values('O19002','P00003',10,0,525);
insert into sod values('O19005','P00001',3,3,3150);
insert into sod values('O19004','P00003',3,1,5250);
insert into sod values('O19005','P00004',10,10,525);
insert into sod values('O19005','P00005',4,4,1050);
insert into sod values('O19006','P00003',2,2,1050);
insert into sod values('O19003','P00004',1,1,12000);
insert into sod values('O19003','P00005',1,0,8400);
insert into sod values('O19006','P00006',1,0,1050);
insert into sod values('O19006','P00006',10,5,525);
insert into sod values('O19002','P00007',5,3,1050);
insert into sod values('O19002','P00008',5,3,1050);

-- Show Tables
select * from sod;