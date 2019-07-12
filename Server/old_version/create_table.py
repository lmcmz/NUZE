import json,re
from arbnb_data import city_querys

def read_json_file(filename):
    try:
        with open(filename,'r') as data:
            information = json.load(data)
        data.close()
    except FileNotFoundError:
        information = {}
    return information

def varchar_length(num):
    length = len(str(num))
    if length == 1:
        length = 10
    else:
        zeros = ''
        for i in range(length - 1):
            zeros += '0'
        begin = int(str(num)[0]) + 1
        length = str(begin) + zeros
        length = int(length)
    return length

def host_table_longest_length(information):
    longest_len_id = 0
    longest_detail = 0
    longest_name = 0
    longest_picUrl = 0
    longest_selfIntro = 0
    longest_room_id = 0
    for key in information.keys():
        if len(information[key]) != 6:
            continue
        #print(key)
        key = str(key)
        key_len = len(key)
        name_len = len(information[key]['name'])
        picUrl_len = len(information[key]['picUrl'])
        selfIntro_len = len(information[key]['self_intro'])
        detail_len = 0
        for room in information[key]['room_ids']:
            room_id_len = len(room)
            if room_id_len > longest_room_id:
                longest_room_id = room_id_len
        for detail in information[key]['detail']:
            detail_len += len(detail)
        if key_len > longest_len_id:
            longest_len_id = key_len
        if detail_len > longest_detail:
            longest_detail = detail_len
        if name_len > longest_name:
            longest_name = name_len
        if picUrl_len > longest_picUrl:
            longest_picUrl = picUrl_len
        if selfIntro_len > longest_selfIntro:
            longest_selfIntro = selfIntro_len
        id_len = varchar_length(longest_len_id)
        name_len = varchar_length(longest_name)
        picUrl_len = varchar_length(longest_picUrl)
        detail_len = varchar_length(longest_detail)
        selfIntro_len = varchar_length(longest_selfIntro)
        room_id_len = varchar_length(longest_room_id)
    return id_len,name_len,picUrl_len,detail_len,selfIntro_len,room_id_len


def house_longest_length(information):
    longest_house_id = 0
    longest_name = 0
    longest_picUrls = 0
    longest_bedroom_label = 0
    longest_bathroom_label = 0
    longest_neighborhood = 0
    longest_preview_amenities = 0
    longest_space_type = 0
    longest_host_id = 0
    longest_comment = 0
    longest_user_id = 0
    longest_user_name = 0
    longest_house_des = 0
    for key in information:
        #print(key,len(information[key]))
        if len(information[key]) != 22:
            continue

        house_id_length = len(key)
        if house_id_length > longest_house_id:
            longest_house_id = house_id_length
        name_length = len(information[key][1])
        if name_length > longest_name: 
            longest_name = name_length
        picUrls_len = 0
        for picUrl in information[key][2]:
            len_picUrl = len(picUrl)
            if len_picUrl > picUrls_len:
                picUrls_len = len_picUrl
        if picUrls_len > longest_picUrls:
            longest_picUrls = picUrls_len
        bedroom_lable_len = len(information[key][3])
        if bedroom_lable_len > longest_bedroom_label:
            longest_bedroom_label = bedroom_lable_len
        bathroom_label_len = len(information[key][5])
        if bathroom_label_len >longest_bathroom_label:
            longest_bathroom_label = bathroom_label_len
        if information[key][9] is None :
            neighborhood_len = 0
        else:
            neighborhood_len = len(information[key][9])
        if neighborhood_len > longest_neighborhood:
            longest_neighborhood = neighborhood_len
        preview_amenities_len = len(information[key][10])
        if preview_amenities_len >longest_preview_amenities:
            longest_preview_amenities = preview_amenities_len
        space_type_len = len(information[key][13])
        if space_type_len > longest_space_type:
            longest_space_type = space_type_len
        host_id_len = len(str(information[key][17]))
        if host_id_len > longest_host_id:
            longest_host_id = host_id_len
        house_des_len = len(str(information[key][18]))
        if house_des_len > longest_house_des:
            longest_house_des = house_des_len
        user_ids_len = 0
        user_names_len = 0
        comments_len = 0
        if information[key][19] == -1 :
            #print(key)
            continue
        for user_id in information[key][19].keys():
            user_id_len = len(user_id)
            user_name_len = len(information[key][19][user_id][0])
            comment_len = len(information[key][19][user_id][1])
            if user_id_len > user_ids_len:
                user_ids_len = user_id_len
            if user_name_len > user_names_len:
                user_names_len = user_name_len
            if comment_len > comments_len:
                comments_len = comment_len
        longest_user_id = user_ids_len
        longest_user_name = user_names_len
        longest_comment = comments_len
    return  longest_house_id ,longest_name ,longest_picUrls ,longest_bedroom_label,longest_bathroom_label ,longest_neighborhood ,longest_preview_amenities ,longest_space_type,longest_host_id ,longest_comment ,longest_user_id ,longest_user_name,longest_house_des


def city_house_infro(data_dict):
    
    for city in city_querys:
        file_name = city + '.json'
        city_data = {}
        city_data[city] = read_json_file(file_name)
        mix_dict = {}
        mix_dict.update(data_dict)
        mix_dict.update(city_data)
        data_dict = mix_dict
    return data_dict

def house_infro(data_dict):
    
    for city in city_querys:
        file_name = city + '.json'
        city_data = {}
        city_data = read_json_file(file_name)
        mix_dict = {}
        mix_dict.update(data_dict)
        mix_dict.update(city_data)
        data_dict = mix_dict
    return data_dict

def add_house_infro(data_dict):
    
    for city in city_querys:
        file_name = city + '.json'
        city_data = read_json_file(file_name)
        mix_dict = {}
        mix_dict.update(data_dict)
        mix_dict.update(city_data)
        data_dict = mix_dict
    return data_dict


house_information = add_house_infro({})
no_review = 0
for i in house_information:
    if len(house_information) != 21:
        no_review += 1
print(no_review)

host_information = read_json_file("host.json")
id_len,name_len,picUrl_len,detail_len,selfIntro_len,room_id_len = host_table_longest_length(host_information)
longest_house_id ,longest_name ,longest_picUrls ,longest_bedroom_label,longest_bathroom_label ,longest_neighborhood ,longest_preview_amenities ,longest_space_type,longest_host_id ,longest_comment ,longest_user_id ,longest_user_name,longest_house_des = house_longest_length(house_information)

longest_city_len = 0
for nsw_city in city_querys:
    len_city = len(nsw_city)
    if len_city > longest_city_len:
        longest_city_len = len_city



print(len(host_information))
with open('create_tables.sql','w') as sql:

    #create user table
    print("CREATE TABLE IF NOT EXISTS `user` (",file = sql)
    print("  `user_id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each user',",file = sql)
    print("  `user_email` varchar(200) COMMENT 'unique email ( default : user_id@airbnb.com ) for each user',",file = sql)
    print("  `creat_time` timestamp default current_timestamp(),",file = sql)
    print("  `update_time` timestamp default current_timestamp() on update current_timestamp(),",file = sql)
    print("  `password` varchar(20) DEFAULT '12345678' COMMENT 'default password  12345678 for each user' ",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create client table
    print("CREATE TABLE IF NOT EXISTS `client` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `user_id` INT UNSIGNED  COMMENT 'unique ID for each user',",file = sql)
    print("  `client_id` INT  COMMENT 'unique ID for each client(set by airbnb)',",file = sql)
    print("  `client_name` varchar({}),".format(varchar_length(longest_user_name)),file = sql)
    print("  `details` varchar({}) COMMENT 'brife detail for each client eg.job,lanuages,living place',".format(varchar_length(detail_len)),file = sql)
    print("  `pic_url` varchar({}) COMMENT 'client head portrait picture url',".format(varchar_length(picUrl_len)),file = sql)
    print("  `self_intro` varchar({}) COMMENT 'Self introduction of the host',".format(varchar_length(selfIntro_len)),file = sql)
    print("  `join_in_year` INT UNSIGNED COMMENT 'join in year of the client'",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create host table
    print("CREATE TABLE IF NOT EXISTS `host` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `host_id` INT NOT NULL  COMMENT 'unique ID for each host(set by airbnb)',",file = sql)
    print("  `user_id` INT COMMENT 'unique ID for each user',",file = sql)
    print("  `host_name` varchar({}) ,".format(varchar_length(name_len)),file = sql)
    print("  `details` varchar({}) COMMENT 'brife detail for each host eg.job,lanuages,living place',".format(varchar_length(detail_len)),file = sql)
    print("  `pic_url` varchar({}) COMMENT 'host head portrait picture url',".format(varchar_length(picUrl_len)),file = sql)
    print("  `self_intro` varchar({}) COMMENT 'Self introduction of the host',".format(varchar_length(selfIntro_len)),file = sql)
    print("  `join_in_year` INT UNSIGNED COMMENT 'join in year of the host'",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create host to rooms table
    print('#host_to_houses table store houses under the host name ',file = sql)
    print("CREATE TABLE IF NOT EXISTS `host_to_houses` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `host_id` INT NOT NULL  COMMENT 'unique ID for each host(set by airbnb)',",file = sql)
    print("  `house_id` INT NOT NULL  COMMENT 'unique ID for each house(set by airbnb)' ",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)


    #create house table
    print("CREATE TABLE IF NOT EXISTS `house` (",file = sql)
    print("  `city` varchar({}),".format(varchar_length(longest_city_len)),file = sql)
    print("  `house_id` INT NOT NULL KEY COMMENT 'unique ID for each house(set by airbnb)',",file = sql)
    print("  `host_id` INT COMMENT 'unique ID for the house host(set by airbnb)',".format(varchar_length(longest_host_id)),file = sql)
    print("  `lat` double COMMENT 'house latitude',",file = sql)
    print("  `lng` double COMMENT 'house longtitude',",file = sql)
    print("  `brife_infor` varchar({}) COMMENT 'house brife information',".format(varchar_length(longest_name)),file = sql)
    print("  `description` varchar({}) COMMENT 'house description',".format(varchar_length(longest_house_des)),file = sql)
    print("  `bedrooms` INT COMMENT 'how many bedrooms of the house(0 is studio)',",file = sql)
    print("  `bathrooms` INT COMMENT 'how many bathrooms of the house',",file = sql)
    print("  `beds` INT COMMENT 'how many beds of the house',",file = sql)
    print("  `guest_capacity` INT COMMENT 'how many guests the house can held',",file = sql)
    print("  `neighborhood` varchar({}) COMMENT 'the region of the house eg.CBD ',".format(varchar_length(longest_neighborhood)),file = sql)
    print("  `preview_amenities` varchar({}) COMMENT 'preview amenities of the house eg.have wifi,kitchen',".format(varchar_length(longest_preview_amenities)),file = sql)
    print("  `reviews_count` INT COMMENT 'how many reviews of the house',",file = sql)
    print("  `star_rating` float,",file = sql)
    print("  `space_type` varchar({}) COMMENT 'eg.entire apartment,private room',".format(varchar_length(longest_space_type)),file = sql)
    print("  `price` DECIMAL(8,2) ,",file = sql)
    print("  `clean_fee` DECIMAL(8,2)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house picUrls table
    print('#house_pic_urls table store all url of pictures of the house',file = sql)
    print("CREATE TABLE IF NOT EXISTS `house_pic_urls` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `house_id` INT NOT NULL COMMENT 'unique ID for each house(set by airbnb)',",file = sql)
    print("  `pic_url` varchar({})".format(varchar_length(longest_picUrls)),file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house review table
    print("CREATE TABLE IF NOT EXISTS `house_review` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `house_id` INT NOT NULL COMMENT 'unique ID for each house(set by airbnb)',",file = sql)
    print("  `client_id` INT COMMENT 'unique ID for client(set by airbnb) who write the comment',",file = sql)
    print("  `host_id` INT NOT NULL COMMENT 'unique ID for host who owe the house',",file = sql)
    print("  `comment` varchar({})".format(varchar_length(longest_comment)),file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house calender table
    print("CREATE TABLE IF NOT EXISTS `house_calender` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `house_id` INT NOT NULL  COMMENT 'unique ID for each house(set by airbnb)',",file = sql)
    print("  `date` date,",file = sql)
    print("  `price` DECIMAL(8,2),",file = sql)
    print("  `availablity` varchar(10)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create city table
    print("CREATE TABLE IF NOT EXISTS `city` (",file = sql)
    print("  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',",file = sql)
    print("  `city` varchar({})".format(varchar_length(longest_city_len)),file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

sql.close()

houses_information = house_infro({})

house_ids = houses_information.keys()
with open('database.sql','w') as sql:
    for nsw_city in city_querys:
        print("INSERT IGNORE INTO `city` ( `city`) VALUES (\"{}\");".format(nsw_city),file = sql)
    #print(len(host_information))
    for host_id in host_information:
        if len(host_information[host_id]) != 6:
            continue
        name = host_information[host_id]['name']
        picUrl = host_information[host_id]['picUrl']
        details = ''
        for detail in host_information[host_id]['detail']:
            detail += '.'
            details += detail
        if '&' in details:
            details = re.sub(r'(&.*?) ','',details)
            
        self_intro = host_information[host_id]['self_intro']
        if '&' in self_intro:
            self_intro = re.sub(r'(&.*?) ','',self_intro)
            #print(self_intro)
        if '\"' in self_intro:
            self_intro = re.sub(r'\"','\'',self_intro)
            #print(self_intro)
        self_intro = self_intro
        join_in_year = int(host_information[host_id]['join_in_date'])
        print ("INSERT IGNORE INTO `user`() VALUES ();",file = sql) 

        print ("UPDATE `user` SET `user_email` = concat(last_insert_id() ,'@airbnb.com') WHERE `user_id`= last_insert_id();",file = sql) 
        
        print("INSERT IGNORE INTO `host` ( `host_id`,`user_id`,`host_name`,`details`,`pic_url`,`self_intro`,`join_in_year` ) VALUES ",file = sql)
        print("({},last_insert_id(),\"{}\",\"{}\",\"{}\",\"{}\",{});".format(int(host_id),name,details,picUrl,self_intro,join_in_year),file = sql)

        # room_id_num = len(host_information[host_id]['room_ids'])
        # if room_id_num == 0:
        #     continue

        # print(host_information[host_id]['room_ids'])
        # rooms = host_information[host_id]['room_ids']
        # #print(nsw_city,rooms)
        
        # for room_id in rooms:
        #     if room_id not in house_ids:
        #         #print(host_id,room_id)
        #         host_information[host_id]['room_ids'].remove(room_id)

        # print(host_information[host_id]['room_ids'])
        # #print(len(host_information[host_id]['room_ids']))
        # room_id_num = len(host_information[host_id]['room_ids'])
        # #print(host_information[host_id]['room_ids'])
        # if room_id_num == 1:
        #     print("INSERT INTO `host_to_houses` (`host_id`, `house_id`) VALUES ",file = sql)
        #     print("({},{});".format(int(host_id),int(host_information[host_id]['room_ids'][0])),file = sql)
        # elif room_id_num == 0:
        #     pass
        # else:
        #     print("INSERT INTO `host_to_houses` (`host_id`, `house_id`) VALUES ",file = sql)
        #     for index in range(room_id_num - 1):
        #         print("({},{}),".format(int(host_id),int(host_information[host_id]['room_ids'][index])),file = sql)
        #     #print(host_id)
        #     print("({},{});".format(int(host_id),int(host_information[host_id]['room_ids'][-1])),file = sql)

sql.close()

house_information = city_house_infro({})

clients = set()
with open('database.sql','a') as sql:
    #print(len(house_information))

    for city in house_information:

        for house in house_information[city]:
            if len(house_information[city][house]) != 22:
                continue
            house_id = int(house)
            host_id = house_information[city][house][17]
            lat = house_information[city][house][0][0]
            lng = house_information[city][house][0][1]
            brife_infor = house_information[city][house][1]
            if '&' in brife_infor:
                brife_infor = re.sub(r'(&.*?) ','',brife_infor)
                #print(self_intro)
            if '\"' in brife_infor:
                brife_infor = re.sub(r'\"','\'',brife_infor)
                #print(brife_infor)
            description = house_information[city][house][18]
            if '&' in description:
                description = re.sub(r'(&.*?) ','',description)
                #print(self_intro)
            if '\"' in description:
                description = re.sub(r'\"','\'',description)
                #print(description)
            bedrooms = int(house_information[city][house][4])
            #print(city,house_id)
            if house_information[city][house][6] is None:
                bathrooms = 0
            else:
                bathrooms = int(house_information[city][house][6])
            if house_information[city][house][7] is None:
                beds = 0
            else:
                beds = int(house_information[city][house][7])
            guest_capacity = int(house_information[city][house][8])
            neighborhood = house_information[city][house][9]
            if neighborhood is None:
                neighborhood = ""
            preview_amenities = house_information[city][house][10]
            if preview_amenities is None:
                preview_amenities = ""
            reviews_count = house_information[city][house][11]
            star_rating = house_information[city][house][12]
            if star_rating is None:
                star_rating = -1
            space_type = house_information[city][house][13]
            price = house_information[city][house][14]
            if len(house_information[city][house]) == 21:
                clean_fee = 0
            else:
                clean_fee = house_information[city][house][-1]
                if clean_fee == -1:
                    clean_fee = 0
            print("INSERT IGNORE INTO `house` (`city`,`house_id`,`host_id` ,`lat` ,`lng` ,`brife_infor`,`description`,`bedrooms`,`bathrooms`,`beds`,`guest_capacity`,`neighborhood` ,`preview_amenities`,`reviews_count` ,`star_rating` ,`space_type` ,`price` ,`clean_fee` ) VALUES ",file = sql)
            print("(\"{}\",{},{},{},{},\"{}\",\"{}\",{},{},{},{},\"{}\",\"{}\",{},{},\"{}\",{},{});".format(city,house_id,host_id,lat,lng,brife_infor,description,bedrooms,bathrooms,beds,guest_capacity,neighborhood,preview_amenities,reviews_count,star_rating,space_type,price,clean_fee),file = sql)

            print("INSERT INTO `host_to_houses` (`host_id`, `house_id`) VALUES ",file = sql)
            print("({},{});".format(int(host_id),int(house_id)),file = sql)

            print("INSERT IGNORE INTO `house_pic_urls` (`house_id`,`pic_url`) VALUES ",file = sql)
            if len(house_information[city][house][2]) > 1:
                for pic_index in range(len(house_information[city][house][2]) -1):
                    print("({},\"{}\"),".format(house_id,house_information[city][house][2][pic_index]),file = sql)
                print("({},\"{}\");".format(house_id,house_information[city][house][2][pic_index + 1 ]),file = sql)
            else:
                print("({},\"{}\");".format(house_id,house_information[city][house][2][0]),file = sql)
                
            
            if int(reviews_count) > 0:
                if house_information[city][house][19] != -1:

                #print("INSERT IGNORE INTO `house_review` (`house_id` ,`client_id` ,`comment`) VALUES ",file = sql)
                    for client in house_information[city][house][19]:
                        client_id = int(client)
                        comment = house_information[city][house][19][client][1]
                        if '&' in comment:
                            comment = re.sub(r'(&.*?) ','',comment)
                            #print(self_intro)
                        if '\"' in comment:
                            comment = re.sub(r'\"','\'',comment)
                            #print(description)
                        client_name = house_information[city][house][19][client][0]
                        print("INSERT IGNORE INTO `house_review` (`house_id` ,`client_id` ,`comment`,`host_id`) VALUES ",file = sql)
                        print("({},{},\"{}\",{});".format(house_id,client_id,comment,host_id),file = sql)
                    # if client not in clients:                                
                    #     print ("INSERT IGNORE INTO `user`() VALUES ();",file = sql) 
                    #     print("INSERT IGNORE INTO `client` ( `user_id`,`client_id`,`client_name`) VALUES ",file = sql)
                    #     print("(last_insert_id(),{},\"{}\");".format(client_id,client_name),file = sql)
                    #     clients.add(client)
            #if house == "27438223":
                #print(house_information[city][house][-2])
            if house_information[city][house][-2]!= -1 and len(house_information[city][house][-2]) != 0:
                print("INSERT IGNORE INTO `house_calender` (`house_id` ,`date` ,`price`,`availablity`) VALUES ",file = sql)
                #print(house_information[city][house][20])
                for month in house_information[city][house][-2]:
                    #print(month)
                    for date in house_information[city][house][-2][month]:
                        if date != "2019-09-30":
                            print("({},\"{}\",{},\"{}\"),".format(house_id,date,house_information[city][house][-2][month][date][1],house_information[city][house][-2][month][date][0]),file = sql)
                        else:
                            print("({},\"{}\",{},\"{}\");".format(house_id,date,house_information[city][house][-2][month]["2019-09-30"][1],house_information[city][house][-2][month]["2019-09-30"][0]),file = sql)



        


sql.close()

clients = set()
with open('database.sql','a') as sql:
    clients_information = read_json_file('guest.json')
    for client_id in clients_information:
        client_name = clients_information[client_id]['name']
        picUrl = clients_information[client_id]['picUrl']
        details = ''
        for detail in clients_information[client_id]['detail']:
            detail += '.'
            details += detail
        if '&' in details:
            details = re.sub(r'(&.*?) ','',details)
            
        self_intro = clients_information[client_id]['self_intro']
        if '&' in self_intro:
            self_intro = re.sub(r'(&.*?) ','',self_intro)
            #print(self_intro)
        if '\"' in self_intro:
            self_intro = re.sub(r'\"','\'',self_intro)
            #print(self_intro)
        self_intro = self_intro
        join_in_year = clients_information[client_id]['join_in_date']

        if client_id not in clients:                                
            
            print ("INSERT IGNORE INTO `user`() VALUES ();",file = sql) 
            print ("UPDATE `user` SET `user_email` = concat(last_insert_id() ,'@airbnb.com') WHERE `user_id`= last_insert_id();",file = sql) 

            print("INSERT IGNORE INTO `client` ( `client_id`,`user_id`,`client_name`,`details`,`pic_url`,`self_intro`,`join_in_year` ) VALUES ",file = sql)
            print("({},last_insert_id(),\"{}\",\"{}\",\"{}\",\"{}\",{});".format(int(client_id),client_name,details,picUrl,self_intro,int(join_in_year)),file = sql)
            clients.add(client_id)

sql.close()

with open('checkdata.sql','a') as sql:
    for nsw_city in city_querys:
        print ("select count(*) from `house` where city=\"{}\";".format(nsw_city),file = sql) 
    print ("select count(*) from `user`;",file = sql) 
    print ("select count(*) from `client`;",file = sql) 
    print ("select count(*) from `host`;",file = sql) 
sql.close()