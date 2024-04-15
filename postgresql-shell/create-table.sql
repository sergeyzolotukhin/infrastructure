CREATE TABLE table_name(
                           id INT PRIMARY KEY     NOT NULL,
                           name    TEXT
);

insert into table_name (id, name) VALUES (1, 'txt-1');
insert into table_name (id, name) VALUES (2, 'txt-2');

select *
from table_name;

create table users_parent (
                              id     BIGINT PRIMARY KEY,
                              val  NUMERIC(5,3),
                              s_date        timestamp,
                              e_date        timestamp
);

insert into users_parent (id, val, s_date, e_date) VALUES (1, 12.123,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into users_parent (id, val, s_date, e_date) VALUES (2, 12.123,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into users_parent (id, val, s_date, e_date) VALUES (3, 12.123,  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

SELECT pg_size_pretty( pg_total_relation_size('users_parent') );
SELECT pg_size_pretty( pg_relation_size('users_parent') );

SELECT pg_column_size(id), pg_column_size(s_date), pg_column_size(e_date), pg_column_size(val) FROM users_parent;

select *
from pg_tables t
where t.tablename in ('users_parent')

-- https://www.timescale.com/blog/how-to-reduce-your-postgresql-database-size/