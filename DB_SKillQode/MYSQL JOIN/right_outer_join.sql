mysql> select products.code,products.name,products.price,products.manufacture,manufacture.code,manufacture.name
    -> from manufacture
    -> right join products
    -> on manufacture.code=products.manufacture;
+------+-----------------+-------+-------------+------+-----------------+
| code | name            | price | manufacture | code | name            |
+------+-----------------+-------+-------------+------+-----------------+
|    1 | Hard drive      |   240 |           5 |    5 | Fujitsu         |
|    2 | Memory          |   120 |           6 |    6 | Winchester      |
|    3 | ZIP drive       |   150 |           4 |    4 | Iomega          |
|    4 | Floppy disk     |     5 |           6 |    6 | Winchester      |
|    5 | Monitor         |   240 |           1 |    1 | Sony            |
|    6 | DVD drive       |   180 |           2 |    2 | Creative Labs   |
|    7 | CD drive        |    90 |           2 |    2 | Creative Labs   |
|    8 | Laser Printer   |   270 |           3 |    3 | Hewlett-Packard |
|    9 | Toner cartridge |    66 |           3 |    3 | Hewlett-Packard |
|   10 | DVD burner      |   180 |           2 |    2 | Creative Labs   |
|   11 | Loudspeakers    |    70 |           2 |    2 | Creative Labs   |
+------+-----------------+-------+-------------+------+-----------------+