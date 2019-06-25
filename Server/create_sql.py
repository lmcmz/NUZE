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
    for key in information:
        #print(key,len(information[key]))

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
    return  longest_house_id ,longest_name ,longest_picUrls ,longest_bedroom_label,longest_bathroom_label ,longest_neighborhood ,longest_preview_amenities ,longest_space_type,longest_host_id ,longest_comment ,longest_user_id ,longest_user_name 


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
host_information = read_json_file("host.json")
id_len,name_len,picUrl_len,detail_len,selfIntro_len,room_id_len = host_table_longest_length(host_information)
longest_house_id ,longest_name ,longest_picUrls ,longest_bedroom_label,longest_bathroom_label ,longest_neighborhood ,longest_preview_amenities ,longest_space_type,longest_host_id ,longest_comment ,longest_user_id ,longest_user_name = house_longest_length(house_information)

print(len(host_information))
with open('database.sql','w') as sql:

    #create host table
    print("CREATE TABLE IF NOT EXISTS `host` (",file = sql)
    print("  `id` varchar({}) NOT NULL KEY,".format(varchar_length(id_len)),file = sql)
    print("  `name` varchar({}) ,".format(varchar_length(name_len)),file = sql)
    print("  `details` varchar({}),".format(varchar_length(detail_len)),file = sql)
    print("  `picUrl` varchar({}),".format(varchar_length(picUrl_len)),file = sql)
    print("  `self_intro` varchar({}),".format(varchar_length(selfIntro_len)),file = sql)
    print("  `password` varchar(8) DEFAULT '12345678'",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create host to rooms table
    print("CREATE TABLE IF NOT EXISTS `host_to_room` (",file = sql)
    print("  `host_id` varchar({}) NOT NULL,".format(varchar_length(id_len)),file = sql)
    print("  `room_id` varchar({}) NOT NULL,".format(varchar_length(room_id_len)),file = sql)
    print("  PRIMARY KEY (`host_id`,`room_id`)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)


    #create house table
    print("CREATE TABLE IF NOT EXISTS `house` (",file = sql)
    print("  `id` varchar({}) NOT NULL KEY,".format(varchar_length(longest_house_id)),file = sql)
    print("  `lat` double,",file = sql)
    print("  `lng` double,",file = sql)
    print("  `description` varchar({}),".format(varchar_length(longest_name)),file = sql)
    print("  `bedroom_label` varchar({}) ,".format(varchar_length(longest_bedroom_label)),file = sql)
    print("  `bathroom_label` varchar({}) ,".format(varchar_length(longest_bathroom_label)),file = sql)
    print("  `bedrooms` INT,",file = sql)
    print("  `bathrooms` float,",file = sql)
    print("  `beds` INT,",file = sql)
    print("  `guest_capacity` INT,",file = sql)
    print("  `neighborhood` varchar({}),".format(varchar_length(longest_neighborhood)),file = sql)
    print("  `preview_amenities` varchar({}),".format(varchar_length(longest_preview_amenities)),file = sql)
    print("  `reviews_count` INT,",file = sql)
    print("  `star_rating` float,",file = sql)
    print("  `space_type` varchar({}),".format(varchar_length(longest_space_type)),file = sql)
    print("  `price` float,",file = sql)
    print("  `host_id` varchar({}),".format(varchar_length(longest_host_id)),file = sql)
    print("  `clean_fee` float,",file = sql)
    print("  `password` varchar(8) DEFAULT '12345678'",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house picUrls table
    print("CREATE TABLE IF NOT EXISTS `house_picUrls` (",file = sql)
    print("  `id` varchar({}) NOT NULL,".format(varchar_length(longest_house_id)),file = sql)
    print("  `picUrl` varchar({}),".format(varchar_length(longest_picUrls)),file = sql)
    print("  PRIMARY KEY (`id`,`picUrl`)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house review table
    print("CREATE TABLE IF NOT EXISTS `house_review` (",file = sql)
    print("  `house_id` varchar({}),".format(varchar_length(longest_house_id)),file = sql)
    print("  `user_id` varchar({}),".format(varchar_length(longest_user_id)),file = sql)
    print("  `user_name` varchar({}),".format(varchar_length(longest_user_name)),file = sql)
    print("  `comment` varchar({}),".format(varchar_length(longest_comment)),file = sql)
    print("  PRIMARY KEY (`house_id`,`user_id`)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

    #create house calender table
    print("CREATE TABLE IF NOT EXISTS `house_calender` (",file = sql)
    print("  `house_id` varchar({}),".format(varchar_length(longest_house_id)),file = sql)
    print("  `date` date,",file = sql)
    print("  `price` float,",file = sql)
    print("  `available` varchar(10),",file = sql)
    print("  PRIMARY KEY (`house_id`,`date`)",file = sql)
    print(") DEFAULT CHARSET=utf8mb4;",file = sql)
    print('\n',file = sql)

sql.close()

with open('database.sql','a') as sql:
    i = 0
    #print(len(host_information))
    for host_id in host_information:
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
            print(self_intro)
        if '\"' in self_intro:
            self_intro = re.sub(r'\"','',self_intro)
        self_intro = self_intro
        print("INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES ",file = sql)
        print("(\"{}\",\"{}\",\"{}\",\"{}\",\"{}\");".format(host_id,name,picUrl,details,self_intro),file = sql)
        i += 1
        room_id_num = len(host_information[host_id]['room_ids'])
        if room_id_num == 0:
            continue
        print("INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES ",file = sql)
        room_id_num = len(host_information[host_id]['room_ids'])
        if room_id_num == 1:
            print("(\"{}\",\"{}\");".format(host_id,host_information[host_id]['room_ids'][0]),file = sql)
        else:
            for index in range(room_id_num - 1):
                print("(\"{}\",\"{}\"),".format(host_id,host_information[host_id]['room_ids'][index]),file = sql)
            #print(host_id)
            print("(\"{}\",\"{}\");".format(host_id,host_information[host_id]['room_ids'][-1]),file = sql)

sql.close()

print(i)




