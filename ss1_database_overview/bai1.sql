create database if not exists book_management;
use book_management;

create table books(
	id int primary key,
    name varchar(50),
    page_size int,
    author varchar(50)
);

insert into books(id,name, page_size, author)
values
(1, 'Toán', 45, 'Nguyễn Thái Học'),
(2, 'Văn', 34, 'Trần Minh Hoàng'),
(3, 'Sử', 56, 'Dương Trung Quốc'),
(4, 'Địa', 76, 'Lê Văn Hiến'),
(5, 'Hoá', 32, 'Hà Văn Minh');

update books
set page_size=50
where id = 3;

delete from books
where id = 5;

-- drop table books;

-- drop database book_management;