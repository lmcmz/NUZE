import pymysql

db = pymysql.connect("localhost", "root","", "airbnb" )
cursor = db.cursor()

def insert_house(name, city, lat, lng, picture_url, 
				picture_urls, person_capacity, 
				suburb, public_address, bathrooms, 
				beds, id, preview_amenity_names, 
				reviews_count, 
				#star_rating, 
				avg_rating, property_type_id, 
				room_and_property_type, host_id, 
				host_thumbnail_url, price):
	try:
		sql = "INSERT IGNORE INTO PROPERTY(name, city,lat, lng, picture_url, \
						picture_urls, person_capacity, \
						suburb, public_address, bathrooms, \
						beds, id, preview_amenity_names, \
						reviews_count, \
						avg_rating, property_type_id, \
						room_and_property_type, host_id, \
						host_thumbnail_url, price) VALUES ('%s', '%s', '%s', '%s', '%s', \
														  '%s', '%s', '%s', '%s', \
														  '%s', '%s', '%s', '%s', \
														  '%s', '%s', '%s', '%s', \
														  '%s', '%s', '%s')" % (name, city, lat, lng, picture_url, 
										picture_urls, person_capacity, 
										suburb, public_address, bathrooms, 
										beds, id, preview_amenity_names, 
										reviews_count, 
										#star_rating, 
										avg_rating, property_type_id, 
										room_and_property_type, host_id, 
										host_thumbnail_url, price)
		
		cursor.execute(sql)
		db.commit()
		print("1")
	except:
		db.rollback()
		print("0")

def fetch_table(table_name):
	sql = "SELECT * FROM {}".format(table_name)
	cursor.execute(sql)
	results = cursor.fetchall()
	return results
	
def fetch_table_column(table_name, column):
	sql = "SELECT {} FROM {}".format(column, table_name)
	cursor.execute(sql)
	results = cursor.fetchall()
	return results

def drop_table(table_name):
	sql = "DROP TABLE {}".format(table_name)
	cursor.execute(sql)
	results = cursor.fetchall()
	return results

def insert_city(insert_city):
	for index, city in enumerate(city_list):
		sql = "INSERT IGNORE INTO CITY(id, name) \
					VALUES ('%s', '%s')" % (index, city)
		cursor.execute(sql)
		db.commit()
		
def insert_host(id, name, email, avatar, password, address):
	sql = "INSERT IGNORE INTO HOST(id, name, email, avatar, password, address) VALUES ('%s', '%s', '%s', '%s', '%s', '%s')" % (id, name, email, avatar, password, address)
	cursor.execute(sql)
	db.commit()
	
	
def insert_client(id, host_id, name, email, avatar, password, address):
	sql = "INSERT IGNORE INTO CLIENT(id, host_id, name, email, avatar, password, address) VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s')" % (id, host_id, name, email, avatar, password, address)
	cursor.execute(sql)
	db.commit()
	

def insert_review(id, author_name, author_id, author_avatar, comments, created_at, rating, house_id):
	try:
		sql = "INSERT IGNORE INTO REVIEW(id, author_name, author_id, author_avatar, comments, created_at, rating, house_id) VALUES \
			  ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')" % (id, author_name, author_id, author_avatar, comments, created_at, rating, house_id)
		cursor.execute(sql)
		db.commit()
		print("1")
	except:
		db.rollback()
		print("0")
	
if __name__ == "__main__":	
	print("NUZE DataBase")