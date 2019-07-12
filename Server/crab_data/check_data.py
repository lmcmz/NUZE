from arbnb_data import read_json_file,city_querys
import time,random


def check_city_house():

        for i in city_querys:

                infro = read_json_file('data/' + i + '.json')
                full = 1
                for house in infro:
                        if house != 'house_count':
                                if len(infro[house]) > 18:
                                        full += 1

                print(i,len(infro),full)

check_city_house()


