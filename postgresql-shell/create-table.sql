CREATE TABLE table_name(
                           id INT PRIMARY KEY     NOT NULL,
                           name    TEXT
);

insert into table_name (id, name) VALUES (1, 'txt-1');
insert into table_name (id, name) VALUES (2, 'txt-2');

select *
from table_name;