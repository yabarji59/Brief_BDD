CREATE USER leo  WITH   CREATEDB;
alter role leo SUPERUSER;
ALTER USER leo RENAME TO lea;
CREATE USER karima  WITH   CREATEDB;

CREATE DATABASE library
   WITH  OWNER = karima;

   CREATE TABLE leads (id INTEGER PRIMARY KEY, name VARCHAR);
   select * from leads; 