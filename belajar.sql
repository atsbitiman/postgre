select * from barang

create table products
(
    id varchar(10) not null,
    name varchar(100) not null,
    description text,
    price  int not null,
    quantity    int not null default 0,
    created_at timestamp not null default current_timestamp
)

insert into products(id,name,price,quantity)
values ('P0001','Mie Ayam Original',15000,100)

insert into products(id,name,description,price,quantity)
values('P0002','Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu',20000,100);

insert into products(id,name,price,quantity)
values ('P0003','Mie Ayam Ceker', 20000, 100),
       ('P0004','Mie Ayam Spesial', 25000,100),
       ('P0005','Mie Ayam Yamin', 15000,100);

select * from products

select id,name, price, quantity from products

alter table products
add primary key (id)

select id,name, price, quantity
from products
where quantity = 0

select * from products
where id = 'P0001'

create type product_category as enum('Makanan','Minuman','Lain - lain')

alter table products
add column category product_category;

update products
set category = 'Makanan'
where id = 'P0001';

select * from products;

update products
set category = 'Makanan', description = 'Mie Ayam Ceker'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

update products
set description = 'Mie Ayam Spesial'
where id = 'P0004'

update products
set description = 'Mie Ayam + Ceker'
where id = 'P0003'

update products
set price = price + 5000
where id= 'P0004';

insert into products(id,name,price,quantity,category)
values ('P0009','Contoh',10000,'100','Minuman');

delete from products
where id = 'P0009';

select id as Kode,
        price as Harga,
        description as Deskripsi
from products;

select * from products
where price >= 15000;

select * from products;

select * from products
where price > 15000;

insert into products(id,name, price, quantity, category)
values ('P0007','Es Campur',20000,100,'Minuman'),
       ('P0008','Jus Jeruk',15000,100,'Minuman');

update products
set id = 'P0006'
where name = 'Es Teh Tawar'

select * from products
where price > 15000 or category = 'Makanan'

select * from products
where name like '%Mie%';

select * from products
where description is not null;

select * from products ;

select * from products
where price between 10000 and 15000

select * from products
where category not in ('Makanan', 'Minuman');