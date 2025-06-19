### Docker Images from Oracle
https://github.com/oracle/docker-images

### ActiveMQ Artemis

https://activemq.apache.org/components/artemis/
https://github.com/apache/activemq-artemis/tree/main/artemis-docker

https://www.datacamp.com/tutorial/sql-pivot-rows-to-columns

https://docs.oracle.com/en/database/oracle/oracle-database/19/dwhsg/monitoring-materialized-view-refresh.html#GUID-6AD8879A-0BE5-466E-8D19-1D076C5DDFFB

#### Database connection 

jdbc:oracle:thin:@192.168.56.2:1521:XE
system
oracle

#### Overview of Container Databases (CDB) and Pluggable Databases (PDB)
https://oracle-base.com/articles/12c/multitenant-overview-container-database-cdb-12cr1
https://docs.oracle.com/en/database/oracle/oracle-database/21/cncpt/CDBs-and-PDBs.html#GUID-FC2EB562-ED31-49EF-8707-C766B6FE66B8

#### How To Create A PDB From Scratch
https://dbaparadise.com/2021/01/pdbs/

#### create user
https://oracle-base.com/articles/12c/multitenant-manage-users-and-privileges-for-cdb-and-pdb-12cr1
https://www.mirsayeedhassan.com/ora-65096-invalid-common-user-or-role-name-in-oracle-12c-db/
https://dba.stackexchange.com/questions/159745/ora-00959-tablespace-does-not-exist-but-i-can-see-it-in-select

#### Unit Testing with SQL Developer
https://docs.oracle.com/cd/E15846_01/doc.21/e15222/unit_testing.htm

#### How to set password
SELECT *
FROM dba_users
--WHERE ACCOUNT_STATUS LIKE '%EXPIRED%'
;

ALTER USER system IDENTIFIED BY system;
ALTER USER PDBADMIN IDENTIFIED BY PDBADMIN;

#### Materialized Views in Oracle
https://medium.com/@prasadyejarla/materialized-views-in-oracle-6ed8aa5a63ad
https://www.linkedin.com/pulse/how-implement-oracle-materialized-view-fast-refresh-method-shaikh-xkqyc/

https://danischnider.wordpress.com/2019/02/18/materialized-view-refresh-for-dummies/
