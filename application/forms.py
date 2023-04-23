from wtforms import StringField, SubmitField, TextAreaField, SelectField
from flask_wtf import FlaskForm
from wtforms import PasswordField
from wtforms.validators import DataRequired, Email, Length

# inheritance
# BasicForm inherits from FlaskForm
# BasicForm is now a kind of FlaskForm
class BasicForm(FlaskForm):
    # Instantiating different input fields
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


class ContactForm(FlaskForm):
    name = StringField('Name')
    email = StringField('Email')
    subject = SelectField('Subject', choices=[('General Inquiry'), ('Technical Issue'), ('Press Contact')])
    message = TextAreaField('Message')
    submit = SubmitField('Submit Query')