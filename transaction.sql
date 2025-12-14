-- TRANSACTION --
start transaction;

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','transaction');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','transaction 2');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','transaction 3');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','transaction 4');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','transaction 5');

select * from guestbook;

-- COMMIT TRANSACTION --
commit;

-- ROLLBACK --
start transaction;

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','rollback');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','rollback 2');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','rollback 3');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','rollback 4');

insert into guestbook (email,title,content)
values ('transaction@pzn.com','transaction','rollback 5');

rollback;

select * from guestbook;