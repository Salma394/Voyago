import pymysql


class LocationDbModel:
    def __init__(self):
        self.conn = pymysql.connect(
            host='localhost',
            port=3306,
            user='root',
            password='password',
            database='voyago',
            cursorclass=pymysql.cursors.DictCursor
        )

    def get_location_data(self, city):
        with self.conn.cursor() as cursor:
            query = '''
            SELECT
                l.city,
                c.country,
                ht.type location_type,
                cl.climate,
                cu.currency,
                la.language,
                r.religion,
                t.transport,
                l.description_text,
                l.activity_description_text,
                l.traveller_tip_text
            
            FROM location l
                INNER JOIN country c ON l.country_id = c.country_id
                INNER JOIN climate cl ON l.climate_id = cl.climate_id
                INNER JOIN currency cu ON l.currency_id = cu.currency_id
                INNER JOIN religion r ON l.religion_id = r.religion_id
                INNER JOIN language la ON l.language_id = la.language_id
                INNER JOIN type ht ON l.type_id = ht.type_id
                INNER JOIN transport t ON l.transport_id = t.transport_id
                
            WHERE l.city = %s
            '''
            cursor.execute(query, city)
            return cursor.fetchone()

    def get_location_image_data(self, city):
        with self.conn.cursor() as cursor:
            query = '''
            SELECT i.image_path, i.image_alt, ic.image_category
            FROM image AS i
            INNER JOIN location AS l ON l.city_id = i.city_id
            INNER JOIN image_category AS ic ON ic.image_category_id = i.image_category_id
            
            WHERE l.city = %s;
            '''
            cursor.execute(query, city)
            return self.map_images(cursor.fetchall())

    def __del__(self):
        self.conn.close()

    def map_images(self, array):
        result = {}

        for item in array:
            category = item["image_category"].lower()
            if category not in result:
                result[category] = []

            result[category].append({"image_path": item["image_path"], "image_alt": item["image_alt"]})

        print(result)
        return result

