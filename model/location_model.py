class Location:
    def __init__(self, city, country, language, location_type, transport, currency, climate, religion, temperatures,
                 images, description_text, activity_description_text, traveller_tip_text):

        self.city = city.capitalize()
        self.country = country.capitalize()
        self.language = language.capitalize()
        self.location_type = location_type.capitalize()
        self.transport = transport.capitalize()
        self.currency = currency.UPPER()
        self.climate = climate.capitalize()
        self.religion = religion.capitalize()
        self.temperatures = temperatures
        self.images = images
        self.description_text = description_text
        self.activity_description_text = activity_description_text
        self.traveller_tip_text = traveller_tip_text
