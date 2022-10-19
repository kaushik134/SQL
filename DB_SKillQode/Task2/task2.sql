1. List the names of all clients having 'a' as the second letter in their names.
    mysql> select * from client_master where name like "_a%";
    +----------+-------------------+--------+---------+-------------+--------+
    | Clientno | Name              | city   | pincode | state       | baldue |
    +----------+-------------------+--------+---------+-------------+--------+
    | C00002   | Vandana           | Madras |  780001 | Tamilnadu   |  10000 |
    | C00004   | Basu              | Bombay |  400056 | Maharashtra |   8000 |
    | C00005   | Ravi              | Delhi  |  100001 |             |   2000 |
    | C00007   | kaushik vaghasiya | surat  |  394185 | Gujarat     |  12000 |
    +----------+-------------------+--------+---------+-------------+--------+

2. List the clients who stay in a city whose First letter in 'M'.
    mysql> select * from client_master where city like "m%";
    +----------+---------+--------+---------+-----------+--------+
    | Clientno | Name    | city   | pincode | state     | baldue |
    +----------+---------+--------+---------+-----------+--------+
    | C00002   | Vandana | Madras |  780001 | Tamilnadu |  10000 |
    +----------+---------+--------+---------+-----------+--------+

3. List all client who stay in 'Bombay' or 'Madras'.
    mysql> select * from client_master
        -> where city="Bombay" or city="madras";
    +----------+---------+--------+---------+-------------+--------+
    | Clientno | Name    | city   | pincode | state       | baldue |
    +----------+---------+--------+---------+-------------+--------+
    | C00001   | Ivan    | Bombay |  400054 | Maharashtra |  15000 |
    | C00002   | Vandana | Madras |  780001 | Tamilnadu   |  10000 |
    | C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
    | C00004   | Basu    | Bombay |  400056 | Maharashtra |   8000 |
    | C00006   | Rukmini | Bombay |  400050 | Maharashtra |  12000 |
    +----------+---------+--------+---------+-------------+--------+

4. List all client whose baldue is gretter than value 10000.
    mysql> select * from client_master
        -> where baldue<=10000;
    +----------+---------+--------+---------+-------------+--------+
    | Clientno | Name    | city   | pincode | state       | baldue |
    +----------+---------+--------+---------+-------------+--------+
    | C00002   | Vandana | Madras |  780001 | Tamilnadu   |  10000 |
    | C00003   | Pramada | Bombay |  400057 | Maharashtra |   5000 |
    | C00004   | Basu    | Bombay |  400056 | Maharashtra |   8000 |
    | C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
    +----------+---------+--------+---------+-------------+--------+

5. 

6. List the order information for Clientno 'C00001' and 'C00002'.
    mysql> select * from sales_order
        -> where clientno in ("C00001","C00002");
    +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
    | orderno | Clientno | orderdate  | delyaddr | salesman_no | delytype | billyn | delydate   | orderstatus |
    +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+
    | O19001  | C00001   | 2004-04-12 | Bombay   | S00001      | F        | N      | 2002-02-20 | In Process  |
    | O19002  | C00002   | 2004-04-25 | Madras   | S00002      | P        | N      | 2002-02-27 | Cancelled   |
    +---------+----------+------------+----------+-------------+----------+--------+------------+-------------+

7. List Product whose selling price is gretter than 500 and less than or equal to 750.
    mysql> select * from product_master
        -> where sellprice>500 and sellprice<=750;
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+
    | productno | description   | profitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice |
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+
    | P00001    | 1.44floppies  |          5.00 | piece        |       100 |          20 |       525 |       500 |
    | P00004    | 1.22 floppies |          5.00 | piece        |       100 |          20 |       525 |       500 |
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+

8. List proucts whose selling price is more than 500.Calculate a new selling price as, original selling price 0.15. Rename the new column in the output of the above query as new_price.
    mysql> update product_master set New_sellprice=((sellprice*0.15)+sellprice);
    Query OK, 9 rows affected, 7 warnings (0.05 sec)
    Rows matched: 9  Changed: 9  Warnings: 7

    mysql> select * from product_master;
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
    | productno | description   | profitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice | New_sellprice |
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
    | P00001    | 1.44floppies  |          5.00 | piece        |       100 |          20 |       525 |       500 |           604 |
    | P00002    | Monitors      |          6.00 | piece        |        10 |           3 |     12000 |     11200 |         13800 |
    | P00003    | Mouse         |          5.00 | piece        |        20 |           5 |      1050 |       500 |          1208 |
    | P00004    | 1.22 floppies |          5.00 | piece        |       100 |          20 |       525 |       500 |           604 |
    | P00005    | Keyboards     |          2.00 | piece        |        10 |           3 |      3150 |      3050 |          3623 |
    | P00006    | CD Drive      |          2.50 | piece        |        10 |           3 |      5250 |      5100 |          6038 |
    | P00007    | 540 HDD       |          4.00 | piece        |        10 |           3 |      8400 |      8000 |          9660 |
    | P00008    | 1.44 Drive    |          5.00 | piece        |        10 |           3 |      1050 |      1000 |          1208 |
    | P00009    | 1.22 Drive    |          5.00 | piece        |         2 |           3 |      1050 |      1000 |          1208 |
    +-----------+---------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+

9. List the names, city and state of clients who are not in the state of 'Maharastra'.
    mysql> select name,city,state from client_master
        -> where state not in("Maharashtra");
    +-------------------+--------+-----------+
    | name              | city   | state     |
    +-------------------+--------+-----------+
    | Vandana           | Madras | Tamilnadu |
    | Ravi              | Delhi  |           |
    | kaushik vaghasiya | surat  | Gujarat   |
    +-------------------+--------+-----------+

10. Count the total number of order.
    mysql> select count(orderno)
        -> from sales_order;
    +----------------+
    | count(orderno) |
    +----------------+
    |              6 |
    +----------------+

11. Calculate the average price of all the products.
    mysql> select avg(sellprice)
        -> from product_master;
    +----------------+
    | avg(sellprice) |
    +----------------+
    |      3666.6667 |
    +----------------+

12. Determine the maximum and minimum product prices. Rename the output as max_price and min_price respectively.
    mysql> select min(sellprice),max(sellprice)
        -> from product_master;
    +-----------+-----------+
    | Min_Price | Max_Price |
    +-----------+-----------+
    |       525 |     12000 |
    +-----------+-----------+

13. Count the number of products having price less than or equal to 500.
    mysql> select count(sellprice)
        -> from product_master
        -> where sellprice<=500;
    +------------------+
    | count(sellprice) |
    +------------------+
    |                0 |
    +------------------+

14. List all the products whose QtyOnHand is less than reorder level.
    mysql> select * from product_master
        -> where qtyonhand<recorderlvl;
    +-----------+-------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
    | productno | description | profitpercent | unitmeasured | qtyonhand | recorderlvl | sellprice | costprice | New_sellprice |
    +-----------+-------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+
    | P00009    | 1.22 Drive  |          5.00 | piece        |         2 |           3 |      1050 |      1000 |          1208 |
    +-----------+-------------+---------------+--------------+-----------+-------------+-----------+-----------+---------------+