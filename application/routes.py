from flask import render_template
from application import app
from controller.location_controller import LocationController


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', title='Homepage')


@app.route('/about')
def about():
    return render_template('about.html', title='About')


# DELETE
# @app.route('/<location>')
# def location(location):
#     # connection to the database
#     conn = pymysql.connect(
#         host='localhost',
#         port=3306,
#         user='root',
#         password='password',
#         database='voyago'
#     )
#
#     # cursor to interact with database
#     cur = conn.cursor()
#
#     # SQL query to retrieve the content for the given location
#     cur.execute("SELECT * FROM locations WHERE name=%s", location)
#
#     # fetch the results
#     result = cur.fetchone()
#
#     # close the cursor and connection to the database
#     cur.close()
#     conn.close()
#
#     # return results to the template?
#     return render_template('location.html', result=result, climate=climate, currency=currency, languages=languages, religion=religion, temps=temps)


# DELETE
# @app.route('/<location>')
# def location(city):
#     location_obj = Location(city)
#     climate = location_obj.get_climate()
#     currency = location_obj.get_currency()
#     languages = location_obj.get_languages()
#     religion = location_obj.get_religion()
#     year_temperatures = location_obj.get_year_temperatures()
#     return render_template('location.html', climate=climate, currency=currency, languages=languages, religion=religion, year_temperatures=year_temperatures)


@app.route('/<location>')
def location(city):
    controller = LocationController()
    data = controller.get_location(city)
    if data:
        return render_template('location.html', data=data)
    else:
        return render_template('404.html'), 404


@app.errorhandler(404)
def page_not_found():
    return render_template('404.html'), 404
