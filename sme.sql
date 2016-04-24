PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE products (
		 id integer primary key,
		 title text, 
		 description text, 
		 price integer, 
		 duration integer);
INSERT INTO "products" VALUES(1,'Security Assessment','Thorough one-time assessment for customer.',150,1);
INSERT INTO "products" VALUES(2,'Backup','Configure and manage backup solution for customer.',50,12);
INSERT INTO "products" VALUES(3,'WAF','Backup+ plus WAF installation and configuration.',75,12);
INSERT INTO "products" VALUES(4,'AV','Backup+ plus AV installation and configuration.',75,12);
INSERT INTO "products" VALUES(5,'Complete Protection','Configure and manage Backup, WAF, and AV.',100,12);
CREATE TABLE customers(
		id integer primary key, 
		product_id integer,
		business text, 
		contact text, 
		email text, 
		url text, 
		status text, 
		foreign key(product_id) references products);
INSERT INTO "customers" VALUES(1,3,'Small Internet Business','Unknown','Unknown','Unknown','Cold Prospect');
INSERT INTO "customers" VALUES(2,3,'Happy Small Business','Unknown','Unknown','Unknown','Cold Prospect');
INSERT INTO "customers" VALUES(3,4,'Land Hop','Unknown','Unknown','Unknown','Cold Prospect');
INSERT INTO "customers" VALUES(4,1,'Bagels and More','Unknown','Unknown','Unknown','Cold Prospect');
INSERT INTO "customers" VALUES(5,3,'','Unknown','Unknown','Unknown','Cold Prospect');
CREATE TABLE employees (
		ein INTEGER PRIMARY KEY, 
		customer_id INTEGER,
		first TEXT, 
		last TEXT, 
		contact TEXT, 
		role TEXT, 
		salary INTEGER, 
		band INTEGER, 
		foreign key(customer_id) references customers);
COMMIT;
