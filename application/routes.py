from flask import render_template, request
from application import app
import pymysql

# from application.data_provider_service import DataProviderService
# # instantiating an object of DataProviderService
# DATA_PROVIDER = DataProviderService()


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', title='Homepage')


@app.route('/about')
def about():
    return render_template('about.html', title='About')


@app.route('/<location>')
def location(location):
    # Connect to the database
    conn = pymysql.connect(
        host='your_host_name',
        user='your_username',
        password='password',
        db='your_database_name'
    )

    # cursor to interact with database
    cur = conn.cursor()

    # SQL query to retrieve the content for the given location
    cur.execute("SELECT * FROM locations WHERE name=%s", location)

    # fetch the results
    result = cur.fetchone()

    # Close the cursor and connection to the database
    cur.close()
    conn.close()

    # return results to the template
    return render_template('location.html', result=result)
