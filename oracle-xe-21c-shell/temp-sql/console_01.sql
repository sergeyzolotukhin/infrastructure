-- --------------------------------------------------------------------------------------------------------------------
-- under CDB - sys
-- --------------------------------------------------------------------------------------------------------------------
alter pluggable database XEPDB2 open;
-- --------------------------------------------------------------------------------------------------------------------
-- under CDB - system
-- --------------------------------------------------------------------------------------------------------------------
select name, guid from v$pdbs
;

alter session set container=XEPDB1;

-- ORA-28002: the password will expire within 6 days.

alter profile "DEFAULT" limit
    password_life_time unlimited;

SELECT *
FROM dba_users
--WHERE ACCOUNT_STATUS LIKE '%EXPIRED%'
;

SELECT *
FROM dba_users d
where account_status in ('OPEN')
;

-- /opt/oracle/oradata/XE/XEPDB1/system01.dbf
CREATE PLUGGABLE DATABASE XEPDB2 ADMIN USER PDBADMIN2 IDENTIFIED BY PDBADMIN2
    FILE_NAME_CONVERT=('/opt/oracle/oradata/XE/pdbseed/','/opt/oracle/oradata/XE/PDB2/');
;

select * from dba_data_files;

-- --------------------------------------------------------------------------------------------------------------------
-- under PDB 1
-- --------------------------------------------------------------------------------------------------------------------

CREATE USER user_01 IDENTIFIED BY user_01 CONTAINER=CURRENT;

SELECT *
FROM dba_users d
where account_status in ('OPEN')
;

ALTER USER PDBADMIN IDENTIFIED BY PDBADMIN;

-- /opt/oracle/oradata/XE/XEPDB1/system01.dbf
select FILE_NAME from dba_data_files;

-- --------------------------------------------------------------------------------------------------------------------
-- under PDB SEED
-- --------------------------------------------------------------------------------------------------------------------

select name, guid from v$pdbs
;

--alter session set container=XEPDB1;

-- ORA-28002: the password will expire within 6 days.

alter profile "DEFAULT" limit
    password_life_time unlimited;

SELECT *
FROM dba_users
--WHERE ACCOUNT_STATUS LIKE '%EXPIRED%'
;

ALTER USER system IDENTIFIED BY system;

alter session set container=PDB$SEED;

-- /opt/oracle/oradata/XE/pdbseed/sysaux01.dbf
select * from dba_data_files;