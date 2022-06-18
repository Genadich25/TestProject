CREATE TABLE book(
    name text,
    author_id bigint
);

CREATE TABLE author(
    name text,
    id bigint
);

insert into author(name, id)
values ('Author3', 3);

select author.name, book.name
from book
left join author on book.author_id = author.id
where author.name like 'Author1';