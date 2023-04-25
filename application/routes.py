from flask import render_template, request,redirect, url_for, session
from application import app
from controller.location_controller import LocationController
from application.forms import BasicForm
from application.forms import RegisterForm
from application.forms import LoginForm
from application.forms import ContactForm
from application.data_provider_service import DataProviderService
from passlib.hash import sha256_crypt
import pymysql

# instantiate DataProviderService
DATA_PROVIDER = DataProviderService()
# instantiate LocationController
location_controller = LocationController()


@app.route('/')
@app.route('/index')
@app.route('/home',methods=['GET'])
def home():
    return render_template('home.html')

@app.route('/destinations',methods=['GET'])
def destinations():
    return render_template('destinations.html')

@app.route('/destinations/city',methods=['GET'])
def city():
    return render_template('city.html')

@app.route('/destinations/beach',methods=['GET'])
def beach():
    return render_template('beach.html')

@app.route('/destinations/adventure',methods=['GET'])
def adventure():
    return render_template('adventure.html')

@app.route('/destinations/activity',methods=['GET'])
def activity():
    return render_template('activity.html')




@app.route('/about')
def about():
    return render_template('about.html', title='About')

@app.route('/site')
def site():
    return render_template('site.html', title='site')

@app.route('/FAQ')
def FAQ():
    return render_template('faq.html', title='faq')


@app.route('/location/<city>')
def location(city):
    # get location data from the database
    location = location_controller.get_location(city)

    if location:
        # render the location template with the location data
        return render_template('location.html', location=location)

    else:
        # render a 404 page if the location isn't found
        return render_template('404.html'), 404


@app.route('/login/register',methods=['GET','POST'])
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


@app.route('/faq',methods=['GET'])
def faq():
    return render_template('faq.html')

@app.route('/profile',methods=['GET'])
def profile():
    return render_template('profile.html')


@app.route('/privacy',methods=['GET'])
def privacy():
    return render_template('privacy.html')


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


data_provider = DataProviderService()


@app.route('/login/', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if request.method == 'POST':
        email = form.email.data
        password = form.password.data
        result, message = data_provider.login(email, password)
        if result:
            session['user_email'] = email
            return redirect(url_for('profile'))
        else:
            error = "Incorrect Email or Password. Please try Again!"
            return render_template('login.html', form=form, error=error)
    else:
        return render_template('login.html', form=form)

@app.route('/logout/')
def logout():
    session.pop('user_email', None)
    return redirect(url_for('home'))




@app.route('/quiz',methods=['GET','POST'])
def quiz():
    return render_template('quiz.html')


@app.route('/contact', methods=['GET', 'POST'])
def contact():
    error = " "
    form = ContactForm()
    if request.method == 'POST':
        if form.validate_on_submit():
            name = form.name.data
            email = form.email.data
            subject = form.subject.data
            message = form.message.data

        if len(name) == 0:
            error = 'Name cannot be blank!'
        elif len(email) == 0:
            error = 'Email cannot be blank! '
        elif len(message) == 0:
            error = 'Message cannot be blank! '


        else:

            new_message = DATA_PROVIDER.add_query(name,email, subject,message)
            success = f'Hello {name}! Thank you for contacting us. We aim to respond in 2-5 working days'
            return render_template('success.html', success_message=success)

    return render_template('contact.html', form=form,error=error)


@app.errorhandler(404)
def page_not_found():
    return render_template('404.html'), 404

