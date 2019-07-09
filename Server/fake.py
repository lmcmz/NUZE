#!/usr/bin/python
from faker import Faker
import DB

fake = Faker('en_AU')

def fake_all_host():
	(result) = DB.fetch_table_column("PROPERTY", "host_id, host_thumbnail_url")
	for id, avatar in result:
		name = fake.name()
		email = fake.email()
		password = fake.password()
		address = fake.address()
		
		DB.insert_host(id, name, email, avatar, password, address)

def fake_all_client(amount):
	for id in range(amount):
		name = fake.name()
		email = fake.email()
		password = fake.password()
		address = fake.address()
		avatar = "https://i.pravatar.cc/550?u="+str(id)
		
		DB.insert_client(id, -1, name, email, avatar, password, address)
		
if __name__ == "__main__":
#	fake_all_host()
	fake_all_client(10)