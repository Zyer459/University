#crud for clinics
#razwan
import mysql.connector

db = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	database = 'data',
	password = ''
)

def add(name, price, clinic_id):
    cursor = db.cursor()
    sql = 'INSERT INTO data (name, price, clinic_id) VALUES (%s, %s, %s)'
    values = [name, int(price), clinic_id]
    cursor.execute(sql,values)
    db.commit()
    cursor.close()
    return

def update(name, price, clinic_id):
    cursor = db.cursor()
    sql = 'UPDATE data SET price = %s WHERE name = %s AND clinic_id = %s'
    values = [price, name, clinic_id]
    cursor.execute(sql, values)
    db.commit()
    cursor.close()
    return

def read(clinic_id):
    cursor = db.cursor()
    sql = 'SELECT * FROM data WHERE clinic_id = %s'
    values = [clinic_id,]
    print(clinic_id)
    cursor.execute(sql, values)
    _list = cursor.fetchall()
    cursor.close()
    return _list

def delete(test_name, clinic):
    cursor = db.cursor()
    sql = 'DELETE FROM data WHERE name = %s AND clinic_id = %s LIMIT 1'
    values = [test_name, clinic]
    cursor.execute(sql, values)
    db.commit()
    cursor.close()
    return