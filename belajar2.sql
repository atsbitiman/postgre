create table admin
(
    id serial not null,
    first_name varchar(100),
    last_name varchar(100),
    primary key (id)
);

insert into admin(first_name,last_name)
values ('Eko','Khannedy'),
       ('Budi','Nugraha'),
      ('Joko','Morro');

select * from admin;

select id,name, description from products;

select id, lower (name), length(name), lower(description) from products;

select id, extract(year from created_at), extract(month from created_at), extract(day from created_at) from products;

select count(id) as "Total Product" from products;

select avg(price) as "Rata - Rata Harga" from products;

select max(price) as "Harga Termahal", min(price) as "Harga Terendah" from products;

select category, count(id) as "Total Product" from products
group by category;

select category , count(id) as total
from products
group by category
having count(id) > 4;

select category ,
       avg(price) as "Harga Rata - Rata",
       min(price) as "Harga Termurah",
       max(price) as "Harga Termahal"
from products
group by category;

select category ,
       avg(price) as "Harga Rata - Rata",
       min(price) as "Harga Termurah",
       max(price) as "Harga Termahal"
from products
group by category
having avg(price) > 15000;

create table customer
(
    id serial not null primary key,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    constraint unique_email unique (email)
);

insert into customer (email,first_name, last_name)
values ('eko@pzn.com','Eko','Khannedy');

insert into customer (email,first_name, last_name)
values ('budi@pzn.com','Budi','Nugraha'),
       ('joko@pzn.com','Joko','Morro'),
       ('rully@pzn.com','Budi','Irwansyah');

select * from customer;

alter table customer
drop constraint unique_email ;

alter table customer
add constraint unique_email unique (email);

alter table products
add constraint price_check check (price >= 1000);

alter table products
add constraint quantity_check check (quantity >= 0)

create table sellers
(
    id serial not null primary key,
    name varchar(100) not null,
    email varchar(100) not null,
    constraint email_unique unique (email)
);

insert into sellers(name,email)
values ('Galeri Olahraga','galeri@pzn.com'),
       ('Toko Tono','tono@pzn.com'),
       ('Toko Budi','budi@pzn.com'),
       ('Toko Rully','rully@pzn.com');

select * from sellers;