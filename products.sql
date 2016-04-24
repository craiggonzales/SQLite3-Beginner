PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE products (id integer primary key, title text, description text, price integer, duration integer);
INSERT INTO "products" VALUES(1,'Security Assessment','Thorough one-time assessment for customer.',150,1);
INSERT INTO "products" VALUES(2,'Backup','Configure and manage backup solution for customer.',50,12);
INSERT INTO "products" VALUES(3,'WAF','Backup+ plus WAF installation and configuration.',75,12);
INSERT INTO "products" VALUES(4,'AV','Backup+ plus AV installation and configuration.',75,12);
INSERT INTO "products" VALUES(5,'Complete Protection','Configure and manage Backup, WAF, and AV.',100,12);
COMMIT;
