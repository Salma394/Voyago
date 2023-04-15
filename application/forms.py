from wtforms import StringField, SubmitField
from flask_wtf import FlaskForm
from wtforms import PasswordField

# inheritance
# BasicForm inherits from FlaskForm
# BasicForm is now a kind of FlaskForm
class BasicForm(FlaskForm):
    # Instantiating different input fields
    first_name = StringField('First Name')
    last_name = StringField('Last Name')
    email = StringField('Email')
    subscribe = SubmitField('Subscribe!')

class RegisterForm(FlaskForm):
    first_name = StringField('First Name')
    last_name = StringField('Last Name')
    email = StringField('Email')
    password = PasswordField('Password')
    register  = SubmitField('Create Account!')


class LoginForm(FlaskForm):
    email = StringField('Email')
    password = PasswordField('Password')
    login = SubmitField('Log In')

class LogOutForm(FlaskForm):
    submit = SubmitField('Log Out')