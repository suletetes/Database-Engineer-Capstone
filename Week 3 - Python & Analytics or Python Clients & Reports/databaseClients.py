import mysql.connector as connector
print('Task One')
connection = connector.connect(
    user='root',
    password='root',
    host='localhost',
    database='littleLemonDB'
)

print('Task Two')


cursor = connection.cursor()
show_tables_query = "SHOW tables" 
cursor.execute(show_tables_query)

results = cursor.fetchall()
for row in results:
    print(row)


print('Task Three')
select_query = "SELECT Customer.name, Customer.PhoneNo, Customer.email, Orders.TotalCost "
select_query += "FROM Customer "
select_query += "JOIN Orders "
select_query += "ON Customer.CustomerID = Orders.CustomerID "
select_query += "WHERE Orders.TotalCost > 60"
cursor.execute(select_query)
results = cursor.fetchall()

for result in results:
    print(result)