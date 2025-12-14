select current_schema();

create schema contoh;

set search_path to contoh;

create table contohcontoh (
    id serial not null,
    name text not null,
    primary key (id)
);

select * from contohcontoh;

select * from public.products;