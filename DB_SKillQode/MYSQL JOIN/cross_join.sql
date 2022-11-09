mysql> select products.code,products.name,products.price,products.manufacture,manufacture.code,manufacture.name
    -> from manufacture
    -> cross join products;
+------+-----------------+-------+-------------+------+-----------------+
| code | name            | price | manufacture | code | name            |
+------+-----------------+-------+-------------+------+-----------------+
|    1 | Hard drive      |   240 |           5 |    6 | Winchester      |
|    1 | Hard drive      |   240 |           5 |    5 | Fujitsu         |
|    1 | Hard drive      |   240 |           5 |    4 | Iomega          |
|    1 | Hard drive      |   240 |           5 |    3 | Hewlett-Packard |
|    1 | Hard drive      |   240 |           5 |    2 | Creative Labs   |
|    1 | Hard drive      |   240 |           5 |    1 | Sony            |
|    2 | Memory          |   120 |           6 |    6 | Winchester      |
|    2 | Memory          |   120 |           6 |    5 | Fujitsu         |
|    2 | Memory          |   120 |           6 |    4 | Iomega          |
|    2 | Memory          |   120 |           6 |    3 | Hewlett-Packard |
|    2 | Memory          |   120 |           6 |    2 | Creative Labs   |
|    2 | Memory          |   120 |           6 |    1 | Sony            |
|    3 | ZIP drive       |   150 |           4 |    6 | Winchester      |
|    3 | ZIP drive       |   150 |           4 |    5 | Fujitsu         |
|    3 | ZIP drive       |   150 |           4 |    4 | Iomega          |
|    3 | ZIP drive       |   150 |           4 |    3 | Hewlett-Packard |
|    3 | ZIP drive       |   150 |           4 |    2 | Creative Labs   |
|    3 | ZIP drive       |   150 |           4 |    1 | Sony            |
|    4 | Floppy disk     |     5 |           6 |    6 | Winchester      |
|    4 | Floppy disk     |     5 |           6 |    5 | Fujitsu         |
|    4 | Floppy disk     |     5 |           6 |    4 | Iomega          |
|    4 | Floppy disk     |     5 |           6 |    3 | Hewlett-Packard |
|    4 | Floppy disk     |     5 |           6 |    2 | Creative Labs   |
|    4 | Floppy disk     |     5 |           6 |    1 | Sony            |
|    5 | Monitor         |   240 |           1 |    6 | Winchester      |
|    5 | Monitor         |   240 |           1 |    5 | Fujitsu         |
|    5 | Monitor         |   240 |           1 |    4 | Iomega          |
|    5 | Monitor         |   240 |           1 |    3 | Hewlett-Packard |
|    5 | Monitor         |   240 |           1 |    2 | Creative Labs   |
|    5 | Monitor         |   240 |           1 |    1 | Sony            |
|    6 | DVD drive       |   180 |           2 |    6 | Winchester      |
|    6 | DVD drive       |   180 |           2 |    5 | Fujitsu         |
|    6 | DVD drive       |   180 |           2 |    4 | Iomega          |
|    6 | DVD drive       |   180 |           2 |    3 | Hewlett-Packard |
|    6 | DVD drive       |   180 |           2 |    2 | Creative Labs   |
|    6 | DVD drive       |   180 |           2 |    1 | Sony            |
|    7 | CD drive        |    90 |           2 |    6 | Winchester      |
|    7 | CD drive        |    90 |           2 |    5 | Fujitsu         |
|    7 | CD drive        |    90 |           2 |    4 | Iomega          |
|    7 | CD drive        |    90 |           2 |    3 | Hewlett-Packard |
|    7 | CD drive        |    90 |           2 |    2 | Creative Labs   |
|    7 | CD drive        |    90 |           2 |    1 | Sony            |
|    8 | Laser Printer   |   270 |           3 |    6 | Winchester      |
|    8 | Laser Printer   |   270 |           3 |    5 | Fujitsu         |
|    8 | Laser Printer   |   270 |           3 |    4 | Iomega          |
|    8 | Laser Printer   |   270 |           3 |    3 | Hewlett-Packard |
|    8 | Laser Printer   |   270 |           3 |    2 | Creative Labs   |
|    8 | Laser Printer   |   270 |           3 |    1 | Sony            |
|    9 | Toner cartridge |    66 |           3 |    6 | Winchester      |
|    9 | Toner cartridge |    66 |           3 |    5 | Fujitsu         |
|    9 | Toner cartridge |    66 |           3 |    4 | Iomega          |
|    9 | Toner cartridge |    66 |           3 |    3 | Hewlett-Packard |
|    9 | Toner cartridge |    66 |           3 |    2 | Creative Labs   |
|    9 | Toner cartridge |    66 |           3 |    1 | Sony            |
|   10 | DVD burner      |   180 |           2 |    6 | Winchester      |
|   10 | DVD burner      |   180 |           2 |    5 | Fujitsu         |
|   10 | DVD burner      |   180 |           2 |    4 | Iomega          |
|   10 | DVD burner      |   180 |           2 |    3 | Hewlett-Packard |
|   10 | DVD burner      |   180 |           2 |    2 | Creative Labs   |
|   10 | DVD burner      |   180 |           2 |    1 | Sony            |
|   11 | Loudspeakers    |    70 |           2 |    6 | Winchester      |
|   11 | Loudspeakers    |    70 |           2 |    5 | Fujitsu         |
|   11 | Loudspeakers    |    70 |           2 |    4 | Iomega          |
|   11 | Loudspeakers    |    70 |           2 |    3 | Hewlett-Packard |
|   11 | Loudspeakers    |    70 |           2 |    2 | Creative Labs   |
|   11 | Loudspeakers    |    70 |           2 |    1 | Sony            |
+------+-----------------+-------+-------------+------+-----------------+


-- mysql> select *
--     -> from products
--     -> cross join manufacture;
-- +------+-----------------+-------+-------------+------+-----------------+
-- | code | name            | price | manufacture | code | name            |
-- +------+-----------------+-------+-------------+------+-----------------+
-- |    1 | Hard drive      |   240 |           5 |    7 | ABCD            |
-- |    1 | Hard drive      |   240 |           5 |    6 | Winchester      |
-- |    1 | Hard drive      |   240 |           5 |    5 | Fujitsu         |
-- |    1 | Hard drive      |   240 |           5 |    4 | Iomega          |
-- |    1 | Hard drive      |   240 |           5 |    3 | Hewlett-Packard |
-- |    1 | Hard drive      |   240 |           5 |    2 | Creative Labs   |
-- |    1 | Hard drive      |   240 |           5 |    1 | Sony            |
-- |    2 | Memory          |   120 |           6 |    7 | ABCD            |
-- |    2 | Memory          |   120 |           6 |    6 | Winchester      |
-- |    2 | Memory          |   120 |           6 |    5 | Fujitsu         |
-- |    2 | Memory          |   120 |           6 |    4 | Iomega          |
-- |    2 | Memory          |   120 |           6 |    3 | Hewlett-Packard |
-- |    2 | Memory          |   120 |           6 |    2 | Creative Labs   |
-- |    2 | Memory          |   120 |           6 |    1 | Sony            |
-- |    3 | ZIP drive       |   150 |           4 |    7 | ABCD            |
-- |    3 | ZIP drive       |   150 |           4 |    6 | Winchester      |
-- |    3 | ZIP drive       |   150 |           4 |    5 | Fujitsu         |
-- |    3 | ZIP drive       |   150 |           4 |    4 | Iomega          |
-- |    3 | ZIP drive       |   150 |           4 |    3 | Hewlett-Packard |
-- |    3 | ZIP drive       |   150 |           4 |    2 | Creative Labs   |
-- |    3 | ZIP drive       |   150 |           4 |    1 | Sony            |
-- |    4 | Floppy disk     |     5 |           6 |    7 | ABCD            |
-- |    4 | Floppy disk     |     5 |           6 |    6 | Winchester      |
-- |    4 | Floppy disk     |     5 |           6 |    5 | Fujitsu         |
-- |    4 | Floppy disk     |     5 |           6 |    4 | Iomega          |
-- |    4 | Floppy disk     |     5 |           6 |    3 | Hewlett-Packard |
-- |    4 | Floppy disk     |     5 |           6 |    2 | Creative Labs   |
-- |    4 | Floppy disk     |     5 |           6 |    1 | Sony            |
-- |    5 | Monitor         |   240 |           1 |    7 | ABCD            |
-- |    5 | Monitor         |   240 |           1 |    6 | Winchester      |
-- |    5 | Monitor         |   240 |           1 |    5 | Fujitsu         |
-- |    5 | Monitor         |   240 |           1 |    4 | Iomega          |
-- |    5 | Monitor         |   240 |           1 |    3 | Hewlett-Packard |
-- |    5 | Monitor         |   240 |           1 |    2 | Creative Labs   |
-- |    5 | Monitor         |   240 |           1 |    1 | Sony            |
-- |    6 | DVD drive       |   180 |           2 |    7 | ABCD            |
-- |    6 | DVD drive       |   180 |           2 |    6 | Winchester      |
-- |    6 | DVD drive       |   180 |           2 |    5 | Fujitsu         |
-- |    6 | DVD drive       |   180 |           2 |    4 | Iomega          |
-- |    6 | DVD drive       |   180 |           2 |    3 | Hewlett-Packard |
-- |    6 | DVD drive       |   180 |           2 |    2 | Creative Labs   |
-- |    6 | DVD drive       |   180 |           2 |    1 | Sony            |
-- |    7 | CD drive        |    90 |           2 |    7 | ABCD            |
-- |    7 | CD drive        |    90 |           2 |    6 | Winchester      |
-- |    7 | CD drive        |    90 |           2 |    5 | Fujitsu         |
-- |    7 | CD drive        |    90 |           2 |    4 | Iomega          |
-- |    7 | CD drive        |    90 |           2 |    3 | Hewlett-Packard |
-- |    7 | CD drive        |    90 |           2 |    2 | Creative Labs   |
-- |    7 | CD drive        |    90 |           2 |    1 | Sony            |
-- |    8 | Laser Printer   |   270 |           3 |    7 | ABCD            |
-- |    8 | Laser Printer   |   270 |           3 |    6 | Winchester      |
-- |    8 | Laser Printer   |   270 |           3 |    5 | Fujitsu         |
-- |    8 | Laser Printer   |   270 |           3 |    4 | Iomega          |
-- |    8 | Laser Printer   |   270 |           3 |    3 | Hewlett-Packard |
-- |    8 | Laser Printer   |   270 |           3 |    2 | Creative Labs   |
-- |    8 | Laser Printer   |   270 |           3 |    1 | Sony            |
-- |    9 | Toner cartridge |    66 |           3 |    7 | ABCD            |
-- |    9 | Toner cartridge |    66 |           3 |    6 | Winchester      |
-- |    9 | Toner cartridge |    66 |           3 |    5 | Fujitsu         |
-- |    9 | Toner cartridge |    66 |           3 |    4 | Iomega          |
-- |    9 | Toner cartridge |    66 |           3 |    3 | Hewlett-Packard |
-- |    9 | Toner cartridge |    66 |           3 |    2 | Creative Labs   |
-- |    9 | Toner cartridge |    66 |           3 |    1 | Sony            |
-- |   10 | DVD burner      |   180 |           2 |    7 | ABCD            |
-- |   10 | DVD burner      |   180 |           2 |    6 | Winchester      |
-- |   10 | DVD burner      |   180 |           2 |    5 | Fujitsu         |
-- |   10 | DVD burner      |   180 |           2 |    4 | Iomega          |
-- |   10 | DVD burner      |   180 |           2 |    3 | Hewlett-Packard |
-- |   10 | DVD burner      |   180 |           2 |    2 | Creative Labs   |
-- |   10 | DVD burner      |   180 |           2 |    1 | Sony            |
-- |   11 | Loudspeakers    |    70 |           2 |    7 | ABCD            |
-- |   11 | Loudspeakers    |    70 |           2 |    6 | Winchester      |
-- |   11 | Loudspeakers    |    70 |           2 |    5 | Fujitsu         |
-- |   11 | Loudspeakers    |    70 |           2 |    4 | Iomega          |
-- |   11 | Loudspeakers    |    70 |           2 |    3 | Hewlett-Packard |
-- |   11 | Loudspeakers    |    70 |           2 |    2 | Creative Labs   |
-- |   11 | Loudspeakers    |    70 |           2 |    1 | Sony            |
-- +------+-----------------+-------+-------------+------+-----------------+