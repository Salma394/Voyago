class Location:
    def __init__(self, city, country, language, location_type, transport, currency, climate, religion, images,
                 description_text, activity_description_text, traveller_tip_text):

        self.city = city
        self.country = country
        self.language = language
        self.location_type = location_type
        self.transport = transport
        self.currency = currency
        self.climate = climate
        self.religion = religion
        self.quarterly_temperature = []
        self.images = images
        self.description_text = description_text
        self.activity_description_text = activity_description_text
        self.traveller_tip_text = traveller_tip_text
