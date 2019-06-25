import json
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
        print(key)
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

host_information = read_json_file("host.json")
id_len,name_len,picUrl_len,detail_len,selfIntro_len,room_id_len = host_table_longest_length(host_information)


print(len(host_information))
with open('database.sql','w') as sql:
    #create host table
    print("CREATE TABLE IF NOT EXISTS `host` (",file = sql)
    print("  `id` varchar({}) NOT NULL KEY,".format(id_len),file = sql)
    print("  `name` varchar({}) ,".format(name_len),file = sql)
    print("  `details` varchar({}),".format(detail_len),file = sql)
    print("  `picUrl` varchar({}),".format(picUrl_len),file = sql)
    print("  `self_intro` varchar({}),".format(selfIntro_len),file = sql)
    print("  `password` varchar(8) DEFAULT '12345678'",file = sql)
    print(") DEFAULT CHARSET=utf8;",file = sql)
    print('\n',file = sql)
    #create host to rooms table
    print("CREATE TABLE IF NOT EXISTS `host_to_room` (",file = sql)
    print("  `host_id` varchar({}) NOT NULL,".format(id_len),file = sql)
    print("  `room_id` varchar({}) NOT NULL,".format(room_id_len),file = sql)
    print("  PRIMARY KEY (`host_id`,`room_id`)",file = sql)
    print(") DEFAULT CHARSET=utf8;",file = sql)
    print('\n',file = sql)

sql.close()

with open('database.sql','a') as sql:
    for host_id in host_information:
        name = host_information[host_id]['name']
        picUrl = host_information[host_id]['picUrl']
        details = ''
        for detail in host_information[host_id]['detail']:
            detail += '.'
            details += detail
        details = details
        self_intro = host_information[host_id]['self_intro']
        self_intro = self_intro
        print("INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES ",file = sql)
        print("(\"{}\",\"{}\",\"{}\",\"{}\",\"{}\");".format(host_id,name,picUrl,details,self_intro),file = sql)
        print("INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES ",file = sql)
        room_id_num = len(host_information[host_id]['room_ids'])
        if room_id_num == 1:
            print("(\"{}\",\"{}\");".format(host_id,host_information[host_id]['room_ids'][0]),file = sql)
        else:
            for index in range(room_id_num - 1):
                print("(\"{}\",\"{}\"),".format(host_id,host_information[host_id]['room_ids'][index]),file = sql)
            print(host_id)
            print("(\"{}\",\"{}\");".format(host_id,host_information[host_id]['room_ids'][-1]),file = sql)






