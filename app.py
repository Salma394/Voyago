from application import app


if __name__ == "__main__":
    app.run(debug=True)

app.config['SECRET_KEY'] = 'YOUR_SECRET_KEY'




