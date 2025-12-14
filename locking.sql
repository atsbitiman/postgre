select * from products;

start transaction ;

update products
set description = 'Mie Ayam Original yang Enak'
where id = 'P0001';

commit;

update products
set quantity = 200
where id = 'P0001';