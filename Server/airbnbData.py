import airbnb
import DB

api = airbnb.Api(randomize=True)

debug_list = ['Syndey']

city_list = ['Sydney', 'Newcastle', 'CentralCoast', 'Wollongong', 'Maitland', 'TweedHeads', 
			'WaggaWagga', 'Alburypart', 'CoffsHarbour', 'PortMacquarie', 
			'Tamworth', 'Queanbeyanpart', 'Orange', 'Dubbo', 'Bathurst', 
			'BlueMountains', 'Nowra-Bomaderry', 'Lismore', 'Goulburn', 'Cessnock', 'Armidale', 
			'Bowral-Mittagong', 'Forster-Tuncurry', 'BrokenHill', 'Taree', 'Griffith', 'Morisset-Cooranbong', 
			'Grafton', 'Ballina', 'Singleton', 'RaymondTerrace', 'KurriKurri', 'Kiama', 'Ulladulla', 
			'BatemansBay', 'Lithgow', 'NelsonBay', 'Muswellbrook', 'Kempsey', 'StGeorgesBasin']

def grabCity(city, offset=0):
	return api.get_homes(city, offset=offset, items_per_grid=50) # limit 306

def review(house_id, offset=0, limit=20):
	return api.get_reviews(house_id, offset=0, limit=20)

def insertData(city, offset):
	data = grabCity(city, offset=offset)
	listings = data['explore_tabs'][0]['sections'][-1]['listings']
	for listing in listings:
		house = listing['listing']
		lat = house['lat']
		lng = house['lng']
		picture_url = house['picture_url']
		picture_urls = ", ".join(house['picture_urls']) # list
		name = house['name']
		person_capacity = house['person_capacity']
		suburb = house['city']
		city_name = city
		public_address = house['public_address']
		bathrooms = house.get('bathrooms', -1)
		beds = house.get('beds', -1)
		id = house['id']
		preview_amenity_names = ", ".join(house['preview_amenity_names']) # list
		reviews_count = house['reviews_count']
		
		# rating
#			star_rating = house['star_rating']
		avg_rating = house['avg_rating']
		
		property_type_id = house.get('property_type_id', -1)
		room_and_property_type = house.get('room_and_property_type', "")
		
		# host
		host_id = house['user']['id']
		host_thumbnail_url = house['host_thumbnail_url']
		
		#price 
		price = listing['pricing_quote']['rate']['amount'] * 1.44 # convert USD to AUD
		
		
		DB.insert_house(name, city_name, lat, lng, picture_url, picture_urls, 
						person_capacity, suburb, public_address, bathrooms, 
						beds, id, preview_amenity_names, reviews_count, avg_rating, 
						property_type_id, room_and_property_type, 
						host_id, host_thumbnail_url, price)
						
						

def insert_review():
	(result) = DB.fetch_table_column("PROPERTY", "id")
	for id in result:
		house_id = id[0]
		review_data = review(house_id)
		for rev in review_data['reviews']:
			house_id = house_id
			id = rev['id'] 
			author_name = rev['author']['first_name']
			author_id = rev['author']['id']
			author_avatar = rev['author']['picture_url']
			comments = str(rev['comments'])
			created_at = rev['created_at']
			rating = rev['rating']
			
			DB.insert_review(id, author_name, author_id, author_avatar, comments, created_at, rating, house_id)
		

if __name__ == "__main__":	
	print("Airbnb Data")
#	insert_review()
#	for city in city_list: # every time grab 50
#		for offset in [0, 50, 100, 150]:
#			insertData(city, offset)
