-- SUB QUERY WHERE & FROM --
select * from products
where price > (select avg(price) from products);

select max(price)
from
    (select products.price as price
     from categories
     join products on products.id_category = categories.id ) as contoh;

-- SET OPERATOR --
create table guestbook (
    id serial not null,
    email varchar(100) not null,
    title varchar(100) not null,
    content text,
    primary key (id)
);

select * from customer;

insert into guestbook (email,title,content)
values ('eko@pzn.com','feedback eko','ini feedback dari eko'),
       ('eko@pzn.com','feedback eko','ini feedback dari eko'),
       ('budi@pzn.com','feedback budi','ini feedback dari budi'),
       ('rully@pzn.com','feedback rully','ini feedback dari rully'),
       ('tono@pzn.com','feedback tono','ini feedback dari tono'),
       ('tono@pzn.com','feedback tono','ini feedback dari tono');

select * from guestbook;

-- SET UNION --
select distinct email from customer
union
select distinct email from guestbook;

select distinct email from guestbook;

-- SET UNION ALL --
select distinct email from customer
union all
select distinct email from guestbook;

-- INTERSECT --
select distinct email from customer
intersect
select distinct email from guestbook;

-- EXCEPT --
select distinct email from customer
except
select distinct email from guestbook;