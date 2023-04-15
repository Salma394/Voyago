from flask import render_template, request
from application import app
from application.forms import BasicForm
from application.forms import RegisterForm
from application.forms import LoginForm
from application.data_provider_service import DataProviderService
DATA_PROVIDER = DataProviderService()
from passlib.hash import sha256_crypt
@app.route('/home',methods=['GET'])
def home():
    return render_template('home.html')

@app.route('/destinations',methods=['GET'])
def destinations():
    return render_template('destinations.html')

@app.route('/contact',methods=['GET','POST'])
def contact():
    return render_template('contact.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    error = ""
    form = LoginForm()
    if form.validate_on_submit():
        email = form.email.data
        password = form.password.data
        if user_authentication.login(email, password):
            session['user_id'] = user_authentication.get_user_id(email)
            session['user_name'] = user_authentication.get_user_name(email)
            return redirect(url_for('profile'))
        else:
            error = 'Invalid email or password'
    return render_template('login.html', form=form, error=error)


@app.route('/register',methods=['GET','POST'])
def register():
    error= ""

    form = RegisterForm()

    if request.method == 'POST':
        first_name = form.first_name.data
        last_name = form.last_name.data
        email = form.email.data
        password = sha256_crypt.encrypt(form.password.data)

        if len(first_name) == 0:
            error = 'First name cannot be blank!'
        elif len(last_name) == 0:
            error = 'Last name cannot be blank! '
        elif len(email) == 0:
            error = 'Email cannot be blank! '

        else:

            new_user_id = DATA_PROVIDER.add_user(first_name,last_name,email,password)
            success = f'Hello {first_name}! Thank you for registering. Your account has been successfully created!'
            return render_template('success.html',success_message = success)

    return  render_template('register.html', title = "Register", form= form, message= error)



@app.route('/terms',methods=['GET'])
def terms():
    return render_template('terms.html')


@app.route('/marketing',methods=['GET','POST'])
def marketing():
    error = ""

#     Instantiating an object of type BasicForm
    form = BasicForm()

    if request.method == 'POST':
        first_name = form.first_name.data
        last_name = form.last_name.data
        email = form.email.data


        if len(first_name) == 0:
            error = 'First name cannot be blank!'
        elif len(last_name) == 0:
            error = 'Last name cannot be blank! '
        elif len(email) == 0:
            error = 'Email cannot be blank! '



        else:

            new_person_id = DATA_PROVIDER.add_person(first_name,last_name,email)
            success = f'Hello {first_name}! Thank you so much for subscribing to Voyago! We are excited to send you inspiration for your next holiday destination!'
            return render_template('success.html',success_message = success)

    return  render_template('marketing.html', title = "Marketing", form= form, message= error)

@app.route('/quiz',methods=['GET','POST'])
def quiz():
    return render_template('quiz.html')