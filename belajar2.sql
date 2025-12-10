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