EXRECISE 1

1.Find out the names of all the client
    mysql> select name from client_master;
    +---------+
    | name    |
    +---------+
    | Vandana |
    | Pramada |
    | Basu    |
    | Ravi    |
    | Rukmini |
    +---------+

2.Retrive the entire contents the client_master table
    mysql> select * from client_master;
    +----------+---------+--------+---------+-------------+--------+
    | Clientno | Name    | city   | pincode | state       | baldue |
    +----------+---------+--------+---------+-------------+--------+
    | C00002   | Vandana | Madras |  780001 | Tamilnadu   |  15000 |
    | C00003   | Pramada | surat  |  400057 | Maharashtra |   5000 |
    | C00004   | Basu    | surat  |  400056 | Maharashtra |  15000 |
    | C00005   | Ravi    | Delhi  |  100001 |             |   2000 |
    | C00006   | Rukmini | surat  |  400050 | Maharashtra |  15000 |
    +----------+---------+--------+---------+-------------+--------+

3.Reteive the list names,city and the state of all client
    mysql> select name,city,state from client_master;
    +---------+--------+-------------+
    | name    | city   | state       |
    +---------+--------+-------------+
    | Vandana | Madras | Tamilnadu   |
    | Pramada | surat  | Maharashtra |
    | Basu    | surat  | Maharashtra |
    | Ravi    | Delhi  |             |
    | Rukmini | surat  | Maharashtra |
    +---------+--------+-------------+

4.List the various product avaliable from the product_master
    mysql> select qtyonhand from product_master;
    +-----------+
    | qtyonhand |
    +-----------+
    |       100 |
    |        10 |
    |        20 |
    |       100 |
    |        10 |
    |        10 |
    |        10 |
    |        10 |
    |         2 |
    +-----------+

5.List all the clientd who are located in bombay
    mysql> select name from client_master where city='Bombay';
    +---------+
    | name    |
    +---------+
    | Pramada |
    | Basu    |
    | Rukmini |
    +---------+

6.Find the names of salesman who have a salary equal to RS.3000
    mysql> select salesmanname from salesman_master where salamt = 3000;
    +--------------+
    | salesmanname |
    +--------------+
    | Manish       |
    | Kiran        |
    | Ravi         |
    +--------------+

EXERCISE 2

1.Change the city of clientNo 'C00005' to Bangalore
    mysql> update client_master set city='Bangalore' where Clientno='C00005';
    Query OK, 1 row affected (0.04 sec)
    Rows matched: 1  Changed: 1  Warnings: 0
    +----------+-----------+
    | Clientno | city      |
    +----------+-----------+
    | C00002   | Madras    |
    | C00003   | Bombay    |
    | C00004   | Bombay    |
    | C00005   | Bangalore |
    | C00006   | Bombay    |
    +----------+-----------+

2.Change the baldue of ClientNo 'c00001' to RS.1000
    mysql> update client_master set baldue=1000 where Clientno='C00002';
    Query OK, 1 row affected (0.04 sec)
    Rows matched: 1  Changed: 1  Warnings: 0
    +----------+--------+
    | Clientno | baldue |
    +----------+--------+
    | C00002   |   1000 |
    | C00003   |   5000 |
    | C00004   |  15000 |
    | C00005   |   2000 |
    | C00006   |  15000 |
    +----------+--------+

3.Change the cost price of Trousers to RS.950.00.

4.Change the city of the salesman to Pune
    mysql> update salesman_master set city='Pune';
    Query OK, 4 rows affected (0.04 sec)
    Rows matched: 4  Changed: 4  Warnings: 0
    +-------------+------+
    | salesman_no | city |
    +-------------+------+
    | S00002      | Pune |
    | S00001      | Pune |
    | S00003      | Pune |
    | S00004      | Pune |
    +-------------+------+