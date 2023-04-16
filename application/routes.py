from
# from application.data_provider_service import DataProviderService
from flask import render_template, request
from application import app
from application.forms import BasicForm


@app.route('/thursday')
def thursday():
    return render_template('thursday.html')


@app.route('/practice')
def practice():
    return render_template('practice.html', title='Practice')

@app.route('/about')
def about():
    return render_template('about.html', title='About')


@app.route('/register', methods=['GET', 'POST'])
def register():
    error = ""

    form = BasicForm()

    if request.method == 'POST':
        first_name = form.first_name.data
        last_name = form.last_name.data

        if len(first_name) == 0 or len(last_name) == 0:
            error = "Please supply both first and last name"
        else:
            # return 'Thank you!'
            new_person_id = DATA_PROVIDER.add_person(first_name, last_name)
            success = 'Person with ID' + str(new_person_id) + ' was created. Thank you!'
            return render_template('success.html', success_message=success)

    return render_template('person.html', title="Registration", form=form, message=error)

@app.route('/people', methods=['GET'])
def get_people():
    all_people = DATA_PROVIDER.get_people()
    return render_template('people.html', title="People", people=all_people)