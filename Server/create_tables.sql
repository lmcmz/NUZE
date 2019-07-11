CREATE TABLE IF NOT EXISTS `user` (
  `user_id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each user',
  `user_email` varchar(200) COMMENT 'unique email ( default : user_id@airbnb.com ) for each user',
  `creat_time` timestamp default current_timestamp(),
  `update_time` timestamp default current_timestamp() on update current_timestamp(),
  `password` varchar(20) DEFAULT '12345678' COMMENT 'default password  12345678 for each user' 
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `client` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `user_id` INT UNSIGNED  COMMENT 'unique ID for each user',
  `client_id` INT  COMMENT 'unique ID for each client(set by airbnb)',
  `client_name` varchar(10),
  `details` varchar(300) COMMENT 'brife detail for each client eg.job,lanuages,living place',
  `pic_url` varchar(300) COMMENT 'client head portrait picture url',
  `self_intro` varchar(4000) COMMENT 'Self introduction of the host',
  `join_in_year` INT UNSIGNED COMMENT 'join in year of the client'
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `host` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `host_id` INT NOT NULL  COMMENT 'unique ID for each host(set by airbnb)',
  `user_id` INT COMMENT 'unique ID for each user',
  `host_name` varchar(40) ,
  `details` varchar(300) COMMENT 'brife detail for each host eg.job,lanuages,living place',
  `pic_url` varchar(300) COMMENT 'host head portrait picture url',
  `self_intro` varchar(4000) COMMENT 'Self introduction of the host',
  `join_in_year` INT UNSIGNED COMMENT 'join in year of the host'
) DEFAULT CHARSET=utf8mb4;


#host_to_houses table store houses under the host name 
CREATE TABLE IF NOT EXISTS `host_to_houses` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `host_id` INT NOT NULL  COMMENT 'unique ID for each host(set by airbnb)',
  `house_id` INT NOT NULL  COMMENT 'unique ID for each house(set by airbnb)' 
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house` (
  `city` varchar(20),
  `house_id` INT NOT NULL KEY COMMENT 'unique ID for each house(set by airbnb)',
  `host_id` INT COMMENT 'unique ID for the house host(set by airbnb)',
  `lat` double COMMENT 'house latitude',
  `lng` double COMMENT 'house longtitude',
  `brife_infor` varchar(60) COMMENT 'house brife information',
  `description` varchar(2000) COMMENT 'house description',
  `bedrooms` INT COMMENT 'how many bedrooms of the house(0 is studio)',
  `bathrooms` INT COMMENT 'how many bathrooms of the house',
  `beds` INT COMMENT 'how many beds of the house',
  `guest_capacity` INT COMMENT 'how many guests the house can held',
  `neighborhood` varchar(30) COMMENT 'the region of the house eg.CBD ',
  `preview_amenities` varchar(70) COMMENT 'preview amenities of the house eg.have wifi,kitchen',
  `reviews_count` INT COMMENT 'how many reviews of the house',
  `star_rating` float,
  `space_type` varchar(30) COMMENT 'eg.entire apartment,private room',
  `price` DECIMAL(8,2) ,
  `clean_fee` DECIMAL(8,2)
) DEFAULT CHARSET=utf8mb4;


#house_pic_urls table store all url of pictures of the house
CREATE TABLE IF NOT EXISTS `house_pic_urls` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `house_id` INT NOT NULL COMMENT 'unique ID for each house(set by airbnb)',
  `pic_url` varchar(200)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house_review` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `house_id` INT NOT NULL COMMENT 'unique ID for each house(set by airbnb)',
  `client_id` INT COMMENT 'unique ID for client(set by airbnb) who write the comment',
  `host_id` INT NOT NULL COMMENT 'unique ID for host who owe the house',
  `comment` varchar(200)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house_calender` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `house_id` INT NOT NULL  COMMENT 'unique ID for each house(set by airbnb)',
  `date` date,
  `price` DECIMAL(8,2),
  `availablity` varchar(10)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `city` (
  `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT 'unique ID for each row',
  `city` varchar(20)
) DEFAULT CHARSET=utf8mb4;


