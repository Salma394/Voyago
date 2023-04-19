from model.location_model import Location
from db.location_db_model import LocationDbModel


class LocationController:
    def __init__(self):
        self.model = LocationDbModel()

    def get_location(self, city):
        location_data = self.model.get_location_data(city)
        if location_data:
            # # fetch main image data (single)
            # main_image_data = self.model.get_location_image_data(city, 'main')
            # main_image_path_data = main_image_data[0]['image_path'] if main_image_data else None
            # main_image_alt = main_image_data[0]['image_alt'] if main_image_data else None
            #
            # # fetch attraction image data (multiple)
            # attraction_image_data = self.model.get_location_image_data(city, 'activity')
            # attraction_images = [(img['image_path'], img['image_alt']) for img in
            #                      attraction_image_data] if attraction_image_data else []
            #
            # # fetch accommodation image data (multiple)
            # accommodation_image_data = self.model.get_location_image_data(city, 'accommodation')
            # accommodation_images = [(img['image_path'], img['image_alt']) for img in
            #                         accommodation_image_data] if accommodation_image_data else []

            images = self.model.get_location_image_data(city)
            temperatures = self.model.get_location_temperatures(city)
            print(temperatures)

            return Location(
                city=city,
                country=location_data['country'],
                climate=location_data['climate'],
                location_type=location_data['location_type'],
                currency=location_data['currency'],
                language=location_data['language'],
                religion=location_data['religion'],
                transport=location_data['transport'],
                images=images,
                temperatures=temperatures,
                description_text=location_data['description_text'],
                activity_description_text=location_data['activity_description_text'],
                traveller_tip_text=location_data['traveller_tip_text']
            )
        else:
            return None
