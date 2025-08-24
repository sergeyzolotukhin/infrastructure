#### Oracle Database Server Release 21c (21.3.0.0) Docker Image Documentation
https://container-registry.oracle.com/ords/f?p=113:4:102669084321828:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:9,9,Oracle%20Database%20Enterprise%20Edition,Oracle%20Database%20Enterprise%20Edition,1,0&cs=3ydyDEiwIF7gn9zlSVlJMG5FS7sXsifJJwlAfiaRwQ30wrJrWoBZX_EQpLFXlkjuAqNkLlR27pzh5pR8kjJnT-Q

#### Oracle Database XE Release 21c (21.3.0.0) Docker Image Documentation
https://container-registry.oracle.com/ords/f?p=113:4:106774159023573:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:803,803,Oracle%20Database%20Express%20Edition,Oracle%20Database%20Express%20Edition,1,0&cs=3YmzPLWrxKo2MH-fI66Qg9xlcGXNSrS9AzcPsbBd6-Rjp9RMXXiSfLVVxT4SuPCTKWMc_DrobOVZ1PqAwgaROsA

https://container-registry.oracle.com/ords/f?p=113:4:4041445972571:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:1863,1863,Oracle%20Database%20Free,Oracle%20Database%20Free,1,0&cs=3xBZFJ_5KD3tZ-pakYgykWTZz81IbO_k-35davvF9XAlb6Dxs7Es7xjmrDXIit2I3OnqPg3Z1p7FOjq3YGRTImQ


##### Starting an Oracle Database Server Instance
docker run -d --name oracle-db container-registry.oracle.com/database/express:21.3.0-xe

##### Changing the Default Password for SYS User
docker exec oracle-db ./setPassword.sh oracle_sys_password

##### Connecting from Within the Container
docker exec -it oracle-db sqlplus / as sysdba
docker exec -it <oracle-db> sqlplus sys/<your_password>@XE as sysdba
docker exec -it <oracle-db> sqlplus system/<your_password>@XE
docker exec -it <oracle-db> sqlplus pdbadmin/<your_password>@XEPDB1

##### Custom Configurations
To facilitate custom configurations, the Oracle Database server container provides configuration parameters that you can use when starting the container. For example, this is the detailed docker run command supporting all custom configurations:

docker run --name <container name> \
-p <host port>:1521 -p <host port>:5500 \
-e ORACLE_PWD=<your database passwords> \
-e ORACLE_CHARACTERSET=<your character set> \
-v [<host mount point>:]/opt/oracle/oradata \
container-registry.oracle.com/database/express:21.3.0-xe

Parameters:
--name:         The name of the container (default: auto generated)
-p:             The port mapping of the host port to the container port.
                Two ports are exposed: 1521 (Oracle Listener), 5500 (EM Express)
-e ORACLE_PWD:  The Oracle Database SYS, SYSTEM and PDB_ADMIN password (default: auto generated)
-e ORACLE_CHARACTERSET:     The character set to use when creating the database (default: AL32UTF8)
-v /opt/oracle/oradata      The data volume to use for the database.
                Has to be writable by the Unix "oracle" (uid: 54321) user inside the container!
                If omitted the database will not be persisted over container recreation.
-v /opt/oracle/scripts/startup | /docker-entrypoint-initdb.d/startup
                Optional: A volume with custom scripts to be run after database startup.
                For further details see the "Running scripts after setup and on startup" section below.
-v /opt/oracle/scripts/setup | /docker-entrypoint-initdb.d/setup
                Optional: A volume with custom scripts to be run after database setup.
                For further details see the "Running scripts after setup and on startup" section below.

##### Connecting from Outside the Container
docker port oracle-db

sqlplus sys/<your password>@//localhost:1521/XE as sysdba
sqlplus system/<your password>@//localhost:1521/XE
sqlplus pdbadmin/<your password>@//localhost:1521/XEPDB1

docker container ls
docker stop oracle-db

https://medium.com/geekculture/run-oracle-database-21c-in-docker-351049344d0c
https://docs.oracle.com/en/database/oracle/oracle-database/21/deeck/index.html#GUID-6589D4A1-14F3-42B3-8461-C9A7B840D148
https://container-registry.oracle.com/ords/f?p=113:4:117212475670227:::4:P4_REPOSITORY,AI_REPOSITORY,AI_REPOSITORY_NAME,P4_REPOSITORY_NAME,P4_EULA_ID,P4_BUSINESS_AREA_ID:803,803,Oracle%20Database%20Express%20Edition,Oracle%20Database%20Express%20Edition,1,0&cs=3DOXRgzVTrOZ1vHLWAKgpXjsclc40NvrdIWwg1G7D6wnFyggKL7tcMYCwMOnNXptWQnJEKgix2aKaD8hwml_FLg
