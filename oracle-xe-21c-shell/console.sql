CREATE TABLESPACE TS_NAME_01
    DATAFILE 'ts_name_01.dbf'
    SIZE 20M AUTOEXTEND ON;

create user c##US_NAME_01
    identified by oracle
    default tablespace TS_NAME_01
;
--CREATE SCHEMA EMP

select CON_ID, NAME, OPEN_MODE, RESTRICTED
from V$PDBS