#!/user/bin/python
import sqlite3
import sys
conn = sqlite3.connect('sme.db')
c = conn.cursor()

print "Opened Small-Medium Database!\n"

#conn.execute('''CREATE TABLE employees (
#		ein INTEGER PRIMARY KEY, 
#		first TEXT, 
#		last TEXT, 
#		contact TEXT, 
#		role TEXT, 
#		salary INTEGER, 
#		band INTEGER, 
#		customer_id INTEGER, 
#		foreign key(customer_id) references customers);''')


#products = 'INSERT INTO PRODUCTS (title, description, price, duration) VALUES '
#customers =
#employees = 

# Which customer bought which product
c.execute('Select * from employees;')
print "+++++++++++++++++++++"
print "JOIN Customer and Product\n"
c.execute('select business, title FROM products as C JOIN customers as R on C.id=R.product_ID;')
all_rows = c.fetchall()
for row in all_rows:
	print row
print "+++++++++++++++++++++"


# How much will each customer pay
print "+++++++++++++++++++++"
print "Find how much customer paid\n"
c.execute('select business, price FROM products as C JOIN customers as R on C.id=R.product_ID;')
all_rows = c.fetchall()
for row in all_rows:
	print row
print "+++++++++++++++++++++"

conn.commit()
conn.close()




