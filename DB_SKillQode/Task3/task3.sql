-- Manufacture Table
create table manufacture(
    code int,
    name text,
    constraint pk_manufacture_code primary key(code)
);


insert into manufacture values(1, 'Sony') ;
insert into manufacture values(2, 'Creative Labs');
insert into manufacture values(3, 'Hewlett-Packard') ;
insert into manufacture values(4, 'Iomega' ) ;
insert into manufacture values(5, 'Fujitsu');
insert into manufacture values(6, 'Winchester');

-- Products Table
create table products(
    code int,
    name text,
    price real,
    manufacture int,
    constraint pk_products_code primary key(code),
    constraint fk_manufacture foreign key(manufacture) references manufacture (code) 
);

insert into products values(1, 'Hard drive',240,5);
insert into products values(2, 'Memory',120,6);
insert into products values(3, 'ZIP drive', 150,4);
insert into products values(4, 'Floppy disk',5,6);
insert into products values(5, 'Monitor',240,1);
insert into products values(6, 'DVD drive',180,2);
insert into products values(7, 'CD drive', 90,2);
insert into products values(8, 'Printer', 270,3);
insert into products values(9, 'Toner cartridge' ,66,3);
insert into products values(10, 'DVD burner', 180,2);


-- Query
1.1 Select the names of all the products in the store.
    mysql> select name from products;
    +-----------------+
    | name            |
    +-----------------+
    | Hard drive      |
    | Memory          |
    | ZIP drive       |
    | Floppy disk     |
    | Monitor         |
    | DVD drive       |
    | CD drive        |
    | Printer         |
    | Toner cartridge |
    | DVD burner      |
    +-----------------+

1.2 Select the names and the prices of all the products in the store.
    mysql> select name,price from products;
    +-----------------+-------+
    | name            | price |
    +-----------------+-------+
    | Hard drive      |   240 |
    | Memory          |   120 |
    | ZIP drive       |   150 |
    | Floppy disk     |     5 |
    | Monitor         |   240 |
    | DVD drive       |   180 |
    | CD drive        |    90 |
    | Printer         |   270 |
    | Toner cartridge |    66 |
    | DVD burner      |   180 |
    +-----------------+-------+

1.3 Select the name of the products with a price less than or equal to $200.
    mysql> select name from products
        -> where price<=200;
    +-----------------+
    | name            |
    +-----------------+
    | Memory          |
    | ZIP drive       |
    | Floppy disk     |
    | DVD drive       |
    | CD drive        |
    | Toner cartridge |
    | DVD burner      |
    +-----------------+

1.4 Select all the products with a price between $60 and $120.
    mysql> select name from products
        -> where price between 60 and 120;
    +-----------------+
    | name            |
    +-----------------+
    | Memory          |
    | CD drive        |
    | Toner cartridge |
    +-----------------+
1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
    mysql> select name,price*100 from products;
    +-----------------+-----------+
    | name            | price*100 |
    +-----------------+-----------+
    | Hard drive      |     24000 |
    | Memory          |     12000 |
    | ZIP drive       |     15000 |
    | Floppy disk     |       500 |
    | Monitor         |     24000 |
    | DVD drive       |     18000 |
    | CD drive        |      9000 |
    | Printer         |     27000 |
    | Toner cartridge |      6600 |
    | DVD burner      |     18000 |
    +-----------------+-----------+

1.6 Compute the average price of all the products.
    mysql> select avg(price) from products;
    +------------+
    | avg(price) |
    +------------+
    |      154.1 |
    +------------+

1.7 Compute the average price of all products with manufacturer code equal to 2.
    mysql> select avg(price) from products
        -> where manufacture=2;
    +------------+
    | avg(price) |
    +------------+
    |        150 |
    +------------+

1.8 Compute the number of products with a price larger than or equal to $180.
    mysql> select count(name) from products
        -> where price>=180;
    +-------------+
    | count(name) |
    +-------------+
    |           5 |
    +-------------+

1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
    mysql> select name,price from products
        -> where price>=180
        -> order by price desc,name;
    +------------+-------+
    | name       | price |
    +------------+-------+
    | Printer    |   270 |
    | Hard drive |   240 |
    | Monitor    |   240 |
    | DVD burner |   180 |
    | DVD drive  |   180 |
    +------------+-------+

1.10 Select all the data from the products, including all the data for each products manufacturer.
1.11 Select the product name, price, and manufacturer name of all the products.
1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
    mysql> select avg(price) from products
        -> where manufacture;
    +------------+
    | avg(price) |
    +------------+
    |      154.1 |
    +------------+

1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.
1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.
1.15 Select the name and price of the cheapest product.
    mysql> select name,price from products order by price limit 1;
    +-------------+-------+
    | name        | price |
    +-------------+-------+
    | Floppy disk |     5 |
    +-------------+-------+
    
1.16 Select the name of each manufacturer along with the name and price of its most expensive product.
 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
    mysql> insert into products values(11,'Loudspeakers',70,2);
    Query OK, 1 row affected (0.04 sec)

1.18 Update the name of product 8 to "Laser Printer".
    mysql> update products set name='Laser Printer' where code=8;
    Query OK, 1 row affected (0.04 sec)
    Rows matched: 1  Changed: 1  Warnings: 0

1.19 Apply a 10% discount to all products.
    mysql> select name,price*0.10 from products;
    +-----------------+--------------------+
    | name            | price*0.10         |
    +-----------------+--------------------+
    | Hard drive      |                 24 |
    | Memory          |                 12 |
    | ZIP drive       |                 15 |
    | Floppy disk     |                0.5 |
    | Monitor         |                 24 |
    | DVD drive       |                 18 |
    | CD drive        |                  9 |
    | Laser Printer   |                 27 |
    | Toner cartridge | 6.6000000000000005 |
    | DVD burner      |                 18 |
    | Loudspeakers    |                  7 |
    +-----------------+--------------------+

1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
    mysql> select name,price*0.10 from products
        -> where price>=120;
    +---------------+------------+
    | name          | price*0.10 |
    +---------------+------------+
    | Hard drive    |         24 |
    | Memory        |         12 |
    | ZIP drive     |         15 |
    | Monitor       |         24 |
    | DVD drive     |         18 |
    | Laser Printer |         27 |
    | DVD burner    |         18 |
    +---------------+------------+