REM USUARIO DEL APLICATIVO 

DROP USER &USUARIOBD CASCADE;

CREATE USER &USUARIOBD
 IDENTIFIED BY &CLAVEBD
 DEFAULT TABLESPACE &TS_DEFAULT
 TEMPORARY TABLESPACE &TS_TEMP    
 ACCOUNT UNLOCK;

GRANT 
  ALTER USER, CREATE CLUSTER, CREATE DATADB LINK, CREATE PROFILE , ALTER PROFILE, 
  CREATE PROCEDURE, CREATE PUBLIC DATADB LINK, 
  CREATE PUBLIC SYNONYM, CREATE ROLE, CREATE SEQUENCE, 
  CREATE SESSION, CREATE SYNONYM, CREATE TABLE, 
  CREATE TRIGGER, CREATE USER , CREATE VIEW, CREATE TYPE,
  DROP PUBLIC SYNONYM, EXECUTE ANY PROCEDURE, 
  SELECT ANY SEQUENCE, SELECT ANY TABLE, 
  DEBUG CONNECT SESSION,
  UNLIMITED TABLESPACE TO &USUARIOBD;
