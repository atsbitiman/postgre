create table wishlist
(
    id serial not null primary key,
    id_product varchar(10) not null,
    description text,
    constraint fk_wishlist_products foreign key (id_product) references products (id)
);

select * from products;

insert into wishlist(id_product,description)
values('P0001', 'Mie Ayam Kesukaan'),
      ('P0002', 'Mie Ayam Kesukaan'),
      ('P0005', 'Mie Ayam Kesukaan');

select * from wishlist;

alter table wishlist
drop constraint fk_wishlist_products;

alter table wishlist
add constraint fk_wishlist_products foreign key(id_product) references products(id)
on delete cascade on update cascade;

insert into products(id,name,price, quantity, category)
values('XXX','XXX',10000,100,'Minuman')

select * from products;
select * from wishlist;

insert into wishlist(id_product,description)
values ('XXX','Contoh');

delete from products
where id = 'XXX';

select * from wishlist
join products on products.id = wishlist.id_product;

select products.id , products.name, wishlist.description
from wishlist
join products on products.id = wishlist.id_product;

alter table wishlist
add column id_customer int;

alter table wishlist
add constraint fk_wishlist_customer foreign key (id_customer) references customer(id);

update wishlist
set id_customer = 1
where id in (2,3);

update wishlist
set id_customer = 4
where id = 4

select * from customer;

select customer.email, products.id , products.name, wishlist.description from wishlist
join products on products.id = wishlist.id_product
join customer on customer.id = wishlist.id_customer;

create table wallet
(
    id serial not null primary key ,
    id_customer int not null,
    balance int not null default 0,
    constraint wallet_customer_unique unique (id_customer),
    constraint fk_wallet_customer foreign key (id_customer) references customer (id)
);

select * from customer;

insert into wallet(id_customer,balance)
values (1,1000000),
       (3,2000000),
       (4,3000000),
       (5,4000000);

select * from wallet

select * from customer
join wallet on wallet.id_customer = customer.id;

create table categories
(
    id varchar(10) not null primary key,
    name varchar(100) not null
);

insert into categories(id, name)
values('C0001','Makanan'),
      ('C0002','Minuman');

drop table category;
select * from categories;
alter table products
drop column category;

alter table products
add column id_category varchar(10);

alter table products
add constraint fk_product_category foreign key (id_category) references categories(id);

select * from products;

update products
set id_category = 'C0001'
where id in ('P0001','P0002','P0005','P0003','P0004');

update products
set id_category = 'C0002'
where id in ('P0007','P0008','P0006');

select * from products
join categories on products.id_category = categories.id;

create table orders
(
    id serial not null primary key,
    total int not null,
    order_date timestamp not null default current_timestamp
);

create table order_details (
    id_product varchar(10) not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    primary key(id_product,id_order)
);

alter table order_details
add constraint fk_order_detail_product foreign key (id_product) references products (id);

alter table order_details
add constraint fk_orders_detail_order foreign key(id_order) references orders (id);

insert into orders(total)
values (1),
       (2),
       (3);

select * from orders;

update orders
set total = 1
where id = 2;

update orders
set total = 1
where id = 3;

insert into order_details(id_product,id_order,price,quantity)
values ('P0001',1,1000,2),
       ('P0002',1,1000,2),
       ('P0003',1,1000,2);

insert into order_details(id_product,id_order,price,quantity)
values ('P0004',2,1000,2),
       ('P0006',2,1000,2),
       ('P0007',2,1000,2);

insert into order_details(id_product,id_order,price,quantity)
values ('P0001',3,1000,2),
       ('P0004',3,1000,2),
       ('P0005',3,1000,2);

select * from order_details;

select * from orders
join order_details on order_details.id_order = orders.id
join products on order_details.id_product = products.id;

-- INNER JOIN --
select * from categories
inner join products on products.id_category = categories.id;

select * from categories
inner join products on categories.id = products.id_category;

select * from products
inner join categories on products.id_category = categories.id;

insert into categories(id,name)
values ('C0003','Gadget'),
       ('C0004','Laptop'),
       ('C0005','Pulsa');

select * from categories;

insert into products(id,name,price,quantity)
values ('X0001','Contoh 1',10000,100),
       ('X0002','Contoh 2',10000,100);

-- LEFT JOIN --
select * from categories
left join products on products.id_category = categories.id;

-- RIGHT JOIN --
select * from categories
right join products on products.id_category = categories.id;

--FULL JOIN--
select * from categories
full join products on products.id_category = categories.id;