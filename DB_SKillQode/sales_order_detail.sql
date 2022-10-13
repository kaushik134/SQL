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