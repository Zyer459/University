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

def reg_user(name, email, mobile, password):
	cursor = db.cursor()
	sql = 'INSERT INTO users (name, email, mobile, pass) VALUES (%s, %s, %s, %s)'
	values = [name, email, mobile, password]
	cursor.execute(sql, values)
	db.commit()
	cursor.close()