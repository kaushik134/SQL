1. Exrecise on using Having and Group By Clause.

    A. Print the description and total qty sold for each product.
        mysql> select pm.description,sum(s.qtyordered)
        -> from product_master pm,sod s
        -> where pm.productno=s.productno
        -> group by pm.description;
    +---------------+-------------------+
    | description   | sum(s.qtyordered) | 
    +---------------+-------------------+
    | 1.44floppies  |                12 |
    | Monitors      |                 4 |
    | Mouse         |                15 |
    | 1.22 floppies |                11 |
    | Keyboards     |                 5 |
    | CD Drive      |                11 |
    | 1.44 Drive    |                 5 |
    +---------------+-------------------+

    B. Find the value of each product sold.
        mysql> select pm.description,sum(s.qtyordered),sum(s.qtyordered*productrate)
        -> from product_master pm,sod s
        -> where pm.productno=s.productno
        -> group by pm.description;
    +---------------+-------------------+-------------------------------+
    | description   | sum(s.qtyordered) | sum(s.qtyordered*productrate) |
    +---------------+-------------------+-------------------------------+
    | 1.44floppies  |                12 |                      16800.00 |
    | Monitors      |                 4 |                      27300.00 |
    | Mouse         |                15 |                      23100.00 |
    | 1.22 floppies |                11 |                      17250.00 |
    | Keyboards     |                 5 |                      12600.00 |
    | CD Drive      |                11 |                       6300.00 |
    | 1.44 Drive    |                 5 |                       5250.00 |
    +---------------+-------------------+-------------------------------+

    C. Calculate the average qty sold for each client that has a maximum order value of 15000.00.
        mysql>  select avg(qtyordered),sum(qtyordered*productrate),client_master.Clientno
        ->     from client_master
        ->     join sales_order on sales_order.Clientno=client_master.Clientno
        ->     join sod on sod.orderno=sales_order.orderno
        ->     group by client_master.Clientno
        ->     having sum(qtyordered*productrate)>=15000;
    +-----------------+-----------------------------+----------+
    | avg(qtyordered) | sum(qtyordered*productrate) | Clientno |
    +-----------------+-----------------------------+----------+
    |          2.6667 |                    29400.00 | C00001   |
    |          6.6667 |                    15750.00 | C00002   |
    |          1.0000 |                    20400.00 | C00003   |
    |          3.0000 |                    15750.00 | C00004   |
    |          5.6667 |                    18900.00 | C00005   |
    +-----------------+-----------------------------+----------+

    D. Find out the total of all the billed orders for the month of 4.
        mysql> select  date_format(sales_order.orderdate,"%m"),sum(qtyordered)
            ->         from sales_order,sod
            ->         where sales_order.orderno=sod.orderno
            ->         and date_format(sales_order.orderdate,"%m")=4;
    +-----------------------------------------+-----------------+
    | date_format(sales_order.orderdate,"%m") | sum(qtyordered) |
    +-----------------------------------------+-----------------+
    | 04                                      |              63 |
    +-----------------------------------------+-----------------+

2. Exrecise on joins and correlation.

    A. Find out the products, which have been sold to 'Ivan Bayross'.
        mysql> select pm.description,cm.Name,sod.productno
        -> from product_master pm,client_master cm,sales_order s,sod
        -> where cm.Clientno=s.Clientno
        -> and s.orderno=sod.orderno
        -> and sod.productno=pm.productno
        -> group by sod.productno
        -> having cm.Name='Ivan';
    +--------------+------+-----------+
    | description  | Name | productno |
    +--------------+------+-----------+
    | 1.44floppies | Ivan | P00001    |
    | Monitors     | Ivan | P00002    |
    +--------------+------+-----------+

    B. Find out the products and their quantities that will have to be delivered in the current month.
        mysql> select pm.description,pm.qtyonhand-sod.qtyordered,s.delydate
        ->     from product_master pm,client_master cm,sales_order s,sod
        ->     where s.orderno=sod.orderno
        ->     and sod.productno=pm.productno
        ->     and date_format(s.delydate,'%m')=date_format(now(),'%m')
        ->     group by pm.description;
    +---------------+-----------------------------+------------+
    | description   | pm.qtyonhand-sod.qtyordered | delydate   |
    +---------------+-----------------------------+------------+
    | 1.44floppies  |                          96 | 2004-11-21 |
    | Monitors      |                           8 | 2004-11-21 |
    | Mouse         |                          17 | 2004-11-21 |
    | 1.22 floppies |                          99 | 2004-11-21 |
    | Keyboards     |                           9 | 2004-11-21 |
    | CD Drive      |                           9 | 2004-11-21 |
    +---------------+-----------------------------+------------+

    C. List the productno and description of constantly sold (i.e. rapidally moving) products.
        mysql> select pm.description,pm.productno,sod.qtyordered
        ->     from product_master pm,client_master cm,sales_order s,sod
        ->     where sod.productno=pm.productno
        ->     group by pm.description
        ->    order by  sum(qtyordered) desc limit 1 ;
    +-------------+-----------+------------+
    | description | productno | qtyordered |
    +-------------+-----------+------------+
    | Mouse       | P00003    |         10 |
    +-------------+-----------+------------+

    D. Find the names of client who have purchased '1.44 floppies'.
        mysql> select pm.description,cm.Name,sod.productno
        ->     from product_master pm,client_master cm,sales_order s,sod
        ->     where pm.productno=sod.productno
        ->     and sod.orderno=s.orderno
        ->     and s.Clientno=cm.Clientno
        ->     having pm.description="1.44floppies";
    +--------------+---------+-----------+
    | description  | Name    | productno |
    +--------------+---------+-----------+
    | 1.44floppies | Ivan    | P00001    |
    | 1.44floppies | Vandana | P00001    |
    | 1.44floppies | Ravi    | P00001    |
    +--------------+---------+-----------+

    E. List the pro and orders from customer who have ordered less than 5 units of 'Mouse'
        mysql> select pm.description,cm.Name,sod.productno,s.orderno
        ->     from product_master pm,client_master cm,sales_order s,sod
        ->     where pm.productno=sod.productno
        ->     and sod.orderno=s.orderno
        ->     and s.Clientno=cm.Clientno
        ->     and sod.qtyordered<5 and pm.description="Mouse";
    +-------------+---------+-----------+---------+
    | description | Name    | productno | orderno |
    +-------------+---------+-----------+---------+
    | Mouse       | Basu    | P00003    | O19004  |
    | Mouse       | Rukmini | P00003    | O19006  |
    +-------------+---------+-----------+---------+

    F. Find the products and their quantities for the orders placed by 'ivan' and 'ravi'.
        mysql> select pm.description,cm.Name,sod.productno
        ->         from product_master pm,client_master cm,sales_order s,sod
        ->         where cm.Clientno=s.Clientno
        ->         and s.orderno=sod.orderno
        ->         and sod.productno=pm.productno
        ->         and cm.Name in ("Ivan" , "Ravi");
    +---------------+------+-----------+
    | description   | Name | productno |
    +---------------+------+-----------+
    | 1.44floppies  | Ivan | P00001    |
    | Monitors      | Ivan | P00002    |
    | Monitors      | Ivan | P00002    |
    | 1.44floppies  | Ravi | P00001    |
    | 1.22 floppies | Ravi | P00004    |
    | Keyboards     | Ravi | P00005    |
    +---------------+------+-----------+

    G. Find the products and their quantities for the orders placed by Clientno 'C00001' and 'C00002'.
        mysql> select pm.description,cm.Name,sod.productno,cm.Clientno
        ->         from product_master pm,client_master cm,sales_order s,sod
        ->         where cm.Clientno=s.Clientno
        ->         and s.orderno=sod.orderno
        ->         and sod.productno=pm.productno
        ->         and cm.Clientno in ('C00001' , 'C00002');
    +--------------+---------+-----------+----------+
    | description  | Name    | productno | Clientno |
    +--------------+---------+-----------+----------+
    | 1.44floppies | Ivan    | P00001    | C00001   |
    | Monitors     | Ivan    | P00002    | C00001   |
    | Monitors     | Ivan    | P00002    | C00001   |
    | Mouse        | Vandana | P00003    | C00002   |
    | 1.44floppies | Vandana | P00001    | C00002   |
    | 1.44 Drive   | Vandana | P00008    | C00002   |
    +--------------+---------+-----------+----------+

3. Exrecise on Sub-Queries
