from model.location_model import Location
from db.location_db_model import LocationDbModel


class LocationController:
    def __init__(self):
        self.model = LocationDbModel()

    def get_location(self, city):
        location_data = self.model.get_location_data(city)
        if location_data:
            year_temperatures = {
                'dec_feb': location_data['dec_feb'],
                'mar_may': location_data['mar_may'],
                'jun_aug': location_data['jun_aug'],
                'sep_nov': location_data['sep_nov']
            }
            return Location(
                city=city,
                climate=location_data['climate'],
                currency=location_data['currency'],
                languages=location_data['languages'],
                religion=location_data['religion'],
                year_temperatures=year_temperatures
            )
        else:
            return None
