import pymysql


class Location:
    def __init__(self, city):
        self.city = city
        self.connection = pymysql.connect(
            host='localhost',
            user='username',
            password='password',
            db='database_name',
            charset='utf8mb4',
            cursorclass=pymysql.cursors.DictCursor
        )

    def get_climate(self):
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT climate FROM locations WHERE city = %s', (self.city,))
            result = cursor.fetchone()
        return result['climate']

    def get_currency(self):
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT currency FROM locations WHERE city = %s', (self.city,))
            result = cursor.fetchone()
        return result['currency']

    def get_languages(self):
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT languages FROM locations WHERE city = %s', (self.city,))
            result = cursor.fetchone()
        return result['languages']

    def get_religion(self):
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT religion FROM locations WHERE city = %s', (self.city,))
            result = cursor.fetchone()
        return result['religion']

    def get_year_temperatures(self):
        with self.connection.cursor() as cursor:
            cursor.execute('SELECT dec_feb, mar_may, jun_aug, sep_nov FROM locations WHERE city = %s', (self.city,))
            result = cursor.fetchone()
        return result
