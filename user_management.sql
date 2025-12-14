-- MEMBUAT USER --

create role eko;
create role budi;

-- MENGHAPUS USER --
drop role eko;
drop role budi;

alter role eko login password 'rahasia';
alter role budi login password 'rahasia';