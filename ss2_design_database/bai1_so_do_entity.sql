create database if not exists library_management;
use library_management;

create table students (
	id int primary key,
    name varchar(100),
    birthday date,
    class_name varchar(50)
);

insert into students (id, name, birthday, class_name)
values (1, 'Hiếu', '2005-01-01', 'C03');

create table authors (
	id int primary key,
    name varchar(100)
);

insert into authors (id, name)
values(1, 'Khổng Phu Tử');

create table category (
	id int primary key,
    name varchar(100)
);

insert into category (id, name)
values(1, 'Lịch sử');

create table books (
	id int primary key,
    title varchar(200),
    page_size int,
    authors_id int,
    category_id int,
	FOREIGN KEY (authors_id) REFERENCES authors(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

insert into books(id, title, page_size, authors_id, category_id)
values (1, 'Thuỷ hử', 200, 1, 1);

create table borrows (
	student_id int,
    book_id int,
    borrow_date date,
    return_date date,
    PRIMARY KEY (student_id, book_id, borrow_date),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

insert into borrows(student_id, book_id, borrow_date, return_date)
values (1, 1, '2025-08-08', '2025-08-15');
-- drop database library_management;
