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