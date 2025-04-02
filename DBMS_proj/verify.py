import mysql.connector

db = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	database = 'data',
	password = ''
)


def verify_user(email, password):
	cursor = db.cursor()
	cursor.execute('SELECT pass FROM users WHERE email = %s AND pass = %s', (email,password))
	results = cursor.fetchall() #gives a list of rows(tuples)
	cursor.close()
	if len(results) == 0:
		#print('list empty')
		return None
	else:
		#print(results)
		return results
