import pymysql
from passlib.hash import sha256_crypt
from flask import session

class DataProviderService:
    def __init__(self):
        """
        :creates: a new instance of connection and cursor
        """
        host = 'localhost'
        port = 3306
        user = 'root'
        password = 'password'
        database = 'Voyago'
        self.conn = pymysql.connect(host=host, port=port, user=user, password=password, db=database)
        self.cursor = self.conn.cursor()

    def add_person(self, firstname, lastname,email):
        sql = """insert into marketing (firstname, lastname,email) values (%s, %s, %s)"""
        input_values = (firstname, lastname,email)
        try:
            self.cursor.execute(sql, input_values)
            self.conn.commit()
        except Exception as exc:
            print(exc)
            self.conn.rollback()
            print("rolled back")
        sql_new_person_id = "select id from marketing order by id desc limit 1"
        self.cursor.execute(sql_new_person_id)
        new_person = self.cursor.fetchone()
        return new_person[0]

    # def login(self, email, password):
    #     successful_login = False
    #     sql = "SELECT * FROM users WHERE email = %s AND password = %s"
    #     input_values = (email, password)
    #     self.cursor.execute(sql, input_values)
    #     user = self.cursor.fetchone()
    #     if user:
    #         session['email'] = user[1]
    #         successful_login = True
    #     return successful_login

    def login(self, email, password):
        sql = "SELECT password FROM user WHERE email = %s"
        input_values = (email,)
        self.cursor.execute(sql, input_values)
        result = self.cursor.fetchone()
        if result:
            hashed_password = result[0]
            if sha256_crypt.verify(password, hashed_password):
                return True, "Login successful!"
            else:
                return False, "Incorrect password"
        else:
            return False, "User not found"

    def logout(self):
        session.pop('user_id', None)
        session.pop('user_email', None)
        session.pop('user_name', None)
        return True, 'Logout successful'

    def add_user(self, firstname, lastname, email, password):
        sql = """INSERT INTO user (firstname, lastname, email, password) VALUES (%s, %s, %s, %s) ON DUPLICATE KEY UPDATE firstname=VALUES(firstname), lastname=VALUES(lastname), password=VALUES(password)"""
        input_values = (firstname, lastname, email, password)
        try:
            self.cursor.execute(sql, input_values)
            self.conn.commit()
        except Exception as exc:
            print(exc)
            self.conn.rollback()
            print("rolled back")
        sql_get_user_id = "SELECT id FROM user WHERE email = %s"
        self.cursor.execute(sql_get_user_id, (email,))
        user_id = self.cursor.fetchone()[0]
        return user_id

    def add_query(self,name,email,subject,message):
        sql = """insert into contact_us (name,email,subject,message) values (%s, %s, %s,%s)"""
        input_values = (name, email, subject, message)
        try:
            self.cursor.execute(sql, input_values)
            self.conn.commit()
        except Exception as exc:
            print(exc)
            self.conn.rollback()
            print("rolled back")
        sql_new_query = "select id from contact_us order by id desc limit 1"
        self.cursor.execute(sql_new_query)
        new_query = self.cursor.fetchone()
        return new_query[0]


