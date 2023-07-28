CREATE SCHEMA IF NOT EXISTS schema_name_02;

CREATE TABLE schema_name_02.accounts
(
    user_id    serial PRIMARY KEY,
    username   VARCHAR(50) UNIQUE
);