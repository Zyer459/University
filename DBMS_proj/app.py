from flask import Flask, request, render_template, jsonify, redirect, session, url_for
import mysql.connector
from verify import verify_user, reg_user, verify_admin, reg_admin
from database import *

#asif
db = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	database = 'data',
	password = ''
)

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Set a secret key for session management

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/admin')
def admin():
		return render_template('admin.html')

@app.route('/patient')
def patient():
		return render_template('patient.html')

@app.route('/home')
def home():
	if 'user_authenticated' not in session or not session['user_authenticated']:
		return redirect(url_for('login'))
	return render_template('home.html')

@app.route('/dashboard')
def dashboard():
	if 'user_authenticated' not in session or not session['user_authenticated']:
		return redirect(url_for('index'))
	return render_template('dashboard.html')

@app.route('/adminDiagnosis')
def adminDiagnosis():
	return render_template('admin-diagnosis.html')

@app.route('/adminDiagnosis/create', methods=['POST', 'GET'])
def create():
	name = request.form.get('testname')
	price = request.form.get('price')
	clinic_id = request.form.get('clinic_id')
	add(name, price, clinic_id)
	return render_template('admin-diagnosis.html')

@app.route('/adminDiagnosis/read', methods=['POST'])
def show():
	clinic_id = request.form.get('show')
	_list = read(clinic_id)
	return render_template('admin-diagnosis-show.html', show = _list)

@app.route('/adminDiagnosis/update', methods=['POST'])
def change():
	clinic_id = request.form.get('clinic')
	test_name = request.form.get('test_name')
	price = request.form.get('new_price')
	update(test_name, price, clinic_id)
	return redirect('/adminDiagnosis')

@app.route('/adminDiagnosis/delete', methods=['POST'])
def remove():
	clinic_id = request.form.get('clinic_del')
	test_name = request.form.get('test_name_del')
	
	delete(test_name, clinic_id)
	return redirect('/adminDiagnosis')

@app.route('/login', methods=['GET','POST'])
def login():
	if request.method == 'POST':
		data = request.get_json()
		email = data['email']
		url = data['url']
		password = int(data['password'])
		
		#verification
		if 'patient' in url:
			print('patient')
			verify_user(email,password)
			if verify_user(email,password) is not None:
				#if email == 'test@gmail.com' and password == 123:
				session['user_authenticated'] = True # session management
				return jsonify({'result': '200', 'redirect':'/home'}) # redirect by JS & ajax
			else:
				return jsonify({'result': '404'})
		
		elif 'admin' in url:
			print('admin', password)
			verify_admin(email,password)
			if verify_admin(email,password) is not None:
				#if email == 'test@gmail.com' and password == 123:
				session['user_authenticated'] = True # session management
				return jsonify({'result': '200', 'redirect':'/dashboard'}) # redirect by JS & ajax
			else:
				return jsonify({'result': '404'})
	else:
		return render_template('login.html')

@app.route('/register', methods=['POST'])
def register():
	#request.method == 'POST':
	data = request.get_json()
	email = data['email']
	name = data['name']
	mobile = data['mobile']
	url = data['url']
	password = int(data['password'])
	#registration

	if 'patient' in url:
		reg_user(name, email, mobile, password)
		if verify_user(email,password) is None:
			return jsonify({'result': '404'})
		return jsonify({'result': '200', 'redirect':'/patient'})
	
	elif 'admin' in url:
		reg_admin(name, email, mobile, password)
		#print(mobile)
		if verify_admin(email,password) is None:
			return jsonify({'result': '404'})
		return jsonify({'result': '200', 'redirect':'/admin'})

@app.route('/logout')
def logout():
    session.pop('user_authenticated', None)  # Remove user authentication from the session
    return redirect(url_for('index'))  # Redirect to start page after logout

@app.route('/doctor')
def doctor():
    return "Welcome to the Doctor page!"

@app.route('/diagnosis')
def diagnosis():
    return render_template('diagnosis.html')

@app.route('/about')
def about():
    return "Welcome to the about page!"


@app.route('/contact')
def contact():
    return "Welcome to the contact page!"

#dynamic routing would be better
@app.route('/a')
def a():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "a%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/b')
def b():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "b%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/c')
def c():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "c%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/d')
def d():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "d%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/e')
def e():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "e%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/f')
def f():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "f%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/g')
def g():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "g%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/h')
def h():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "h%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/i')
def i():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "i%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/j')
def j():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "j%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/k')
def k():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "k%"')
	results = cursor.fetchall()
	print (results)
	print (type(results))
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/l')
def l():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "l%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/m')
def m():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "m%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/n')
def n():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "n%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/o')
def o():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "o%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/p')
def p():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "p%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/q')
def q():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "q%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/r')
def r():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "r%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/s')
def s():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "s%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/t')
def t():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "t%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/u')
def u():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "u%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/v')
def v():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "v%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/w')
def w():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "w%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/x')
def x():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "x%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/y')
def y():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "y%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

@app.route('/z')
def z():
	cursor = db.cursor()
	cursor.execute('SELECT * FROM data WHERE LOWER(name) LIKE "z%"')
	results = cursor.fetchall()
	return render_template('diagnosis.html', results=results)
	cursor.close()

if __name__== '__main__':
		app.run(debug=True)
