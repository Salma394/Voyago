import pymysql


class LocationDbModel:
    def __init__(self):
        self.connection = pymysql.connect(
            host='localhost',
            port=3306,
            user='root',
            password='password',
            database='voyago',
            cursorclass=pymysql.cursors.DictCursor
        )

    def get_location_data(self, city):
        with self.connection.cursor() as cursor:
            cursor.execute('''
                SELECT climate, currency, languages, religion, dec_feb, mar_may, jun_aug, sep_nov
                FROM locations
                WHERE city = %s
            ''', (city,))
            result = cursor.fetchone()
        return result
