DROP DATABASE IF EXISTS demo;
DROP TABLESPACE IF EXISTS demo_tablespace;

CREATE TABLESPACE demo_tablespace OWNER postgres LOCATION '/var/lib/postgresql/14/demo_tablespace';
CREATE DATABASE demo TABLESPACE demo_tablespace;