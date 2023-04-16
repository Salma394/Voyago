# Library: collection of code/tools written by someone that we can use
# Framework: same as a library but with a specific structure and rules to follow
# Route is an end point that will take us to somewhere we want to go ir info we need

# Import Flask
# We can install libraries suing:
# 1- pip (through command line)
# 2- Add it to the properties of this project using settings
# 3- To do it in the code within this file by adding onto our repository a file called requirements.txt
#    and listing all libraries to be installed. Then go onto the py file and click Install Packages
from flask import Flask, Response, request, url_for, render_template
import csv

# Instantiate Flask application object
# Within the brackets we tell Flask to use this file, that's why we have __name__
app = Flask(__name__)


# Set up a route (endpoint) and link it to a function
# @app.route is a decorator and inside the () it has what the URL will be to reach that function
# Routes MUST be UNIQUE
# ('/') would be for the home route
@app.route('/hello')
def hello_from_flask():
    return 'Hello from Flask :) '


@app.route('/bye')
def bye_from_flask():
    return 'Bye from Flask :(  See you later, alligator!'


# Following a request, we want a response which will be an HTML file
# At the moment as we are building an API we can have data responses
@app.route('/get/text')
def get_text():
    return Response("Hello from Flask using an explicit Response object", mimetype='text/plain')


# methods takes in a list of the methods
# In the below we are saying: the below endpoint will match a post request with the url /post/text
@app.route('/post/text', methods=['POST'])
def post_text():
    # request is used because we assume this will be using data provided by our user
    # data: attribute of the request object
    # decode() is assuming the data we will be given is in utf-8 format, so we are going to decode it
    data_sent = request.data.decode('utf-8')
    return Response('You sent this data: ' + data_sent, mimetype='text/plain')


# Dynamic route: the route URL is not hardcoded, the URL endpoint will be variable
# <> will define this is a placeholder for the parameter of the function
@app.route('/dynamic/<word>')
# the dynamic bit of the endpoint will need to be a parameter of our function
def dynamic_route_a(word):
    return 'Echo ' + word

# so now if we go onto http://127.0.0.1:5000/dynamic/parrot ir will show "Echo parrot"


@app.route('/square/<int:number>')
# Static typing used to set number as an integer data type only → <int:number>
def square(number):
    squared_number = number ** 2
    message = f'{str(number)} squared is: {str(squared_number)}'
    return message


# Exercise: add a dynamic route to return Hello to that name
@app.route('/hi/<name>')
def hi_name(name):
    message = f'Hi {name}'
    return message


# ******************************  << HOMEWORK >> ******************************
# PART 1: Create a route to return HTML page to display hello message
@app.route('/sayhello/<name>')
def say_hello_page(name):
    # Slurping the HTML file (reading the html and saving it onto a single string) so we can use the .format() method
    # Although the exercise had the HTML text within a sting in the Python file, I find it easier to edit HTML using
    # VSC reason why I've decided to create a html file to be edited in VSC and read it with Python
    # CSS style must be inline as we are slurping the HTML document, so it won't have any CSS/Bootstrap connection
    with open("templates/sayhello.html", "r") as file:
        html = file.read()
    return html.format(name)


# TASK 2: run the code from url_for slide and play around
# Slurping the HTML file (reading the html and saving it onto a single string) so we can use the .format() method
@app.route('/index/<name>/<int:age>')
def index(name, age):
    url = url_for('get_text')
    with open("templates/index.html", "r") as file:
        html = file.read()
    return html.format(name, age, url)


# TASK 3: Add a route for an About Page and include a link to another route within the html of the page
# Within HTML we are using Jinja to input Python code in it allowing us to use the url_for() function within html file
# Reference re clickable nav: https://stackoverflow.com/questions/61625290/flask-make-a-button-direct-to-another-page
# References re naming/structure of directory: https://thinkinfi.com/flask-adding-html-and-css/
# USED: layout html template + bootstrap navbar and lists + directory standard structure templates/static, Jinja
# Using render_template() instead of slurping the html text. This way we can use CSS and Bootstrap styling
@app.route('/')
def render_quiz_homepage():
    return render_template("quiz_homepage.html")

@app.route('/countryquiz')
def render_countryquiz():
    return render_template("countryquiz.html")

@app.route('/countryquiz2')
def render_countryquiz2():
    return render_template("countryquiz2.html")

@app.route('/countryquiz3')
def render_countryquiz3():
    return render_template("countryquiz3.html")

@app.route('/countryquiz4')
def render_countryquiz4():
    return render_template("countryquiz4.html")

# Followed the explanation from https://www.geeksforgeeks.org/retrieving-html-from-data-using-flask/
# This function will check if we have data for the 3 required fields within the FORM in application_form.html
# If the user has provided a first name, last name and email and submitted the form, the data submitted will be
# appended onto a csv file named git_interest_data.csv (if the file is not yet existent, it will create the file too)
# then the user will be promped with a success page.
# If the user doesn not provide all 3 fields data, user remains in the application form
@app.route('/application', methods=['GET', 'POST'])
def render_applicationform():
    if request.method == "POST":
        # We get the information from the form (not that as its a post we use "form", if it was from a get is "args"
        first_name = request.form.get("firstname")
        last_name = request.form.get("lastname")
        email = request.form.get("email")
        # List created with the data so we can use the writerow() function
        application_data = [first_name, last_name, email]
        # Uncomment the print to test if we have a list with 3 items. If one is None, the IF statement won't execute
        # print(application_data)
        if all(application_data):  # all() returns True if all items in the iterable are true
            with open("templates/git_interest_data.csv", "a") as file:
                git_interest = csv.writer(file, delimiter=",")
                git_interest.writerow(application_data)
            return render_template("application_success.html")  # if the form was complete and data submitted, show success
    return render_template("application_form.html")


# Main trick: this is so if we run this file, whatever is within the main trick is run
if __name__ == "__main__":
    # debug=True named parameter is used and set to True, this wouldn't be done in production!
    app.run(debug=True, host='0.0.0.0', port=8080)

