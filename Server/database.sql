CREATE TABLE IF NOT EXISTS `host` (
  `id` varchar(20) NOT NULL KEY,
  `name` varchar(40) ,
  `details` varchar(400),
  `picUrl` varchar(300),
  `self_intro` varchar(4000),
  `password` varchar(8) DEFAULT '12345678'
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `host_to_room` (
  `host_id` varchar(20) NOT NULL,
  `room_id` varchar(20) NOT NULL,
  PRIMARY KEY (`host_id`,`room_id`)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house` (
  `id` varchar(10) NOT NULL KEY,
  `lat` double,
  `lng` double,
  `description` varchar(60),
  `bedroom_label` varchar(20) ,
  `bathroom_label` varchar(20) ,
  `bedrooms` INT,
  `bathrooms` float,
  `beds` INT,
  `guest_capacity` INT,
  `neighborhood` varchar(30),
  `preview_amenities` varchar(70),
  `reviews_count` INT,
  `star_rating` float,
  `space_type` varchar(30),
  `price` float,
  `host_id` varchar(10),
  `clean_fee` float,
  `password` varchar(8) DEFAULT '12345678'
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house_picUrls` (
  `id` varchar(10) NOT NULL,
  `picUrl` varchar(200),
  PRIMARY KEY (`id`,`picUrl`)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house_review` (
  `house_id` varchar(10),
  `user_id` varchar(10),
  `user_name` varchar(20),
  `comment` varchar(700),
  PRIMARY KEY (`house_id`,`user_id`)
) DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `house_calender` (
  `house_id` varchar(10),
  `date` date,
  `price` float,
  `available` varchar(10),
  PRIMARY KEY (`house_id`,`date`)
) DEFAULT CHARSET=utf8mb4;


INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47250720","Mia","https://a0.muscache.com/im/pictures/32dbd44e-50ca-4e47-a50c-99a3e9413e13.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi There! I’m an AirBnB host myself and have been using the platform as a super host for over a year. I’m looking forward to my first guest experience!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26919489","Yukio","https://a0.muscache.com/im/pictures/user/56c443ef-fca9-4de9-b2ce-3c1494e4d544.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español,Português.Work: Brianda Projects.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3809995","Charlotte","https://a0.muscache.com/im/pictures/user/a47df38e-9106-44ce-91cb-adea8685756b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","My husband and I live close by to Potts Point with our 8 year old daughter. We love meeting people from all over the world!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("132640747","Al","https://a0.muscache.com/im/pictures/c694d9f4-a509-4728-8242-61ab142ff62a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("34487626","Susan","https://a0.muscache.com/im/users/34487626/profile_pic/1436487041/original.jpg?aki_policy=profile_small","Speaks English,Español,Hindi,Italiano,Português,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20039367","Bettina","https://a0.muscache.com/im/pictures/b3636a52-ce8a-42ea-b23a-2ac415f5678a.jpg?aki_policy=profile_small","Lives in Coogee, Australia.Speaks English.Work: Health professional .Connected account.","I am a warm friendly professional
I work in the health industry love to travel with an appreciation of art music culture . Have expansive knowledge of Sydney surrounds am happy to assist with any questions regarding the accomodation or your trip 
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4421400","Scott","https://a0.muscache.com/im/users/4421400/profile_pic/1355706316/original.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.","I'm Scott, very active guy from Sydney who loves traveling and exploring different cultures. Look forward to meeting you!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5383558","Angus","https://a0.muscache.com/im/pictures/1969385f-a2c1-44f5-8e77-1ff97f0ae2fa.jpg?aki_policy=profile_small","Lives in Redfern, Australia.","Love nature and the outdoors");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("74564218","Andre","https://a0.muscache.com/im/pictures/6430b854-1d2f-46fd-a64c-4778f95ebffd.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks Português.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("644516","Mel","https://a0.muscache.com/im/pictures/user/789c20d4-ab5d-4eeb-a25c-d77decee9659.jpg?aki_policy=profile_small","Lives in Redfern, Australia.Speaks English.Work: Photographer.Connected account.","I work for myself as a commercial photographer and I love it!
I have an office at home so sometimes i'm at home during the day working, so can greet you when you arrive, whilst other times I'm out working on location, if this is the case I will leave a key out for you and communicate this with you via the Air BnB message service.
Harry (my dog) and I go walking every morning. She will greet you very enthusiastically when you arrive at the house and be ready for a scratch on her tummy from you to say hello.
It's great to meeting and hosting new people from all over the world and have a chat over a coffee or a wine and share my local knowledge with you, and hear about your travelling experiences, but I also respect your privacy, and my work keeps me pretty busy too!
I love being an Air BnB host and have made some great friends from the guests who have stayed with me from all over the world.
I am aware a lot of people are looking for longer term accommodation, however, short term stays suits me, and I'm not looking for any guests to stay longer than 1 month.
I look forward to meeting you.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45902462","Kate","https://a0.muscache.com/im/pictures/user/528e199d-01cc-485a-afde-8f34a9a42065.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Speaks English.","Hi all,
I'm Katie, a graphic designer based in Sydney. I'm an on-off Airbnb host who just love to use Airbnb for travel accommodation like you do. My Airbnb experience ( both host and guest) are incredibly amazing and memorable, I met so many amazing guests/hosts who came from all around the world and there have been always different stories to take away afterward. Regardless of a few bad reviews  that upset me, those good hosting experiences truly motivate me. Honestly, I'm not making a living on this, Airbnb apparently a thing set me free from paying the bills while I'm travelling and  I would never stop feeling grateful for this mutual share of benefit. Travelling is a part of learning process and lifestyle, I hope my Airbnb place could be a part of your beautiful journey as well. 
Please notice that most of the time you will checkin/out by yourself as I could be away by that time. I expect guest will be more aware of your trip/ time management, so bit careful read/research about your Airbnb place will save both our time and effort. 

Ps: Tks for reading anyway, usually people roll past this part:-) ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7531199","Daniel","https://a0.muscache.com/im/pictures/b3b8bec1-d22c-4a1e-895b-525bae0f9453.jpg?aki_policy=profile_small","Lives in Redfern, Australia.","I've travelled a bit in the past but of recent years been tided to a desk. Looking forward to getting out there again soon. 

Enjoy being a host and showing people my city, which I love. 
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("57488052","Nicole","https://a0.muscache.com/im/pictures/fac74210-377c-4f59-84c5-cb0340c9b55a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: NSW Department of Education .Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8530753","Jared SSP","https://a0.muscache.com/im/pictures/user/c7020809-2d2d-4e64-a38b-3acc7924b1d6.jpg?aki_policy=profile_small","Lives in Melbourne, Australia.Speaks Bahasa Indonesia,Bahasa Malaysia,English,Tagalog,中文.Work: Systems Architect.","Your trusted international holiday rental host across major cities. Feel at home wherever you are! LIVE · LOVE · EXPLORE

- Melbourne
- Sydney
- Gold Coast
- Auckland
- London
- Da Nang
- Kuala Lumpur
- George Town
- Johor Bahru

I speak fluent English, Cantonese (广东话), Mandarin (普通话), Bahasa Melayu, Bahasa Indonesia Tagalog.

If the dates you're after are available on my calendars, you may proceed to INSTANT-BOOK em'.

My calendars on AirBnb are always up to date, so if they're blocked and you can't select them, it pretty much means someone else has already booked em'.

Happy stays safe travels :)

View more properties HERE (JL1) https://www.airbnb.com.au/users/8530753/listings
 
OR HERE (JL1) https://www.airbnb.com.au/s/homes?host_id=8530753
 
OR HERE (JL3) https://www.airbnb.com.au/s/homes?host_id=114384153
 
OR HERE (JLMY) https://www.airbnb.com.au/s/homes?host_id=177114776

OR HERE (JLMY2) https://www.airbnb.com.au/s/homes?host_id=217495299

OR HERE (JLMY3) https://www.airbnb.com.au/s/homes?host_id=228789871");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105151106","Geoff","https://a0.muscache.com/im/pictures/db36996d-c180-4d7d-a83b-1f8a8626b51f.jpg?aki_policy=profile_small","Lives in Woolloomooloo, Australia.Speaks English,Italiano.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("36928848","Jackie","https://a0.muscache.com/im/users/36928848/profile_pic/1435493891/original.jpg?aki_policy=profile_small","Lives in Centennial Park, Australia.","I love keeping fit and spending time with friends and family. My favourite destination is Paris. I love trying out new restaurants and cafes in Paddington and Woollahra. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("46909702","Fumi  &amp; Lucie","https://a0.muscache.com/im/pictures/1af0af9a-5447-44b0-9774-2231f6fbf8ea.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Français,日本語.","We love traveling and have visited lots of different places in the world but we have decided to call Sydney nearly 4 years ago (Fumi has been in Australia for 10+ years).
We both work in Sydney and like to stay outdoors on our days off, either at the beach or for a walk, Sydney has so much to offer..
We are pretty relaxed and like meeting new people but as hosts, we will respect your privacy and will let you enjoy our flat and you will have the place to yourself.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4519063","Margie","https://a0.muscache.com/im/users/4519063/profile_pic/1403432620/original.jpg?aki_policy=profile_small","Lives in Willoughby, Australia.Work: Channel 9.","We are from Sydney, Australia and have a busy lifestyle,  We enjoy cooking, golf, gardening and travelling. Both Wayne and I work full time. We enjoy meeting people from all walks of life!!  Our home is somewhere to stay in comfortable surroundings and a nice quiet neighbourhood. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("73407853","Zoltan","https://a0.muscache.com/im/pictures/user/5f5ef4ab-e185-492c-bc92-f2b0c8159d9e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English,Español,Magyar.Connected account.","I am an artist originally. I am an active person who loves traveling and cooking.  Besides English I speak German, Hungarian and Spanish . ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6875353","Nathan","https://a0.muscache.com/im/pictures/bd0871d6-8cfe-4170-9370-da21b4fb71ae.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Forex Trading, Sales and marketing.","Hi there, Born in NZ to a long line of danish vikings, I moved to Australia when I was 17 and then to London when I was 20...

Ever since then I've been addicted to travelling and bounced around the world non stop for about 4 years during which time I backpacked to over 90 countries, became a Dive Instructor in Thailand and eventually decided to commute between London and Sydney for the summers on both sides of the earth. I trade forex in my spare time, Background in Sales and Marketing, Building Construction and Renovations, IT Project Management and studied Clinical Nutrition, I'm now 32");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14813306","Tania","https://a0.muscache.com/im/pictures/14f55224-81a7-4185-ae5f-5360f07cbd0f.jpg?aki_policy=profile_small","Work: Tania Wursig Art.","Hi,
My name is Tania, I am an artist and and have been creating, adding to and evolving my spacious, colourful, bohemian loft style home for the past few decades. I share this much loved space with my beautiful daughter and my 2 cats.
Aside from painting and exhibiting within Australia I am very fortunate to have an annual 3 month painting residency in Tahiti.
I usually go for the months of July, August and September to paint, teach, exhibit, gather inspiration and enjoy that beautiful part of the world. 
Since 2015 I have been sharing my eclectic and creative world on airbnb which includes my spacious bohemian home my 2 gorgeous cats Fellini and Poerava, but we call her 'Popo', a truly eclectic accumulation of art, artefacts and collectables and the wonderful village  of Rozelle where I spend the other part of my life when not in Tahiti.

As I will be away I would prefer guests who are seeking a longer term stay, 2-3 months would be ideal and I am offering a great discount as incentive.
My dear friend Kathrin, who lives down the road will be acting as land lady, should you need any assistance she is just a phone call away.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1820335","Sherry","https://a0.muscache.com/im/pictures/user/373e56da-7158-455a-a3e2-1965f07e751e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Hello, my name is Sherry, and I am originally from the United States. My partner and I have taken over from the lovely Dave and Lisa to run this apartment. We look forward to giving you the same experience and friendly attention as they have given over the last few years.

We're very respectful and will take the greatest care and appreciation of your property, and love people who do the same with ours!

We love traveling, cooking, and daily exercise. We are big dog lovers and are enjoying our new cavoodle, Ruby. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2052335","Keith","https://a0.muscache.com/im/pictures/c20a2e92-d962-443f-b5b0-d7156cf00a99.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","I am a semi retired man who is happily running a small family accommodation business for you to enjoy!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51507029","Toni","https://a0.muscache.com/im/pictures/user/96c199f0-aea6-42c0-9640-e1f969dc1f7d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("91754420","La","https://a0.muscache.com/im/pictures/3c9695c2-1fa8-4e24-8696-d4f7c2b498ea.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("688781","Lynn","https://a0.muscache.com/im/pictures/user/d1ac9124-7389-4476-8e0b-e217db48c148.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Work: Graphic designer / model.","I'm am an artist, Silverfox model, Airbnb host, mother of four wonderful adult kids, proud grandmother of a baby girl born in the UK in November 2018, besotted dog owner and live in the top two level of a beautiful, light-filled three-level renovated church building.

Sharing my home (the street level) with Airbnb guests is one of the best things I've ever done. It's given me connections with many amazing people. I've found that the kind of people who choose Airbnb are adventurous, friendly, warm, intelligent, curious and often have fascinating stories to tell about their own lives.

When I travel, I stay at Airbnb places and each place I've chosen has been unique, full of character and has offered so much more than a stark and sterile hotel room. Meeting my hosts has been another benefit - they are all wonderful people.

I have a dog – a Lagotto Romagnola – whose name is Mucca and she shares my space upstairs. She's very friendly and lovable and is classified as 'hypoallergenic' so should not be a problem for guests with allergies.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29889587","Shukhratjon","https://a0.muscache.com/im/pictures/8e59cb82-9bd9-42cb-b5dc-d82b79a8bb1b.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Speaks English,Русский,中文.Connected account.","I am nice dude with some nice dreams :D");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6779186","Heather","https://a0.muscache.com/im/users/6779186/profile_pic/1377510612/original.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Speaks English,Français.","Life is great.  I have 2 beautiful children, an amazing husband and a great career in a wood workshop.  We are keen sailors, campers and generally outdoorsy people.  

As a host, I try to give our guests maximum privacy while still being available to answer questions or deal with issues should they arise.  As a guest, I'm very respectful of the places we stay and know what goes into a changeover so try to help out where I can.

I grew up in Sydney and have finally returned after many years living in various parts of the world - France, USA, UK, Singapore.  Airbnb has enabled us to keep the travel bug alive within us.  ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131859707","Braith","https://a0.muscache.com/im/pictures/user/da11cb3b-be58-46b7-988f-0ea182210231.jpg?aki_policy=profile_small","Connected account.","I am a 35 year old male who works as a corporate professional. I live alone in my two bedroom apartment and spend very little time at home due to my demanding career. 

When I am home, I enjoy a very quiet lifestyle. A home cooked meal and an early night is how I spend my time at home. I work six days a week with early starts and late finishes, I am very rarely home. 

I take pride in my modest home by keeping it clean and tidy. I don’t host parties or rowdy groups. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1943399","Paul And Raymond","https://a0.muscache.com/im/pictures/user/0e4bac21-2274-4e5e-a9a2-1900737df8c2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Academic (Paul) Media Analyst (Raymond).","I (Paul) am a psychotherapist and Senior Lecturer at the largest counselling and psychotherapy college in Australia. This work is fascinating both in terms of the wonderful clients, students, and staff with whom I work.  I spent 10 years conducting social research on sexual behaviour, gender and sexuality, having come to academia late after running a manufacturing business, driving trams in Melbourne (a job a STILL have great dreams about!) and a wasted year in a clothing factory after high school. 

Raymond works as an analyst in government and corporate media, a field he has been involved in since graduation. After his honours year, he spent the best part of the next year backpacking around the world. Every continent covered.... except Antarctica. So that's on our mutual Wishlist!

Meeting guests - especially those visiting Australia - is like having a little holiday without leaving Sydney as we get to hear what their home countries are like. We manage to meet over 80% of our guests to welcome them to town! And this is the best part of being hosts with Airbnb. We have also been really lucky to meet a lot of other local hosts, managers from the San Francisco head office, and the wonderful, warm and friendly staff at the Sydney office. Paul was also asked to speak on the SuperHost panel at the inaugural Airbnb Open in November of 2014 and we both attended the Paris Open in 2015. It was really thrilling to be included with such passionate, professional hosts talking to a huge room full of excited people. 

We have traveled extensively including staying in hotels, hotels, on the beach, and latterly in Airbnb homes. So we really know what makes for a good stay. It's both a pleasure and an honour to have folks stay at here, especially international guests who are traveling around this lovely country.

We have three great apartments, close to the centre of Sydney, available as the entire place for up to four guests. We do not stay when guests are staying - you have the whole apartment to yourselves.

Redfern is an original area of Sydney, featuring some of the oldest homes dating back to the 18th and 19th centuries. Prince Alfred Park is nearby, and the city itself is on the other side of that. You can literally walk to town in under 10 minutes, and it is well supported with public transport to all parts of the city only a four blocks from the front door.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8963402","Noa &amp; Keren","https://a0.muscache.com/im/pictures/user/3305a982-cafc-448e-a915-fddbdf77836c.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","We chose Sydney as our home over 18 years ago and have loved digging under it's glittering beach destination facade to discover the hidden gems.
We run a creative agency and have a 7 year old kid and an old dog.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6344154","Roy","https://a0.muscache.com/im/pictures/45ced7a5-5904-4710-b44e-79d48e93a1e2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Hi, My name is Roy and I'm a young working professional living in Sydney, Australia. I have an awesome job working for a non profit organisation. I'm an avid lover of live music, out door adventure, good wines, great food and interesting people.  ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9509911","Andrea","https://a0.muscache.com/im/pictures/user/2d160d64-7ebc-4fef-9bc2-dffdbc1ba50d.jpg?aki_policy=profile_small","Speaks English,Italiano.","This is the first time that I have listed my place. Let me tell you guys a little about myself. I am 48 years old. I was born and brought up in Sydney in a very very Italian house. I am a video maker specialising in medical/hospital films so I spend a great deal of time travelling. Hence the reason I have decided to list my place. This is actually my home. I am typing this email at the moment from my sunny balcony. If you are living here it means that I am actually travelling or living at my girlfriend's house. 
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7671211","Belinda","https://a0.muscache.com/im/users/7671211/profile_pic/1374665398/original.jpg?aki_policy=profile_small","Speaks English.Work: Health Promoter.","Belinda- my husband Adam myself and 2 children live in Sydney, Australia and love outdoor sports, great food, nature, meeting fun people. Health is a priority:)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2953790","Laszlo","https://a0.muscache.com/im/pictures/user/0d4ac283-0777-4f12-a31c-bd874b84d5fe.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Speaks Deutsch,English,Magyar.Work: Tiny Hunter.Connected account.","Friendly, well-travelled and easy-going guy. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37394087","Tina","https://a0.muscache.com/im/pictures/user/dbe29e05-e531-4ddd-9710-7e5019015a28.jpg?aki_policy=profile_small","Connected account.","Tina, Uni student and travel junkie.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("188997545","Kannika","https://a0.muscache.com/im/pictures/user/9360fb8c-2995-4af1-a92c-4f83d3b39d01.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,ภาษาไทย,中文,日本語.Work: Property Management.","Whether I am travelling or hosting  Airbnb is my passion, I am really excited to host Airbnb PLUS. I am a true blue born and bred city girl as I spent my whole life in Sydneys CBD it is my home and only way of living. I live and breathe the City Life!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13791976","Bron","https://a0.muscache.com/im/pictures/user/89d6b8ac-bdce-4841-8fcc-4d301758e8cb.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Easy going person who loves my family, pets, friends gorgeous neighbourhood of Surry Hills. 

I really look forward to sharing my home and enthusiasm for the beautiful city of Sydney with guests. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("140732328","Chris","https://a0.muscache.com/im/pictures/user/5ccefb43-6b66-43aa-a3cb-2ee16f76edba.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Work: Handyman.","To start my day I usually go for a run. Sydney has steep hills, lots of parks, pathways along the harbour. If you aren't up for a morning run then join me for a coffee.

In 2019 I plan to leave Sydney and do some extensive travelling.

I'm motivated by the belief that God loves us but sad that our greed hurts so many.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1553030","Beverley And Michael","https://a0.muscache.com/im/pictures/ad808be1-aaad-4240-8b32-1a6a370e5bce.jpg?aki_policy=profile_small","Lives in Mascot, Australia.Connected account.","I have travelled extensively since I was 3 years old and can imagine myself doing so till I can't walk when I am 100 years old.   There are many new places in the world I would like to visit and hope that those people can come visit me.
I feel like I know what people would like, that is your own bedroom and bathroom.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("167498543","Tai","https://a0.muscache.com/im/pictures/user/4e77f375-def5-48c8-a9be-f8aea58b7eea.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,中文,日本語.","I love to Travel and see the world!! I love the idea of Airbnb as it makes it more affordable yet you don’t have to compromise on comfort and quality.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55713296","Rebecca","https://a0.muscache.com/im/pictures/user/3f64929c-afcb-4e82-aaa1-485e76139be7.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Speaks English.Work: Consultant.Connected accounts.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45620575","Trevor","https://a0.muscache.com/im/pictures/8fc6ee95-1c76-400c-b922-62bfd6cf6090.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,ภาษาไทย.Work: Veneueslive.","We are a gay couple and have been living in Newtown for some time, and love this part of Sydney. Newtown is a unique suburb, full with people who are down to earth and kind. We're lucky enough to have some of the best bars and restaurants in Sydney, as well as excellent access to the city.

We've an Italian Greyhound, who tines and smells great, is fully house trained and is always on his best behaviour. He loves hanging out with people if they are home and tends to do his own thing.

We love our place in Newtown and we hope you will too. We rent out our spare bedroom through bnb when our friends and family aren't visiting. As much as we love our space, we also love meeting people from around the globe and sharing stories and experiences from our travels.

And we love going out for a nice meal or drinks. We love trying new restaurants and small bars that seem to pop up all the time in Newtown. We love cooking for our friends and family, and happy to share a meal or two with our guests. We love good wine and food, movies, music and outdoor activities such as the beach.

As hosts, it's our duty to ensure you know about all the great things that Sydney has to offer, including the highlights of Newtown and the inner west.

We're hopping to meet you soon!

Tom Trevor and Thongfar");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50707354","Marie","https://a0.muscache.com/im/pictures/324d7620-52c2-4e99-9100-332f5b4b3895.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Work: Retired.","I am an Annandale local and I run a small business in the area. I love living in the inner-west of Sydney with all the cafes, restaurants, eclectic shops and green spaces. In my spare time, I like to paint and walk my poodle, Lulu, at the nearby dog-friendly park. During my travels abroad I have enjoyed staying in Airbnb apartments and I would love to return the favour to intrepid travellers visiting my beautiful city.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("96106690","Dixon","https://a0.muscache.com/im/pictures/8b6e6ac5-8efc-4a00-8f9e-9c3cc1b0f490.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Connected account.","I'm an easy and outgoing character with a thirst for knowledge and exploration. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8247293","Ariana","https://a0.muscache.com/im/pictures/99e42ec1-ce63-4c81-b0f4-5bea23b5198e.jpg?aki_policy=profile_small","","I grew up in Sydney's inner city and still think it's a pretty magical place. I've spent one year in South America, one year in California and backpacked bits of Europe and New Zealand. I studied for a long time in the liberal arts, mostly theatre/gender/performance. Some of my favourite things are white balsamic vinegar, ocean swims, wandering open-air markets and dancing to Tom Waits' more tuneful numbers with my little girl.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7028222","Kylie","https://a0.muscache.com/im/users/7028222/profile_pic/1372825205/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Hi there
My name is Kylie which, not many people know,  is actually an Australian aboriginal word for Boomerang. 
I bought this apartment decades ago because I loved the area and wanted to close to the city and my work. It’s such a melting pot of interesting culture and entertainment, but also a real community. 
For over a decade I worked at the Art Gallery of NSW which is a short walk from the apartment. I’d walk into work every day and most days do a quick walk at lunch time around the Botanical Gardens to take in the view of the Opera House and Harbour Bridge. 
I moved out when we had our baby and wanted to be closer to family. We love doing Airbnb as we love hosting and it keeps us connected to the area. 

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("103561166","Sittichai","https://a0.muscache.com/im/pictures/0554bfb6-20aa-4558-8e7d-0780525e769b.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("151780551","Vera","https://a0.muscache.com/im/pictures/user/0c22b8ea-75ba-45a8-915a-5bf7175f5ec1.jpg?aki_policy=profile_small","Lives in Rhodes, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("19949885","Genevieve","https://a0.muscache.com/im/users/19949885/profile_pic/1417424642/original.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Speaks English.Work: 1979.","I am a wife and mother of two boys and own a lifestyle communications agency but at my core I am a lover of the hospitality industry. I love nothing more than hosting people and telling them about my homes, whether it is the inner city suburb of Paddington Sydney, or the countryside of Evandale Tasmania. I know how to have fun and eat and drink well so will have lots of recommendations to share with you! My favourite destination outside of Sydney and Evandale, Tasmania is anywhere in Italy.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("410489","Michal","https://a0.muscache.com/im/users/410489/profile_pic/1368598905/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français,עברית.Work: Teacher, Artist, Art Therapist.Connected account.","Hi, I discovered Airbwhen planning a trip last year. We had a great time and stayed in 8 listings in 2 continents. I took my time choosing places and it paid off. All the 8 listings were very good and a few were outstanding for different reasons. All the hosts were genuine, caring and interesting people.We took care of their places and have been invited back to all of them. What more can I say? As a guest traveling the world I know I was looking for a good sleep on a comfortable bed and a pleasant outlook that felt safe so I could enjoy being a tourist .The fact that we also met lovely interesting people and that I didn't break the bank with Hotel prices, well that was good too.I can confidently offer you this with my studio listing and its location is perfect for accessing the city, universities and beaches.
I love nature and enjoy nurturing my garden and other creative activities. I can point you in the direction of art galleries and good live music.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165767189","Naphassanan","https://a0.muscache.com/im/pictures/user/00eb524d-4204-4ab7-8dee-d7bfe7d07219.jpg?aki_policy=profile_small","Speaks English,ภาษาไทย.","I always smile and friendly ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("54695275","Aj","https://a0.muscache.com/im/pictures/6a635244-b50a-4532-8d58-1733e89d9a27.jpg?aki_policy=profile_small","","Love hosting the space and love opening up what Paddington has to offer at an affordable price point");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("70736388","Joseph","https://a0.muscache.com/im/pictures/8f9eaf8e-b9fd-4c2c-9a6b-a285d588f501.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Relationship Management.Connected account.","I'm a very easy going and down to earth person who loves life to the full. 
My major passion is travel having been to over 80 countries. I am also passionate about food and wine, and love music mainly Jazz, funk and soul.
I love meeting new people and am a very accommodating, friendly and generous host.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6232973","Phillip","https://a0.muscache.com/im/pictures/user/3bbf7e0f-1f22-4d8e-998c-cf76a4ca1708.jpg?aki_policy=profile_small","Lives in Australia.","Retired teacher. Love to travel.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105906077","Glen","https://a0.muscache.com/im/pictures/0c152db5-2af9-4f1a-b0ae-ca041d1a34d8.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Passionate traveler and love keeping healthy and exploring what life has to offer. I love being an Airbnb 'Superhost' and will do everything possible to make your stay an outstanding experience! Available at any time to assist you before or during your stay. Looking forward to meeting you.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("30075514","Lindsay And Minny","https://a0.muscache.com/im/users/30075514/profile_pic/1440721809/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks ภาษาไทย.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("144599946","Sohrab And Mari","https://a0.muscache.com/im/pictures/user/e92a1817-1160-4345-8d91-75c93eb1d70a.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks Bengali,English,Hindi,Tagalog,日本語.Work: Sydney Lodges, Sydney Boutique Hotel, Posh Hotel.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("121579179","Jennifer","https://a0.muscache.com/im/pictures/user/94bd3d9e-ec8d-4074-bb0d-8920388205a5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Work: Investment Bank.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21891204","Victoria","https://a0.muscache.com/im/users/21891204/profile_pic/1431247195/original.jpg?aki_policy=profile_small","","Hi I'm Vickie! I am an avid traveller who loves my city and Airbnb allows me to share it with you and!!! I truly enjoy meeting new people and look forward to welcoming you to my beautiful city. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53560924","Daisy","https://a0.muscache.com/im/pictures/user/889bb2b0-91c2-459c-8c03-d7766e943caa.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("17061","Stuart","https://a0.muscache.com/im/users/17061/profile_pic/1425534501/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Business Owner.","G'Day from Australia!

He's Vinh, and I'm Stuart...

We're big fans of AirBnB for nearly a decade having used it when traveling in the USA not long after AirBnB first started.

Since then we've enjoyed traveling with AirBnB across the US, around Australia, in Hong Kong, and also in Vietnam. We're also hosts.

As guests we're always out about most of the time and won't be intruding too much.

We're neat tidy and vibrant conversationalists...

We operate ArtSHINE industries - Australia’s independent Creative Industries Enterprise Acceleration Platform + Launch Pad identifying, advancing, and funding commercially minded and innovative Creative Industries Professionals who focus on art, craft, artisanal making, design, fashion, entertainment, photography, music, writing, film television, digital technology, and games interactive content. ArtSHINE also incorporates a coffeehouse and coworking space; CoSydney CoWorking + Project Space, in the City of Sydney’s Chippendale Creative Precinct.

So here's an open invitation to come check us out.

My partner Vinh is a keen traveler who works a lot with artists and designers in his coaching practice. He's the energetic, vibrant one...

I lived in Bolivia for a year as a young man just out of school and have worked in social enterprises and not for profits over the years. I'm the more serious, bookish one (with a wicked sense of humour though). Currently working in financial services too...

One of the things we're keen to do is catch up with some social entrepreneurs, coworkers, not for profits, and microfinanciers.

We're particularly interested social enterprise, coworking, and small business incubators mentoring projects.

More that happy to answer any questions that you may have.

All the best,

Vinh Stuart
Australia");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("58393929","David","https://a0.muscache.com/im/pictures/c68bbbde-861d-42ce-a684-51d13d85f5c7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,ภาษาไทย,中文.Work: Manager at WOW Manage.Connected account.","Hi guys!

My name is David. Thank you for clicking this page to know more about me. 

If you are planning to come to Sydney or Melbourne, Australia or Phuket, Thailand. WELCOME! and I am sure you will enjoy your journey. 

I am from property consulting background and I am just like you and the others here who like to travel and find a comfortable place to stay at a convenient location. When I go overseas and interstates, I spend hours and hours to search for accommodation. that's why I understand you and would love to help if I could make your stay a bit easier and more relaxed.

Feel free to send me a message. I look forward to hearing from you.

If you are home owners or hosts. I also provide cleaning, management and consultation service. Please do not hesitate to contact me.

Hello! 大家好!
我是David,謝謝你按進這一版來看我的自我介紹｡
我是澳籍華人,從香港多年前移民來到澳洲｡在悉尼居住了幾年｡

我和你一樣,喜歡旅遊或者偶而出去走走｡每次找住的地方,都希望住得舒適,而且地點又方便｡所以我很了解你的心情,也希望可以幫到你一點的忙,讓你的住宿的體驗可以輕鬆和簡單一點｡

歡迎你隨時用中文和我溝通｡

同時,我也幫業主做管理和資詢,歡迎聯絡我｡

สวัสดีค่ะ

ยินดีต้อนรับทุกๆคนที่มีแผนหรือกำลังจะเดินทางมานครซิดนีย์ ประเทศออสเตรเลียค่ะ

เราชื่อเกรซนะ เป็นคนไทยที่มาเรียนต่อที่ออสเตรเลีย ตอนนี้ถือสัญชาติออสเตรเลียและทำงานประจำที่ซิดนีย์ค่ะ แฟนของเกรซมีห้องพักสตูดิโอให้เช่า ซึ่งพวกเราตกแต่งกันเอง โดยเน้นเรื่องความสะอาด ความสะดวกสบาย และบรรยากาศที่ผ่อนคลายให้กับแขกที่มาพักเป็นหลัก

ถ้าใครสนใจ สามารถสอบถามเพิ่มเติมผ่านทางเว็บไซต์ได้เลยค่ะ 

ขอบคุณค่ะ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3792649","Steve","https://a0.muscache.com/im/pictures/7f1313f7-8d79-4463-8ffd-dd405c0eec61.jpg?aki_policy=profile_small","Lives in Bondi, Australia.Work: Freelance Photographer, Fine Woodworker.","Freelance photographer and fine woodworker from UK originally, got married to Iva last year and together with are beloved cattle dog, Pheonix, we now live between Sydney and Mullumbimby.  If you are interested in my photography, please search for steve back photography and you will find my site, it will not allow me to write it here.

Love AIrBnB, both using it and renting out my spaces on it.  Always have had really great tenants and stayed in some great places.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20202876","Lola","https://a0.muscache.com/im/users/20202876/profile_pic/1408530140/original.jpg?aki_policy=profile_small","Lives in Cheltenham, Australia.Speaks English,Русский.Work: artist and illustrator.Connected account.","An artist and designer passionate about travel and hospitality ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("733574","Tobias","https://a0.muscache.com/im/users/733574/profile_pic/1310181001/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Since I've had such great experiences with AirBnB, I thought it was only natural that I list my properties for visitors to Sydney. 

The inner eastern suburbs of Sydney  are swimming in good caffeine and food for that matter - any number of cuisines are available nearby as the area is scattered with amazing restaurants and cafes.  

The inner eastern suburbs is extremely central to what Sydney has to offer and has a great village feel to it.  I love living here and can't imagine living anywhere else and I hope for you to have the same experiences during your stay.


");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25382118","Jary","https://a0.muscache.com/im/pictures/user/dbdddaee-65a2-4566-8f37-07b347afe9b2.jpg?aki_policy=profile_small","Speaks English,中文.","Hi everyone, I’m Jary. An easy going guy. As an BNB host, I’m focusing on provide high quality accommodation at affordable price. Hope will see you soon. Cheers");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28536857","Anthony","https://a0.muscache.com/im/pictures/5d45cef8-dd6c-4373-be72-8aa6f10e03f6.jpg?aki_policy=profile_small","","22 year old Australian. I am eager to travel as much as I can and experience and see new cultures, sites and cities.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("136111647","Minh","https://a0.muscache.com/im/pictures/user/f1b7e1bd-c6c2-44d6-8693-f35fb170ae26.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3093746","Roland","https://a0.muscache.com/im/pictures/527db98b-5cec-43b9-99a4-e019e5a19f65.jpg?aki_policy=profile_small","Speaks Deutsch,English,Español,Français.Connected account.","We are a young professional couple - Roland is from Australia and Andrea from Germany.  Between us we speak English, German, French, and some Spanish.

We have both done a fair bit of travelling and look forward to receiving guests from all over the world!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5967453","Ling","https://a0.muscache.com/im/users/5967453/profile_pic/1387268173/original.jpg?aki_policy=profile_small","","Happy family");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152020347","Lily","https://a0.muscache.com/im/pictures/user/a9249909-5df3-47eb-8973-4a310f245cd5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,한국어.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24048741","Tommy","https://a0.muscache.com/im/pictures/99cb4e6a-1237-4a9c-8555-2741a84468c5.jpg?aki_policy=profile_small","Speaks English.","Hello everyone, my name is Tommy. I look after my own property while helping other hosts to manage theirs, all our apartments are located in the central CBD, it’s accessible to the most major destination by walking, short stroll to Darling Harbour and public transportation, restaurants and cafes surrounding. I look forward to you stay with us and wish all of you had really wonderful time in Sydney, enjoy the sunshine city!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("117984855","John","https://a0.muscache.com/im/pictures/59e090f8-5d22-46ba-8c2d-4153f38dc7ad.jpg?aki_policy=profile_small","Lives in Balmain, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("41998987","Carly","https://a0.muscache.com/im/users/41998987/profile_pic/1440067226/original.jpg?aki_policy=profile_small","Lives in Dulwich Hill, Australia.Speaks English.","Hola! 
I love seeing live bands.. the punk-rocknrollin variety. The area where I'm situated in (inner west of Sydney) is great location for live music. 
main passions - I play bass guitar in a couple of original local punk rock outfits with some mates. ...some of my other favourite things: travelling, beer, cheese, op shopping, eating yummy food and trying different cuisines. 
What pays the bills..? sadly, not playing punk rock ;p ..instead, I manage (Website hidden by Airbnb) far as day jobs go, I count myself lucky as I actually dig the company I work for and the people I work with.
What else to tell..? -I have an adorable but feisty bunny rabbit called Electra ..She likes to think she's boss. She's domesticated/toilet trained and shares the indoor communal/common space with me but tends to hide away when people come to visit. Recently I got Electra a boyfriend bunny, Nutkin. He’s very cute and thankfully loves Electra.
I'm pretty easy going and friendly and would hope to make you feel welcome during your stay with Electra, Nutkin and I. :)
Cheers. 
  ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9359294","(Website hidden by Airbnb)","https://a0.muscache.com/im/users/9359294/profile_pic/1404456078/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We're about a family who loves to travel and have listed our Sydney and other apartments with Airbnb. We also enjoy staying at places with high standards and cleanliness of a 5 star apartment, the way we wish to live when we travel.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50174640","Charles","https://a0.muscache.com/im/pictures/user/4954b439-7d82-49ed-ac06-3104842bc3ae.jpg?aki_policy=profile_small","","Originally from Sydney Australia and would love to have you as a guest and host you! Little about me - i have travelled around the world, lived in London.  Love travel, food, triathlon and appreciate Quality, comfortable accomodation. Great to meet you and look forward to having you stay with us!!!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4713840","Brenda","https://a0.muscache.com/im/users/4713840/profile_pic/1396812229/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","efficient , friendly, easy going, ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4424088","Sophie","https://a0.muscache.com/im/users/4424088/profile_pic/1355923005/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Norsk,Svenska.","I'm a Swedish viking enjoying life under the blue sky in the city of my dreams. I kickbox, hike, bike and run every chance I get. I'm a bit of a health nut, slightly addicted to greens. I consider a couple of cucumbers as perfect long haul flight-snack and if I got stuck on a deserted island with only avocado + coconuts I would be a happy girl. But don’t worry I also love to bake Swedish Cinnamon buns and ”Semla” and I make a mean Espresso Martini. Passionately love Sydney and try to visit a new restaurant, cafe, place every week to stay up to date. Happy to give you all our recommendation on everything from best bar, perfect pre-work run, must do´s etc. Beside from Sydney other favorite destinations are: Copenhagen, Palm Springs, anywhere in the Greek islands, Hawaii or why not a snowy ski slope finished with hot coca! Hope to meet you! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13423390","Troy","https://a0.muscache.com/im/pictures/user/d56e0577-1558-4480-90c1-2aa00d921a67.jpg?aki_policy=profile_small","Lives in Cherrybrook, Australia.Connected accounts.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10010322","Helen","https://a0.muscache.com/im/pictures/user/beac8088-bf0d-4574-b95d-1f81afdbc583.jpg?aki_policy=profile_small","Lives in Forrest, Australia.Speaks Bahasa Indonesia,English,中文.","I am a well travelled adventurer and have lived overseas. Sydney is a fabulous city. I look forward to meeting you and sharing Sydney tips!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152530023","Mina","https://a0.muscache.com/im/pictures/user/3e6fcbaf-feb3-48e8-a04b-6dd6ca43c468.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Русский.","We have been living in this lovely city of Sydney for more than half of our lives. 

We like trying out different cuisines, we love travelling and we also enjoy having a quite relaxing time at home. 

We have had many great experiences travelling and we're hoping that our guests staying in our places will experience the same excitement and magic in Sydney. 

We'd love to meet you from the other side of the world and we'd love to talk with you about interesting things we had in this city. We look forward to hosting you soon! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("185794729","Bappy","https://a0.muscache.com/im/pictures/user/a25dc642-a970-4b53-ab9c-668ba71f9db4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Hi, I'm Bappy Golder. I host with my brother Stanly. I run a software company called oLab in Surry Hills and love meeting and talking to guests when possible :)

Airbnb is a side hustle and that keeps us connected with the rest of the world! We love meeting guest and we want to create a big beautiful ecosystem for guests to enjoy their short term stay at our home. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2404694","Arnie &amp; Lorraine","https://a0.muscache.com/im/pictures/6640e8a2-20d8-48d0-8faf-7f3c6f1b48f9.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Visual Art Contemporary Craft, Artist.","Hello,

We are creative, down to earth and open-minded couple, who enjoy a healthy lifestyle and a vibrant home.    There are much happenings in our home, from photo shoots, to art salons to creative dinners and occasionally short film making.

We have been greeting and hosting guests from all over the world, for just over three years. We host a wide variety of people from all over the world.  Our home is a unique step into an old world reality, and we enjoy sharing it with others.
 
As an alternative,  if you are after the privacy of a one bedroom Paddington pad, have a look at our listing at: https://www.airbnb.com.au/rooms/3795958?preview

We hope you enjoy your time in our home!
Arnie Lorraine");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("72988681","Marissa","https://a0.muscache.com/im/pictures/user/e61af89c-296d-4009-96ad-26097d4a5477.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Connected account.","Aloha,

My name is Marissa and I work in Public Relations for a fashion online retailer. Would love to socialise and taking interest in travelling, food and architecture and homeware design as its my passion

Bonus FREE Travel Credit: If you are NEW to Airbnb, click this link:
https://www.airbnb.com.au/c/taym106 to sign up and claim up to A$55 Free Travel Credit for your first Airbnb booking (Note that this is subject to Airbnb Rules )");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3609508","Elise","https://a0.muscache.com/im/pictures/user/fe648efe-0c57-4ade-831d-9406a0fe7d29.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Property Manager.","Based in Bondi Beach, I enjoy the outdoors and exploring natural landscapes. Passionate about arts and crafts, I enjoy creating basketry from plant based fibres. I also love designing furniture from recycled items. I like to travel in good company and find inspiration from new creative activities from around the world. 

I am available to guests within 20 minutes from their property. I provide a 24 hour point of contact for guests. I do my best to keep the place perfectly maintained and hire professional cleaners  to make sure the place is in impeccable condition for incoming guests. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51166872","Julia","https://a0.muscache.com/im/pictures/user/f54b4bf5-d12b-4a55-bfa4-492c9b9301b3.jpg?aki_policy=profile_small","Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("59293853","David","https://a0.muscache.com/im/pictures/ef1ba9ce-ed61-45d9-aa6a-4d148f96aa57.jpg?aki_policy=profile_small","Speaks English.","Quiet and laid back.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("975628","Vivien","https://a0.muscache.com/im/pictures/user/10a80d1a-227c-4fcc-87d5-6bc6458c450a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I'm Australian Nationality, Chinese background.可以國語溝通 Profession in film, fashion, architecture, last job position was production manager for an international fashion company. Currently working on property development projects, devoting time on voluntary works and live in Sydney.

I'm a responsible caring person, believe in doing good causes in life, non smoker, like to keep places clean and tidy. 
Hobbies: skiing, reading, sailing, visual art, traveling, dining, architecture and film.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("163511421","Excelsior Serviced","https://a0.muscache.com/im/pictures/user/ba8bdae0-9a83-4853-9e8b-fd9e9be3d226.jpg?aki_policy=profile_small","Lives in Glebe, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60423487","Craig","https://a0.muscache.com/im/pictures/8ef2ab45-5c1a-4b49-8265-d98b09779b95.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We are a gay couple with twin toddler daughters and a cat, George.  We continue to be avid travellers with trips planned this 2016 to backpack Cambodia and Bolivia and to Winnebago the east coast of the USA. 

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20493747","Bee","https://a0.muscache.com/im/pictures/user/fbf9c835-fe6d-441d-94d7-129c00f73049.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi welcome to Sydney!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("197658869","Sky","https://a0.muscache.com/im/pictures/user/a8b10add-9e13-45dd-8d48-7adbb48a9b9e.jpg?aki_policy=profile_small","Lives in Rhodes, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("204418797","Joe","https://a0.muscache.com/im/pictures/user/f4b30743-0e09-47d6-b0cc-aa3d38961ae1.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,中文.","Hi Guests, 
Thank you for considering staying in my place during your visit to Sydney. Whether you're coming for business, pleasure, or to visit family, I think you will enjoy my apartment and my neighborhood. 
I've been here in Sydney since 2009. I've had graphic design and lifestyle products design businesses for years and I'm enjoying adding Airbnb hosting to my daily routine. I've travelled quite a bit and enjoy having the world come to me!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("196683909","Oaks Goldsbrough Apartments","https://a0.muscache.com/im/pictures/user/d79fa095-a540-4692-a299-77938212e385.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","For travellers in search of centrally located Darling Harbour hotels with free Wi-Fi in one of Sydney’s most sought-after locations, Oaks Goldsbrough Apartments in Darling Harbour is the perfect choice. Combining comfortable, self-contained apartments, this hotel is perfect for every kind of trip; whether you’re in town for one night or looking for an extended stay.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("86817437","Lachlan","https://a0.muscache.com/im/pictures/user/248f2ce1-ded5-488b-8f42-7f117fe10274.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3437247","Max","https://a0.muscache.com/im/users/3437247/profile_pic/1346480720/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,Español.","My name is Max.  I enjoy the theatre, ballet, the arts and other wonderful events of Sydney.  Knowing what to do, where to dine out and how best to get around is my speciality for helping new comers enjoy the delights of Sydney and nearby areas.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5332186","Glen","https://a0.muscache.com/im/pictures/user/09371bea-ff46-415c-aab8-040f5102a8f7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Digital Media.Connected accounts.","Digital media professional living in my home town of Sydney hosting lots of amazing people in my apartment over the last couple of years.

Love to travel ... everywhere is my only destination. Enjoy meeting people from all over the world and always planning a new trip to somewhere new.

You find me at home sometimes otherwise I out and about on the football pitch, cycling, attempting to surf or flying down a mountain on skis. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("52357636","Matthew","https://a0.muscache.com/im/pictures/user/06a46ff1-9b0f-4e19-92ca-9c5acedf0d3c.jpg?aki_policy=profile_small","Lives in Sydenham, Australia.","I’m the father of 3 beautiful little girls and husband to one sexy wife. From the Inner West of Sydney. We have 1 listing which is a full time Air BnB property and live nearby. We use Air BnB both for traveling and hosting.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5215877","Milan","https://a0.muscache.com/im/pictures/user/38a6f966-92d8-4191-a59f-0938c4178d59.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hi! I'am Milan. I would like to welcome you in Sydney. As a host I manage my own properties as well I manage many of the best properties in Sydney for others. Sydney is  truly beautiful place to stay and discover and I hope to see you soon. Please feel free to contact me anytime. Milan
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("86443890","Samantha &amp; Seb’S","https://a0.muscache.com/im/pictures/062e8d19-f89d-4a9b-afc4-36ebf125a744.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Entrepreneur .","My partner and I enjoy some really simple pleasures in life good food, friends and sleep. We work quite a bit to save for our future goals in life and like to think of ourselves as hard workers. We both would like to retire at 45 at the latest, hopefully we can make that happen. 

Always open to a good chat and banter!! 



");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61071881","Zuzana","https://a0.muscache.com/im/pictures/8b94c440-c70e-46e7-a0c4-f0e75518a30a.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Čeština.","International student living in Sydney. Traveling often, offering my amazing home to like minded. Loving the beach life and you'll love it too.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("167285630","Flora","https://a0.muscache.com/im/pictures/user/1130e6cf-0f32-46de-bb5e-3128d9887075.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hi everyone, I’m Flora. An easy going girl. As an BNB host, I’m focusing on provide high quality accommodation at affordable price. Hope will see you soon.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20953030","Dan","https://a0.muscache.com/im/pictures/ec3012bb-87ff-4464-94ad-ca4eafccc0e0.jpg?aki_policy=profile_small","","Sports producer from Sydney.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8734842","Gerrit","https://a0.muscache.com/im/pictures/user/d587488f-196f-4f06-99f2-6d4d8281a13b.jpg?aki_policy=profile_small","Lives in Germany.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11454671","Sn","https://a0.muscache.com/im/pictures/154414fb-1251-4609-a6e9-c751d77da581.jpg?aki_policy=profile_small","Work: Bank.","I'm a 30 year old professional who enjoys travelling and discovering new places, and meeting interesting people. I'm looking forward to my first trip around Asia later this year. This is why I'm letting my place out to people who want to discover beautiful Sydney to help save for the trip. I'm very easy going and laid back, so any questions, please feel free to ask.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("74096318","Ray","https://a0.muscache.com/im/pictures/ea6d8374-1b9a-4779-95c3-0bc70c6d0005.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.","Hi Guests, 
Thank you for considering staying in my place during your visit to Sydney. Whether you're coming for business, pleasure, or to visit family, I think you will enjoy my apartment and my neighborhood. 
I've been here in Sydney since 2009, and I can help you figure out what to do and how to get around. I've had graphic design and lifestyle products design businesses for years and I'm enjoying adding Airbnb hosting to my daily routine. I've travelled quite a bit and enjoy having the world come to me! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1281892","Dave","https://a0.muscache.com/im/users/1281892/profile_pic/1417678745/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Connected accounts.","English born but now call Sydney Australia home. I love to travel, cook, ride my bike on the road or in the bush, go to music festivals, see bands, DJ's, performers, ski in the snow, eat out, take photos, spend time with my friends, and enjoy life. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25870957","Lesley","https://a0.muscache.com/im/pictures/user/693426a3-450c-4a30-ad3e-0311a68df809.jpg?aki_policy=profile_small","Lives in Alexandria, Australia.Work: Volunteering with Oz Harvest Food Rescue..","Sharing good food and wine with my partner and friends, Sydney Summer Traveling the world");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51206743","Annie","https://a0.muscache.com/im/pictures/4117e126-31e7-4fe7-9aaa-d2dfdfb7b4bc.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("136868139","Adam","https://a0.muscache.com/im/pictures/user/2d7a45a6-5a89-4bb9-a663-aab0c525c0f4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("33150818","Miriam","https://a0.muscache.com/im/pictures/3218f466-d457-42d1-aabb-230926a07429.jpg?aki_policy=profile_small","Speaks Deutsch,English.","Hi, I’m Miriam! I have been a Super Host with Airbnb for quite some years now. Travelling, wether on holidays or business, can be such an exciting and fun experience. Choosing the right place for you is key to having a comfortable and great stay. I absolutely love hosting guests from all over the world and will do my best to make everyone feel welcome and right at home. I am looking forward to hosting you!
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("154618936","Sydney Boutique","https://a0.muscache.com/im/pictures/user/049ce6e0-3ac8-466c-83c5-62dc600c5ab8.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("166091307","Rhonda","https://a0.muscache.com/im/pictures/user/777a9882-631a-4e59-89f9-740152a93a97.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95215056","Franky","https://a0.muscache.com/im/pictures/user/4e4dc6a1-1cd2-4b08-925b-e31ab2544b57.jpg?aki_policy=profile_small","Lives in Australia.Work: Bussiness owner.","Hi GUYS,
I WILL DESCRIBE MYSELF WITH FEW WORDS MEANINGFUL....
IM HONEST , HUMBLE CARING Man THAT ALWAYS DO MY VERY BEST TO BE HELPFUL TO ANYONE, I LOVE THE GIFT OF LIFE, TRAVELING ,TRAINING, MEETING NEW PEOPLE ABOVE ALL RESPECTING ALL....
❤️❤️❤️❤️❤️❤️❤️");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("38222062","Rebecca And Luke","https://a0.muscache.com/im/pictures/a14b3872-0868-4f08-84b8-5f29d04109dd.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Connected account.","Hi! We are Luke and Rebecca and we have been hosting on AirBnB since December 2016 and we love it so far! For us as hosts it is really important to us that we treat guests exactly as we would want to be treated and that means fast communication and providing great value accomodation in the heart of Darling Harbour. We are both fairly well traveled - Rebecca is originally from Ireland and has lived in Germany, the US and Australia (since October 2012) and Luke is from New York and have lived in several states in the US, the Czech Republic and Australia (twice - most recently since August 2012). We have lived in Pyrmont for about two years and love it's small village vibe and its proximity to the city. When travelling we love adventure! You are unlikely to find us lounging by the pool! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47822515","Konrad","https://a0.muscache.com/im/pictures/user/c7c1f8f1-b476-46dd-8008-6b033c05f346.jpg?aki_policy=profile_small","Lives in Manly, Australia.","Occasional Traveller ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152911570","Cassa","https://a0.muscache.com/im/pictures/user/5cc14d66-70a4-49f3-ae2e-1c26e4547a71.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("268525206","Van","https://a0.muscache.com/im/pictures/user/c68d6b72-4462-436b-b973-fbbd0c140994.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("122449858","Quan","https://a0.muscache.com/im/pictures/user/647614b8-2b04-48eb-9e26-aed1e9b97c0a.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("75043828","Joel","https://a0.muscache.com/im/pictures/f5617e35-8796-4472-bafd-5684139b7e75.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español.Connected account.","Hi,

My name is Joel. I am from South America but I have been living in Australian for the last five years.
I am an IT professional working full time in the CBD, I normally arrive home after 6:00 pm.

I am a friendly and respectful person and I am always up for a good conversation! I also respect other's privacy which is is very important!



");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28662970","Sue &amp; Gary","https://a0.muscache.com/im/pictures/d5866446-f53e-41cd-bcb7-684e30b81a6f.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50565626","Sante Livia","https://a0.muscache.com/im/pictures/d5a09bb6-2680-4e71-b968-8845fba16e0e.jpg?aki_policy=profile_small","Speaks Italiano.","Sydney retirees who love the heart of the CBD, and sometimes our daughter gives us a hand as co-host.

We love theatre, music, food and wine... there is nothing better than catching up with old and new friends.

We have been an Airbnb host since December 2015.... and is there is absolutely nothing we enjoy more than welcoming people to our fabulous city and meeting new people. 

We are super friendly and will bend over backwards to help you have the best stay possible.

Have travelled to Italy, Austria, Switzerland, Germany, Thailand, Myanmar,  Indonesia, Mexico, Cuba, Guatemala,  Belize, Honduras, Galapagos Islands, Argentina, Uruguay, England, Scotland, France, Spain, Morocco, Turkey, Syria, Lebanon, Jordan, Egypt, Guinea, Sierra Leone, Madagascar, USA, Hong Kong, China, Singapore … Buthan is next!

Be kind to everyone - Jim Henson");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("106208337","Thanh Binh","https://a0.muscache.com/im/pictures/3bef69fb-6b87-4091-acc8-49fb0eefc633.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I would love to share my experiences in Sydney with all my passionate travellers. Food from every culture is available in this multicultural city.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("35454201","Meredith","https://a0.muscache.com/im/users/35454201/profile_pic/1434020777/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Wife, mother, daughter. Love the ocean, nature, fine wine and food, exotic travel, good conversation and laughs with friends");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4367105","Jan","https://a0.muscache.com/im/users/4367105/profile_pic/1355184220/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Français.Work: Travel/teaching.Connected account.","I am a writer/performer who loves traveling, singing, reading, writing and hanging out with fellow creatives. I travel often to Asia to literary and performance festivals and collaborate often with Indonesian artists, musicians, and poets.
I also take groups on writing retreats to Bali, Laos, Cambodia, Burma, Morocco, Fiji.
I am interested in Eastern religions and culture, but have also spent time in USA and Canada in the 70's hitching from LA to Vancouver and across to Montreal, so I have a lot of great traveling stories.
These days I don't hitch but I love meeting fellow travellers and exploring new places. One of my favorite destinations in Luang Prabang in Laos, I lead a writers retreat there every November.
My life motto is passed down from my mother to me  - Happiness through creativity. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("46813147","Truman","https://a0.muscache.com/im/pictures/8955ef6d-81ad-4131-848c-1a21ce7e0e18.jpg?aki_policy=profile_small","Speaks English,Français.Work: Lawyer.","I'm a young lawyer who loves learning new things.

I'm the kind of guy who turns up for a year-long trip with a tiny backpack and no plan.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183086309","Carlos","https://a0.muscache.com/im/pictures/user/4d585003-f0e1-4aa6-b6ad-694fc60a822c.jpg?aki_policy=profile_small","Lives in North Sydney, Australia.Speaks English,Español.","I'm Carlos. My wife and I love to travel. We've been to so many places around the world, and we found out that the most important thing is feeling at home even traveling. That's why we decided giving you the opportunity to enjoy a fresh and minimalist place where you will feel nice and comfortable. 

Our favourite thing about our home is the location. Being so close to shops, restaurants, bus stops, wharf or train stations is a privilege that we are blessed with, as we are able to say that we are close to everywhere. 

We just would ask you one thing: enjoy and treat our lovely home as you would like us to enjoy and treat yours.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50183566","Petra","https://a0.muscache.com/im/pictures/350c2c96-7fa3-4328-83a8-6f1e69ba963f.jpg?aki_policy=profile_small","Speaks Deutsch,English.Work: Team Leader, Group Home.","Hi,

I love the older style of my home. The house is a rental that i have been living in for 8 years now. It's in a nice area, but we are pretty much the only unrenovated house. My flatmate, Morten, has been a close friend for 20 years and we enjoy living together again after 15 years.

I am into sustainability and cutting down consumer waste so much of my furniture is rescued. 

At home I love my garden. I always have something on the go. This summer is tomatoes, eggplant, capsicums, zucchini and kale. There is some parsley, basil, sage, thyme and chives - feel free to help yourself and add some to your meal. I have slowly been trying different methods of garden beds to see what works - this year i have made mini Hugglekulture beds. They seem to be cracking along.

We are pretty relaxed and quiet around the house. No loud music - respectful of eveyones sound space. We love to have a chat. Sometimes i play the guitar or ukulele in the garden.

Out and about i love the beach, cycling, getting out to live music and shows and interesting community events.

I work in disability care close to home. I have travelled in South East Asia, India, US and Mexico and lived in Japan for 2 years teaching English.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45941764","Tony","https://a0.muscache.com/im/pictures/0acf6aec-5675-4cb8-961d-75ecede4a177.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","I’m a caring, considerate and trustworthy person who hits gym a few times a week to keep fit and active. I work as an accountant for a Software company.

I love travelling experiencing different cultures. I’ve been to North America, Europe and most of East Asian countries so far and I’d love to visit more places. 

I’ve had some excellent Airbnb experiences and I think Airbnb is a great way to meet people and make new friends.  Hopefully I can form some sort of connections with people from all around the globe through Airbnb. I look forward to hosting you in Sydney.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("220874500","Lena","https://a0.muscache.com/im/pictures/user/572599b3-b86d-498d-aac4-8f8f8db17939.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks Português.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53765359","Marija","https://a0.muscache.com/im/pictures/user/c439933b-85c7-40bd-b5da-97a050f97f25.jpg?aki_policy=profile_small","Lives in Ashfield, Australia.Work: Massage therapist .","Hi, Im Marija and I am a Massage therapist with a background in Early Childhood education also. I enjoy reading, yoga, meditation and cooking. I enjoy travelling and meeting new people. Hope to meet you soon! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21987782","Eva","https://a0.muscache.com/im/pictures/user/d09b6d9c-4cd5-4f2e-9cff-e644cbb993d2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Travel Lover! 18 countries so far.
Published 2 travel books (Chinese).");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("229824965","Chris","https://a0.muscache.com/im/pictures/user/53556491-d570-41a8-8668-b1adcf232105.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11240160","Thomas &amp; Amber","https://a0.muscache.com/im/pictures/user/058738fc-b8f9-4cd9-a641-3e74315dbbee.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,Français,中文.Work: Architect / Cook .Connected account.","We are 31 and 35, we came from France and Taiwan few years ago and will spend a while in Australia. We live in Sydney since two years, joined by a little boy end of 2017. While we travel around, we keep planning to discover the great places of this huge country!
We open our place to share experiences with people from all around the world, feel free to drop us a message anytime, we try to answer as fast as we can :)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("104204096","Chankana","https://a0.muscache.com/im/pictures/2d47e047-aa00-47fa-905b-d9b747ca749a.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15354654","Ollie","https://a0.muscache.com/im/pictures/user/39d1099a-6d17-4f9b-8902-65b7c42b0a19.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Community Health Promotions Officer Aids Council of NSW, Massage Therapist .","Love theatre, music, food and wine. Nothing better than catching up with old and new friends.
Am a self-employed masssage therapist, so feel free to hit up for a relaxing massage to ease all your aches and pains after those long plane flights.

Have been an Airbnb host since September 2014.... and is there is absolutely nothing i enjoy more than welcoming people to my city and meeting new people.
Im super friendly and will bend over backwards to help you have the best stay possible.

Have travelled to Scotland, UK, Indonesia, Thailand, Dubai and Germany.

Be kind to everyone - Jim Henson

LGBTI Friendly :-))");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15542638","Leenie","https://a0.muscache.com/im/pictures/user/17f60b08-3fb7-47cf-9dc7-2fd787872b5f.jpg?aki_policy=profile_small","Lives in Waterloo, Australia.Speaks Español.Work: Fox Studios.","Leenie and Erick are life lovers. We travel a lot. Both artists, Leenie works in the music/film industry and Erick is an Interior Stylist/Designer and actor. Home is a sanctuary. We are clean and considerate. Leenie is a coffee snob. Erick is hilarious. Together, they salsa up a storm.


");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("69159657","Michael And Alina","https://a0.muscache.com/im/pictures/2e60b437-d17e-4330-90b5-958882958567.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi, We are Michael and Alina.
It's our first time to host friends from all over the world.
Hope we'll have a good time in Sydney!

Michael and Alina");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25080358","Julie","https://a0.muscache.com/im/users/25080358/profile_pic/1419229220/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Work: Dance teacher.","Hi, and welcome to our home. My husband Gary and I have lived in and around Leichhardt all of our lives. We have been in this home for over 30 years and built the cottage at the end of our yard many years ago as a home away from home for each of our 4 children as they grew and studied. Well, they've all grown and moved on now but we're still here! Working full time, we also love to travel and dine out. I am sure that you will find us easy going and friendly hosts! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1936434","Thais","https://a0.muscache.com/im/pictures/794cdf58-2ae5-4726-944b-c7e76698c9bc.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks English,Português.Connected account.","Me and my husband Andrew love to travel and we go away a lot. We started by using Airbnb to rent our place out when we were away, and became really passionate about hosting and sharing our home. 
I love to learn about people's stories and journeys whilst sharing my neighbourhood and its wonders.
I aim to give guests the experience I like having when I am travelling, the opportunity to live like a local in a unique, clean, convenient and homely place.
We care a lot about sustainability and the environment. We love travelling, getting to know new cultures and people, we love hiking, surfing, yoga, skiing, snorkelling, the movies, a good book and good food and wines.
I try to make each day count. 
I choose to be happy. 
I believe we must be the change we want to see in the world.
I believe no one is better than anyone and therefore we must take care of one another.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37183518","Kerrie","https://a0.muscache.com/im/users/37183518/profile_pic/1435712386/original.jpg?aki_policy=profile_small","Work: Freelance Art Director.","I am a wife, mother, Art Director / Designer and Airbnb accommodation manager. I live and work in the Redfern/Darlington area of Sydney and love it! I have lived in the area for about 15 years with my husband and we wouldn't live anywhere else. We love to travel, spend time with family and friends and are into great design, art, architecture and yoga. We love doing what we do and have a great time doing it ! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26709417","Silvia","https://a0.muscache.com/im/users/26709417/profile_pic/1423038950/original.jpg?aki_policy=profile_small","Lives in Rushcutters Bay, Australia.Speaks English,Italiano.Work: Real Estate Agent.","I am a Real Estate Agent who works locally and so I know the area extremely well and like to share my local knowledge. I enjoy keeping fit with Yoga, Dance and lots of Harbourside walking. I love meeting new people and airbnb gives me these opportunities. I hope you will enjoy my home as much as I do!

For those of you travelling from Italy: Io parlo italiano.  Benvenuti a casa mia!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10133067","Simone","https://a0.muscache.com/im/users/10133067/profile_pic/1419116046/original.jpg?aki_policy=profile_small","Speaks English,Español,Português.","I'm a busy friendly and smily person with a positive attitude towards life. 
I emphasise a healthy lifestyle but it doesn't rule my life. I love traveling, camping, outdoor activities, live music, cooking, dinning out and getting to know new cultures and their cuisine.

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("71193770","Shuang","https://a0.muscache.com/im/pictures/0d696f26-a885-4f2f-a277-9cf0edee9533.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("154157237","Lana","https://a0.muscache.com/im/pictures/user/6e5eb9c7-724f-482e-b97f-0fa789372ad1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Русский,Українська.","Greetings to Everyone! 

Always very pleased to meet new visitors from across the Globe and our National friends! 
I grow up  and graduate from National University of Ukraine with Master degree of Linguistics, English and English Literature and Bachelor degree of Applied Mathematics. After I graduated I travel around the globe and work in hospitality. I work in the best 5* hotels around Europe, Middle East, Asia, America and Australia and have done so for over 10 years. I have moved to Australia in 2014 as part of my management program and get full time position as a manager in 5* hotel after successfully completing it. Hospitality is my passion and AirBnb gives me the opportunity to continue this with my own property.
I always make sure that guest get unforgettable experience with their stay and always pay attention to details to meet each guest expectations.

My life quote is:
It has been said that something as small as the flutter of a butterfly's wing can ultimately cause a typhoon halfway around the world - Chaos Theory
Small things can change the world ☺️");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("774358","Seli","https://a0.muscache.com/im/pictures/19f6da6a-7ace-4406-b933-a2175a6b9fb1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Love life in the sunshine. Forever chasing summer, glorious moments and the perfect sunset.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("144757307","Jason","https://a0.muscache.com/im/pictures/f7bccdb1-a090-4f5e-979f-db87c7671387.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.Speaks English.Work: Higher Education sector.Connected account.","Friendly working professional, enthusiastic snowboarder :)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15118978","Husan","https://a0.muscache.com/im/pictures/user/9c19e158-d942-45e0-a792-4891921f9b8b.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("84810518","David","https://a0.muscache.com/im/pictures/ec5a92f8-702a-4ddb-929d-83958490d2d9.jpg?aki_policy=profile_small","Lives in Summer Hill, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("176661321","JY &amp; Shane","https://a0.muscache.com/im/pictures/user/936646b3-4404-4daa-b1b7-44791f83d429.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Work: Nsw government .","We are an easy going couple in our early 30s we love the ocean and outdoor adventures.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("127451501","Stephen","https://a0.muscache.com/im/pictures/0a3c7b99-1a3d-453b-bd9c-2486ced7fe89.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Work: The Canine Butler.Connected account.","I'm a single guy, self employed as The Canine Butler working with dogs in the local area - walking, day care Dogbnb/HomeStays.

My life would be empty without my best mate sidekick Russo, he is 21kgs of Groodle awesomeness licks. 

Three things I'd find it hard to go without: Technology, Bacon Wine");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22177197","Kathryn","https://a0.muscache.com/im/users/22177197/profile_pic/1440328575/original.jpg?aki_policy=profile_small","Work: Producer.","We are a semi-retired active couple living the dream of our lives. Ron is an elite athletics coach working with young gifted athletes (sprints and hurdles) after a very long a exhausting career as a newspaper editor. His hobby is now his career. After returning from the world of events (Sydney Olympics, APEC and World Youth Day) Kathryn turned to stand-up comedy and ran her own comedy room for the last 8 years (with Ron). Her passion is any live performance but with special bent toward storytelling. Most of our guests are young (around the same age as our adult children) so we figure that they want plenty of room, independence and self direction. We're just very happy to help if asked. The motto that means the most to me is a life lived in fear is a life half lived.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("135573101","Alba","https://a0.muscache.com/im/pictures/90e4b086-71c6-4af0-9f73-23bff2edd59a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,English,Español,Italiano,한국어.","Hi, my name is Alba. 
I look forward to welcoming you to my beautiful home close to the Sydney`s main tourist attractions!
Please feel free to contact me, if you have any questions regarding the property. 
Happy stays and safe travels -:)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("97439968","Jean","https://a0.muscache.com/im/pictures/user/d1efc412-7d25-4d5a-9efd-4faf3cffbe3b.jpg?aki_policy=profile_small","Lives in Caringbah, Australia.Speaks English,中文.","Couple works in tourism industry, love travelling and meeting other travelers. We have been to lots of places around Australia and the world; But our favorite place would still be Sydney, even though we love the atmosphere of London and enjoyed strolling on streets of Paris and San Francisco. But landing at Sydney and take a deep breath of the fresh air always makes us so happy to be home again. 
Our next trip will be around Europe hopefully when our daughter gets a bit older and able to travel with us on long haul flight (Website hidden by Airbnb) 
 I used work for travel agency and then in world famous Airlines as sales executive and management, and also worked for world financial institute looked after the most prestigious customers around Asia and Pacific area (Website hidden by Airbnb) like meeting people and enjoy to put a smile on people's face, especially when guests have wow feeling when they check in, it just makes me happy! : (Website hidden by Airbnb) I love good food (spicy), movies, reading a good book, and meeting interesting people (Website hidden by Airbnb) 
We are tidy, clean and respectful people, our place is well located and maintained,  we take the cleaning level seriously and always make sure all equipment especially towels and linens are washed and disinfected properly to ensure guests a happy staying experienc (Website hidden by Airbnb) ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48015860","Alex","https://a0.muscache.com/im/pictures/c870ad82-a014-4d41-8226-a82e25f30d9f.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87388224","Chris","https://a0.muscache.com/im/pictures/86268ac9-ca10-4c43-8db0-6fe065247933.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2988780","Sylvia","https://a0.muscache.com/im/pictures/user/0a3e2b62-d401-403a-8c0c-0e41b6a8e10b.jpg?aki_policy=profile_small","Lives in Leichhardt, Australia.Speaks English,Italiano.","G'day G'day
Well that's me on the left and my husband Anthony on the right.
I'm origonally from Scotland and Mr Right (Ha Ha)  from Italy.
A nice match
We are both easy going and enjoy meeting and hosting guests from all over the world.

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21538589","Catherine","https://a0.muscache.com/im/users/21538589/profile_pic/1443431777/original.jpg?aki_policy=profile_small","Speaks English.","This is me in fancy dress as Frida Kahlo, at a halloween party, complete with monobrow and mustache.  
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1920131","Dan","https://a0.muscache.com/im/pictures/5887f360-93a3-4fdc-81cc-ce63d0331d31.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("114934361","Tarek","https://a0.muscache.com/im/pictures/1cced785-c2ce-45a8-80d2-f2a2b9ecc181.jpg?aki_policy=profile_small","Lives in Pyrmont, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2351093","Mirko","https://a0.muscache.com/im/users/2351093/profile_pic/1336798320/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Italiano.Work: ESPRESSINO.Connected account.","Italian but been living in australia in the last 10 years 
alway s worked in restaurant s and bars around the world
such as florida ,new york and london .
now cafe owner in sydney 
and working into opening a trendy italian restaurant
love food wine and traveling 
real strong  passion in cooking and talking about food 
love been positive and active 
sport a do ;
running swimming and kickboxing
3 years of capoeira 
love to  go out and socialise
like cheese and wine with a nice chat with great company 
And will  make sure you enjoy your stay in sydney ....
MIRKO");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5169464","Spencer","https://a0.muscache.com/im/users/5169464/profile_pic/1365246877/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Self Employed - Cafe Owner.Connected account.","Professional guy that loves to travel!  Enjoy discussing travel stories.  I have lived in Sydney for 15 years and love the city.

Always keen to chat about the sort of experiences you would like while staying in Sydney and help to plan Itineraries.  Whether it be a visit to Circular Quay or the Museum of Contemporary Art or perhaps a visit to the beaches of the Central Coast or down to Kiama to see the blow hole.

Went to school on the Gold Coast in Queensland and have family there, so may be able to help with forward planning your Australian trip.

Have also lived in regional centers in New South Wales, Victoria and Queensland - happy to advise holiday spots.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5314080","Claudia","https://a0.muscache.com/im/users/5314080/profile_pic/1423217843/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.","I am Australian and was born in Sydney. I have lived in France before and I adore French culture and language.I run a boutique French Class business. I enjoy reading, films, travelling and meeting people.
When it comes to hosting people in our home, we are very reliable and always keen to offer a wonderful experience in our beautiful home and city!
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25419716","Anthony","https://a0.muscache.com/im/pictures/df0adf5f-48a1-4853-ab2e-bd4b80eb7c2c.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,日本語.","Easy going guy, loves to work hard and have fun when he travels. 

Loves basketball, snowboarding and scuba diving");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14147903","Hannah","https://a0.muscache.com/im/pictures/user/b2d8c260-f314-4462-8cd5-f0d181f5de00.jpg?aki_policy=profile_small","Lives in Rose Bay, Australia.","Hi I'm Hannah. I love being an Airbnb host and sharing my apartment in Kirribilli with people from all over the world. I am a born and bred Sydney-sider. I have lived in the UK, Europe, the US and middle east. I now live back in Sydney in the Eastern suburbs with my lovely husband - Mark - and my two (super-cute) young daughters. I love travelling and experiencing different cultures and new adventures. Although with two young kids my travels are less frequent than they used to be. This year we will be visiting Hong Kong and Hawaii.

I pride myself on looking after my guests well with clean and comfortable accommodation that is located in one of the best parts of Sydney. Our apartment in Kirribilli is right on the harbour, overlooking the Opera House.

I'm always available to answer any questions you have about what its like to spend time in Sydney and where you may like to spend some time whilst you're here.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13059157","Bert","https://a0.muscache.com/im/users/13059157/profile_pic/1398253553/original.jpg?aki_policy=profile_small","Speaks English,Nederlands.Work: Dealer in old wares and bric a brac..","I have lived in Sydney since 1969, after moving here from Holland.  I have lived in Queensland and Western Australia, but always came back to Sydney.  I love my inner city apartment, which I use as a bachelor pad to escape the boredom of living in the suburbs.  But when I'm not using it, I'd like to share it with visitors to the city,  so they can experience Sydney from the heart.  I'd be happy to talk to you about antique French cars; to point you to the real Sydney; or to share travel experiences.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("403434","Gary","https://a0.muscache.com/im/pictures/8519697d-3a51-4746-a4e6-e88febb013eb.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Connected account.","Easy going professional. Enjoy all things travel and music!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("718063","Johanna","https://a0.muscache.com/im/pictures/user/27487134-340c-4952-aeed-6c6f2572fadc.jpg?aki_policy=profile_small","Lives in New York, NY.Work: journalist/meditation teacher.","
I love hosting people at my place in Potts Point,  Sydney, AUSTRALIA. And you’ll find that even though I am traveling a lot and we may not meet in person, I am very responsive though the Airbnb App. 
I am based in New York City and run meditation business in Manhattan and Brooklyn, Sydney and Melbourne. I have been a journalist for more than 20 years. 

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("65825639","Thomas","https://a0.muscache.com/im/pictures/1f0c89c0-8fe1-4ba7-8380-cee2129493c8.jpg?aki_policy=profile_small","Connected account.","Sydney city local interested in Sailing, surfing, swimming and exploring the area.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("402292","Helen","https://a0.muscache.com/im/users/402292/profile_pic/1397168958/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.","We are from Ireland, but have lived in Sydney for over 30 years.  We enjoy travelling, theatre, movies, nature, walking, and meeting  people. We are happy to help in any way we can, but you can be assured of total privacy if you just want to relax and do your own thing.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("96643264","Tracey","https://a0.muscache.com/im/pictures/user/b0ef47c4-3c79-4787-8e89-e9c0251c567b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5825159","David","https://a0.muscache.com/im/pictures/user/667c1245-179b-4c2c-a112-ea7d991ad67b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Enjoy traveling and meeting new people. Love to try new places everywhere I go and enjoy a drink or two.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105193068","Victoria","https://a0.muscache.com/im/pictures/436576b2-9d4a-4cbe-a73c-e7112884816d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Channel 7.Connected account.","Big heart, big hair, big adventure. Respectful traveller looking for new experiences, connections, and places. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20343579","Larry","https://a0.muscache.com/im/users/20343579/profile_pic/1408611151/original.jpg?aki_policy=profile_small","Work: Accountant.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8939894","Alastair","https://a0.muscache.com/im/pictures/5fec717a-23f7-4ded-861f-a87d4a275049.jpg?aki_policy=profile_small","","4 continents, 27 countries, 60+ cities and thousands of kilometres covered, I have accrued an endless supply of memories abroad that I wish to expand on through my active involvement within the dynamic and exciting Airbnb community. 

An infatuation with travelling abroad to foreign destinations, seeing unique sights and experiencing different cultures and cuisines is a universal epidemic that crosses continents. 

As a host I take great pride in sharing the beautiful sights, spectacular views and glowing warmth of my home city of Sydney.  Having been a member since September of 2013, I have thoroughly enjoyed playing an active part in the Airbnb Community and welcome you to my humble abode.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48538672","Steve","https://a0.muscache.com/im/pictures/1fcf6e56-27b8-4645-9d89-bb0b841e86ff.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi, My name is Steve Banks. I have lived in Coogee for 15 years. I am a license real estate agent. I have traveled to most parts of the world. But i love Coogee the best. . If you also need me to drop you off at the airport i will do that for you too for $40 to domestic and international airport
All accommodation is secure once it has been booked because I am the owner of the properties and they are not sub leased like a lot of people do on Airbnb. If you want no risk book with me");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("97196746","Chris","https://a0.muscache.com/im/pictures/user/f73ec1bb-f954-48c3-967b-280dc8eab96c.jpg?aki_policy=profile_small","Lives in Mascot, Australia.","Friendly and easy going. We will strive to make your stay a pleasant one.  We just ask for the basic rules to be observed.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("30069789","Alex","https://a0.muscache.com/im/users/30069789/profile_pic/1427411468/original.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15885982","Julian &amp; André","https://a0.muscache.com/im/pictures/28bb682b-1697-4337-a99e-0ffa99859a6f.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español,Português,Svenska.","Hello, and thank you very much for having a look at our profile :) 

We (Julian Wong André Cardoso) are a married couple of dreamers. We're also hosts, travellers, performers and teachers. Along with a wonderful little team, our aim is to create spaces for people to find some peace, have a little fun, touch the ground, and hopefully learn a thing or two. 

We live, host and teach in three locations in the Sydney region. In the heart of the city are our Fig Tree House in Woolloomooloo, and Sycamore Place in Surry Hills. In the gorgeous Blue Mountains is our Secret Valley Escape, about 2 hours away. We're constantly bouncing between the city and mountains, and it makes us very happy to share them with people from all over the world. 

--------------------------------------------------------------------------------

Julian, a native Sydney-sider, travels extensively and works as a performance artist in dance, music and physical theatre. He is also a practitioner of the Feldenkrais Method, which is a movement based learning process. His family is from Wenzhou, China, and he is a total sucker for food. 

André is a Portuguese-American who went to uni in Sweden, and was brought to Australia by love. He likes long walks in the wilderness, teaches yoga and meditation, plays jazz, and can often be found in a turquoise alpaca sweater. 

--------------------------------------------------------------------------------

As well as hosting, we aim to have regular gatherings where we can share our practices, learn with others, tell stories, and play music together. If you are interested, please let us know! 

Thank you again, and welcome.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155157927","Max","https://a0.muscache.com/im/pictures/user/f1124ec4-5bd6-4eaf-9f7a-61b014a9ba5a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français,Русский.Work: MaxHome Management.","If you've made it here, check out the links below to the listings I host and if you do book with me, you'll be in for a great Airbnb stay! I look forward to hosting you! 
 
 MY AIRBNB LISTINGS:
https://www.airbnb.com.au/users/155157927/listings
 
HAVEN'T STAYED IN AN AIRBNB BEFORE?
Here’s $76 toward your first trip through Airbnb. Sign up and get $55 AUD off a home booking of $110 AUD or more and $21 toward an experience of $73 or more. Coupons expire one year from date of sign up. 
https://www.airbnb.com.au/c/anthonyv5874?currency=AUD

WANT TO HOST YOURSELF?
If you’re interested in becoming an Airbnb Host yourself, click on our referral link below to earn $36 worth of travel credit!
www.airbnb.com.au/r/anthonyv5874
 
MY HOSTING STYLE:
Inspired by and dedicated to Australian contemporary artists, we aim to provide boutique hospitality experience to our guests. Each of our homes are personally handpicked and meticulously setup as the place our guests call home when in Sydney.

A BIT ABOUT MYSELF:
I'm an interior designer based out of Sydney, i have a love for life, travelling, art, food and business. I love my wife and my son more than anything in this world and we go travel and explore the world whenever we have time. We love stay at Airbnb homes and connect with local people. 

Follow us on Instagram maxhomedesign and don't forget to tag us with your beautiful photos! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("106463699","Paul","https://a0.muscache.com/im/pictures/user/063a444a-1e21-4e90-b70c-4b461953ad18.jpg?aki_policy=profile_small","Lives in Lane Cove West, Australia.Connected account.","Hi,
My name is Paul. I live with my partner in a big house and love to have guests stay in the Studio. We are very happy to help with information about Lane Cove and Sydney.

Hope you book and enjoy the Studio.
Cheers,
Paul");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6972499","John","https://a0.muscache.com/im/pictures/93c59384-93cd-4392-852d-69ce138886b5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","33 year old professional that works in the Sydney CBD Monday to Friday.  I enjoy books (invariably non-fiction), vintage movies, music, and am somewhat foodie (homemade and restaurant).  Travelling is also an obsession, and being an Airbnb host is a great alternative way to interact with people from around the world.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45937207","Amy","https://a0.muscache.com/im/pictures/af91da9d-1bdc-4954-96f7-f6d6296b8b32.jpg?aki_policy=profile_small","Lives in Bondi Beach, Australia.Speaks English.","Love to travel!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22269401","Sam And Janelle","https://a0.muscache.com/im/users/22269401/profile_pic/1443518362/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi there we are Sam and Janelle and we are excited by the sharing economy that sites like AirBnB provides. 

Janelle works in aged community care and she looks after the properties you will be booking.

Sam is a professional musician who has  travelled to various parts of SE Asia and I plan on a big European trip next year followed by the USA sometime after that. 

My apartments are carefully selected to provide our guests with the most comfortable stay possible and we hope you enjoy the little touches we put into each apartment. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("371323","Andrew","https://a0.muscache.com/im/pictures/a61598e1-c2ac-45f1-a7cb-8fa94f96f11d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: films.","Wandering filmmaker");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("115069485","Jim","https://a0.muscache.com/im/pictures/1d840035-a84f-4c3b-ba73-6ad6dad7ec4e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I am a  film composer. My partner Gloria is a scientist. Its  a perfect match of opposites. We have a 14 year old son. We are unpretentious and easy going. We survived 25 years in Los Angeles where I wrote scores for horror and action movies and met some amazing creative people. We are active and love to get out and enjoy our great city so we can help you with your plans. We are well informed on history, politics , food and culture and we love to converse about them. We will make you welcome in our house. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("32928357","Mary","https://a0.muscache.com/im/users/32928357/profile_pic/1431160932/original.jpg?aki_policy=profile_small","Lives in The Rocks, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1347315","Riley","https://a0.muscache.com/im/pictures/user/9fe8bb23-d0d7-42cb-9189-e743123982d7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Law student.","My brother Mitch and I are ocean people, and live active lifestyles.
My father John is currently overseas, so I will be the point of contact for your stay.
Rest assured the same quality will be provided, I have been cleaning the apartment and have helped with all operations attached for many years.

I go to University of Technology Sydney, where I am studying law. My brother Mitch attends UNSW studying psychological science. 

We live in the house upstairs, and hope you enjoy your stay!
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("233182849","Mos","https://a0.muscache.com/im/pictures/user/06a49c31-3a3c-4110-89e3-bb25e93dc6ea.jpg?aki_policy=profile_small","Lives in Phayao, Thailand.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21210519","Ilhwan","https://a0.muscache.com/im/pictures/user/97878dbd-025a-45d3-b953-fe933d7085a2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,한국어.Connected account.","Hello

I really want you stay at my apartment comfortably.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("199185428","Clara","https://a0.muscache.com/im/pictures/user/ec0ece5f-5497-4f53-8b99-7759c2b97626.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,Bahasa Malaysia,English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20381574","Winston","https://a0.muscache.com/im/pictures/ad20980f-7c5c-484f-a2de-dbaa75742aa2.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I'm a Sydney local and work in digital marketing. I'm always available to answer questions over the phone or text messages during your stay, but generally prefer to maintain your privacy. I take any feedback seriously and aim to provide a comfortable, clean and peaceful stay for my guests.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("117827419","Mark &amp; Jess","https://a0.muscache.com/im/pictures/7215defa-20d7-4d93-8a51-001d8fc24242.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("41599164","Kath","https://a0.muscache.com/im/pictures/43f4f429-8996-4b50-b1ae-7728da8525e0.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("132391249","Klodian","https://a0.muscache.com/im/pictures/a152503f-330c-4a6e-8987-1a1129772815.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4234278","Eve","https://a0.muscache.com/im/users/4234278/profile_pic/1374579859/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Eve has lived and worked in Sydney all her life and knows all the best places to eat out and what to see

Eve loves being with family and friends, traveling, music, theatre and reading

Eve and her partner Brian live in the main house and are friendly and welcoming. They have two daughters studying to be teachers at University. 



Eve and Brian do have two Maltese cross poodles (Ella and Willie). They're part of the family and are harmless, but they will seek you out and try to make friends with you
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4706929","Sam","https://a0.muscache.com/im/pictures/5c974e2d-c2f4-489d-ac37-7ce4180d0fe1.jpg?aki_policy=profile_small","Lives in Tamarama, Australia.Speaks English.Work: LET US HOST PTY LTD.Connected account.","I'm from Sydney, Australia and Merike is from Tallinn, Estonia. 

We spend most of the year travelling the world as my dream is to be the most travelled person in Australia.

We run a property management company, and are always looking for amazing places to stay at while overseas, so we live and breathe Airbnb.

Please feel free to contact us if looking for help with hosting your property!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95621162","Roezetta","https://a0.muscache.com/im/pictures/396d7e70-06be-4b23-85ed-07b461e992a0.jpg?aki_policy=profile_small","Lives in Northwood, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("114384153","Jared SSP 2","https://a0.muscache.com/im/pictures/user/4391a1de-adad-48f6-a4b0-9e330cd87826.jpg?aki_policy=profile_small","Lives in Melbourne, Australia.Speaks Bahasa Indonesia,Bahasa Malaysia,English,Tagalog,中文.Work: Systems Architect.Connected account.","Your trusted international holiday rental host across major cities. Feel at home wherever you are! LIVE · LOVE · EXPLORE

- Melbourne
- Sydney
- Gold Coast
- Auckland
- London
- Da Nang
- Kuala Lumpur
- George Town
- Johor Bahru

I speak fluent English, Cantonese (广东话), Mandarin (普通话), Bahasa Melayu, Bahasa Indonesia Tagalog.

If the dates you're after are available on my calendars, you may proceed to INSTANT-BOOK em'.

My calendars on AirBnb are always up to date, so if they're blocked and you can't select them, it pretty much means someone else has already booked em'.

Happy stays safe travels :)

View more properties HERE (JL3) https://www.airbnb.com.au/users/114384153/listings

OR HERE (JL3) https://www.airbnb.com.au/s/homes?host_id=114384153 

OR HERE (JL1) https://www.airbnb.com.au/s/homes?host_id=8530753

OR HERE (JLMY) https://www.airbnb.com.au/s/homes?host_id=177114776

OR HERE (JLMY2) https://www.airbnb.com.au/s/homes?host_id=217495299

OR HERE (JLMY3) https://www.airbnb.com.au/s/homes?host_id=228789871");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20655229","Amanda","https://a0.muscache.com/im/pictures/user/28cb716d-cb8e-4946-9421-36b8e77587bf.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Português.","We are young and passionate about traveling the world, camping in our van, meditation and good vibes. When we travel we always try to find a place to call home so we are opening our beautiful house to share with you ❤️");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51685133","Brett","https://a0.muscache.com/im/pictures/user/b95690bf-7c24-4599-a2da-98e96fc800fb.jpg?aki_policy=profile_small","Lives in Australia.","The owner of Glengarry Castle Hotel since 2004");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("188659639","Henrich","https://a0.muscache.com/im/pictures/user/7889cc40-ec0e-498e-948b-216bc52a8429.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English,Español,Polski,Čeština.","Hi, I'm Henrich and I was born in Slovakia, been living in Australia since 2016.

I my partner Jonathan have a spare room in our apartment that we decided to offer to travelers passing by.

We prefer short-term stays and offer the room for individuals or couples too. 

In a nutshell.. I work in hotel industry and am into photography and Jonathan is an acting tutor with a passion for AFL!

Talk to us in English, German, Slovak, Czech or Spanish!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183028242","Sophie &amp; Sonny","https://a0.muscache.com/im/pictures/user/f79886f5-c89a-4610-8cdd-58b88a4f2ee6.jpg?aki_policy=profile_small","Lives in Sefton, Australia.","We are parents of two cheeky little boys. We enjoy spending time with them and take them everywhere whenever possible. We love to see more of the world and discover new experiences. Our favourite food is street food.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10305439","Monique","https://a0.muscache.com/im/pictures/220fca8e-7e7e-468a-97ae-9623b27f4cb6.jpg?aki_policy=profile_small","Speaks English.","Hi there, 
I have traveled all over the world using airbnb and I think it's a great way to meet new people and cultures. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20707547","George","https://a0.muscache.com/im/users/20707547/profile_pic/1411090954/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6764823","Reid","https://a0.muscache.com/im/users/6764823/profile_pic/1370498209/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Español.","I am a mid-late 30's gay male with spare room available at my flat.  I'm not an outrageous queen but don't mind if you are (or one of you or anyone else is!).  Straight, gay, asexual (lol), couples, friends, individuals all welcome.  

I work in people facing IT roles, where I talk to people about what they want to achieve and then translate that to the 'real' IT people who make it happen.  I really enjoy connecting peoples needs with solutions.  The best part of what I do is getting to form relationships with people and that really cool sense of satisfaction when you know you've made a positive impact for someone.  Anyway, enough geek speak!

On week days I generally get up 6ish for gym and work and/or head to the gym after work, so if you are home during the day, you'll have the house to yourself.  Weekends I may be out with friends, dinner, pubs, clubs (or recovering from these) depending what's on, but sometimes I like to chill at home.  I volunteer with a charity to feed homeless people on Saturday evenings.  It's surprisingly fun if you would like to check it out.  You're also welcome to join in socialising if you are at a loose end or have just moved here and want to make new friends.

Sometimes I do a bit of travel myself and may be away.  That's a bummer because I may not get to meet you, but on the plus side you will have the house to yourself.  I do have a fantastic co-host when I am away.  His name is Fred and he's great.  If you need to message for advice or help, he/his team or I will be ready to advise you and we are happy to do so.

My friends and I are super nice, friendly people so if you want some tips about Sydney, where to go, what to see etc, we're sweet to help you out.  At home, I'm totally happy to break out 5 minutes of small talk and leave you in peace if that's what you prefer.  

I've been on AirBnB since 2013 and have hosted more than 200 guests now.  Originaly, I decided to host instead of having house mates.  It's not a 'for profit' thing for me, just another way of splitting house costs.  

I've met so many awesome people through AirBnB, some of whom now live in Sydney and are close friends.  You may get to meet some of them :)
  
If you come stay, I hope you will feel as at home here as you would at your own place.  You're basically a house mate while you're here.  I would just ask you treat the place like you would your own, have respect for the neighbours in the building and take care of the owners investment in this beautiful property that we are so fortunate to stay in.  Nothing too stressful.  :)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6248691","Lorraine","https://a0.muscache.com/im/pictures/user/9a3a4a0d-57be-49cc-9883-c97d1d60ec22.jpg?aki_policy=profile_small","Lives in Paddington, Australia.","Hello and welcome! 

Between this apartment and our home, we have been greeting and hosting guests from all over the world, for several years. We enjoy meeting people and sharing our much loved spaces.  
 
As an alternative to this apartment, if you are after a unique stay in an artistic home (either as a room or whole house), you can also find us here: https://www.airbnb.com.au/rooms/1759931?preview  (Check the 'Profile' on this link for other listings)

We hope you enjoy your time in the apartment.
Lorraine Arnie");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61734008","Alice","https://a0.muscache.com/im/pictures/user/1a51dc21-12f7-48e3-896d-be5e4caa7898.jpg?aki_policy=profile_small","Speaks English,Español,Italiano,Português.Work: Exhibition Manager at Informa Australia.Connected accounts.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("177754030","Hanny","https://a0.muscache.com/im/pictures/user/7fefa3bc-ef8a-42ee-9584-36313d8966b4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,English.","Couple lives in 3 bedroom unit. Husband works labour works. Wife works as admin office.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("213451435","Anthea","https://a0.muscache.com/im/pictures/user/9a651280-1e94-46f2-9163-4ae946ad1434.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12779397","Emma","https://a0.muscache.com/im/pictures/user/54650b46-f6dd-4d88-8bbf-0d0bf32d3c3b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hello !! I am Emma 
I am a shop owner in Sydney 
 I sell plants and jewelry:)

I love to decorate my apartment and meeting new people.
more that happy to answer any questions that you may have.

Welcome to Sydney!!!! :)
All the best

Emma");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61170945","Todd","https://a0.muscache.com/im/pictures/user/2baa8068-b15c-4187-a1b0-736c9d2e51ab.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Work: Founder at Homeshare Experts.Connected accounts.","Professional Airbnb superhost who loves travelling.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("161730392","Kiana And Family","https://a0.muscache.com/im/pictures/user/70a4a578-4792-4d03-a660-adc38abb835b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Family living in Sydney. Love Sydney, love travelling, love our daughter, Kiki. 
Our apartment was purchased recently for our daughter. We have popped this beautiful city pad on Air BnB for others to use and enjoy before she moves in!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10217099","Jeremy","https://a0.muscache.com/im/users/10217099/profile_pic/1385257492/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Teacher and Accommodation.","Hello

I'm a friendly, open and ethical guy who enjoys offering clean, quality accommodation to like minded people. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8169284","Amish","https://a0.muscache.com/im/pictures/10cc26ff-bea3-4593-b2e2-ccd98c9924be.jpg?aki_policy=profile_small","","I'm proud to be a SuperHost and love giving all my best to my guest. I really enjoy giving my guest the best experience and comfort possible.

Outside of Airbnb, im a consultant in the IT and Finance space. But apart from all that work stuff, I love to travel, try many different types of foods and love my TV shows/movies. Im also a bit of a nerd because I love my computer games.

I have been in Sydney for a while now, so happy to have a chat and give you my opinion on what are the coolest places around.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9951125","Sean","https://a0.muscache.com/im/pictures/user/53cc7866-7655-4f34-a3e9-7b3f01bec7fb.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Español,Русский.Work: University of Sydney.","I am a lecturer in Finance at the University of Sydney, and have travelled to 39 countries so far. I love to rock climb, cycle, go to music festivals and drink good red wine. I enjoy cooking, good friends and good times. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3600856","Angus","https://a0.muscache.com/im/pictures/user/0102a3e9-f154-4e54-8e16-7393077b6a87.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.Connected account.","I grew up in Sydney but have loved travelling around Australia and the world. Happy to give you some tips about fun places to hang out in our neighbourhood or anything else you want to know. I'm a relaxed kind of guy and hope to make your stay hassle-free and easy.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("27286333","Julie","https://a0.muscache.com/im/pictures/455cdf06-3fff-4938-8fb3-a5c4fb36ca58.jpg?aki_policy=profile_small","Lives in Darlinghurst, Australia.Speaks English,Español,中文.Work: Scientist.","I'm an AirBnB and a share economy enthusiast. I eat, breathe and sleep Airbnb! I am scientist (protein chemistry) and I work as a certified Airbnb community expert and manage several Airbnb listings in fantastic Sydney locations.  I enjoy the Sydney lifestyle and fine foods and wine. I have a natural talent for hospitality and would love to host you in the very near future! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4010521","Sally","https://a0.muscache.com/im/pictures/8c82426c-a3ff-4884-a9dc-e35f4ec10243.jpg?aki_policy=profile_small","Lives in Newtown, Australia.","I am an Australian who loves to make home an inviting, interesting and functional space to live in and be. Over many years we have lovingly restored and furnished our unique warehouse in Newtown. 

I am a collector at heart, with a keen eye for faded beauty and utility. Our warehouse includes a selection of some of the vintage treasures I have gathered along the way.

We love to travel and have recently returned from 2 years living in Bali. We have had very rewarding experiences with AirBnB, both as hosts and as guests. 

I look forward to making your stay as comfortable and enjoyable as possible, and to pointing you in the right direction to make the most of your time in our wonderful corner of Sydney’s Inner West");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("78423405","Grace","https://a0.muscache.com/im/pictures/86d668e6-626b-4564-869a-471f5c9386cb.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("122624551","Michael","https://a0.muscache.com/im/pictures/user/727c4515-2af7-4279-8f3e-920389bd288b.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.Work: Self employed .","We're Michael and Cathy, we love the city of Sydney, the first time when we travelled this awesome city we found this was the place where we belong, then we settled in and enjoyed this city so much.

We love traveling, music, food and wine...there is nothing better than catching up with old and new friends.

We have been an Airbnb host since March 2018. There is absolutely nothing we enjoy more than welcoming people to this fabulous city and meeting new people.

We're super friendly and will bend over backwards to help you have the best stay possible.

Michael Cathy
fell in love with airbnb when I first try it, then I thought I should do something to sightseers or businessmen, make them obtain their best during their stay, I try to make my cozy home as comfortable and user friendly as possible, let my guests feel comfortable and enjoyable.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2784819","Eve","https://a0.muscache.com/im/users/2784819/profile_pic/1346332361/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch.","My main interest is art, both its history and its practice, I am a painter and work from a studio in the back garden. My   other interests  include music, literature, walking etc.   My family background is Russian and I speak some Russian as well as German.
I am a friendly and relaxed person, as is my husband Richard and our house reflects this and our interests in art and history. He speaks some Spanish though is not fluent, as does our 21-year-old daughter who also lives in the house.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29716820","Shane","https://a0.muscache.com/im/pictures/368e1bd5-b7cc-4160-badb-e818bedc8e2e.jpg?aki_policy=profile_small","Lives in Newtown, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("124948923","Terry And Wendy","https://a0.muscache.com/im/pictures/user/444c9b81-d41c-4efe-b977-39b95d84af73.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23546487","Nick","https://a0.muscache.com/im/users/23546487/profile_pic/1415589275/original.jpg?aki_policy=profile_small","Lives in Gladesville, Australia.Work: Property consultant.","Originally from overseas, I am passionate about Sydney and all that it offers and love to share my favorite places  with friends and visitors.  I live with my family - my wife, two lovely kids aged 10 and 12. We enjoy good food, the outdoors and good company.   We love Air Bhosting and sharing our wonderful house and garden.  We look forward to meeting up with you and sharing our local knowledge and great things to do in Sydney.


");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1947076","Ani","https://a0.muscache.com/im/pictures/2020f875-dae6-4440-914f-0d1ab160fac0.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Connected account.","Hello, 

I live in the heart of Sydney, Australia.

I love to travel and see the world and like to offer like-minded people a clean and comfortable place when travelling.  

I'm sure that whoever stays in my apartments in Potts Point, Bondi Beach or farm house in the Southern Highlands will have a lovely time. Feel free to read my reviews to get a better understanding of each of my three listings. 

Any questions, just ask!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("69670577","Taylor","https://a0.muscache.com/im/pictures/404ce4c2-52cf-4561-859f-382663c97cca.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61212872","Alex","https://a0.muscache.com/im/pictures/d0d2f675-363c-4884-a7ad-54ea30f26d34.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("43387943","Sandra","https://a0.muscache.com/im/pictures/user/4a83387a-6808-4045-9ba2-459b9949b8c0.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,Español.","Young professional working in online and retail fashion. Love dogs, cooking, singing and wine. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131580703","Bella","https://a0.muscache.com/im/pictures/user/9d9eebe7-fe14-4c58-b1bb-4a0f20fce7a4.jpg?aki_policy=profile_small","Lives in Rosebery, Australia.Speaks English,Français,Italiano,中文,日本語,한국어.Work: onestopbiz.","My name is Bella I’m living with my partner 
We had 6 bedrooms big house 
We are rent one of our bigger double room downstairs We living upstairs.


");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3455633","Christopher","https://a0.muscache.com/im/pictures/user/1304bb17-2f0c-43fd-8f7c-9e96905916ee.jpg?aki_policy=profile_small","Lives in Katoomba, Australia.","Im a professional Actor, Musician and AirBhost who resides in Leura in the Blue Mountains just outside of Sydney. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("250666874","Joe","https://a0.muscache.com/im/pictures/user/9870cba9-fd40-4737-b245-afa1a7dc7862.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("73505172","Nicholas","https://a0.muscache.com/im/pictures/7cb02a0e-b2e9-4a4b-ac60-2e7c5730305a.jpg?aki_policy=profile_small","Lives in London, United Kingdom.Speaks English.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("91034448","Darren","https://a0.muscache.com/im/pictures/c147d7e9-7aa1-47a9-b6d2-bc8637086a2e.jpg?aki_policy=profile_small","Lives in Carlingford, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11026509","Edward","https://a0.muscache.com/im/users/11026509/profile_pic/1389561204/original.jpg?aki_policy=profile_small","Lives in Bondi Beach, Australia.Work: Furniture transport and installation.","Live and work in the Sydney area. Love the beach.

As your host, I will leave you to it. If you need me, I won't be far away.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87005986","Norman","https://a0.muscache.com/im/pictures/91bd31d3-57d8-4ff6-b88a-a9af402727ae.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("174052553","Kathleen","https://a0.muscache.com/im/pictures/user/226c4da3-d3c6-4725-ad6f-ac63d89594c8.jpg?aki_policy=profile_small","Lives in Woronora, Australia.","Hi! Teacher who occasionally travels. We have an Airbnb- too - so very busy!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9277614","Marlene","https://a0.muscache.com/im/pictures/user/50e935bd-04c9-4ce2-a8c2-5af1f08b64f1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4945327","Stephanie And Julie","https://a0.muscache.com/im/pictures/user/f2ff1b14-d090-4adb-a631-3231a64bbdca.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Stephanie from Sydney Australia. I love travelling, and love hosting people from around the world. On my travels I have encountered people who explain the area and give us great advice to get involved in the culture - which is exactly what I aim to do!
My mum Julie also manages our property in Sydney, and (in my humble opinion) she is just the most lovely lady around! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14018952","Sarah","https://a0.muscache.com/im/pictures/1c27c88d-edc4-4f0c-a3a4-27b5914b9c9d.jpg?aki_policy=profile_small","Lives in Western Australia, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("191127377","Shirene","https://a0.muscache.com/im/pictures/user/6258e490-f03c-4946-9a86-2224c7c4200c.jpg?aki_policy=profile_small","Lives in Cherrybrook, Australia.Speaks English,中文.","I love music, reading, travelling, enjoy good food and meeting new friends. I am not a particularly sporty person but enjoy walking, I find it therapeutic. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("113040569","Jeb","https://a0.muscache.com/im/pictures/01bd2299-3dc4-4371-89be-13a8148a4107.jpg?aki_policy=profile_small","Lives in New York, NY.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51572260","Yvonne","https://a0.muscache.com/im/pictures/5b49882e-490b-4f82-988d-95ebc7b00dd4.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.","I just love travel!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49736625","Rae","https://a0.muscache.com/im/pictures/user/f3cca7e0-da3a-4717-99b9-cb9870b0f9a2.jpg?aki_policy=profile_small","Speaks English.Work: Rug Wholesaler.","Friendly and outgoing. Native Canadian (Cree) decent, born in Australia.  Very sociable, enjoy hosting and making sure my guests are looked after. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61567375","Teressa","https://a0.muscache.com/im/pictures/0404d75c-d8cd-4d86-9cd2-0bbeb394f427.jpg?aki_policy=profile_small","Lives in The Junction, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("463794","Petra","https://a0.muscache.com/im/users/463794/profile_pic/1302767113/original.jpg?aki_policy=profile_small","Lives in Newcastle East, Australia.Speaks Deutsch,Español,Türkçe,中文.Work: Feltmaker.","I enjoy hosting people and welcome visitors to our home. I have prepared the room, you will be staying in, like I would like to stay when travelling myself. I live with my partner Glen. I am a…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6462306","Donna","https://a0.muscache.com/im/pictures/6e871b3a-a6d2-488a-8964-ecaeef6ecbea.jpg?aki_policy=profile_small","Lives in The Junction, Australia.Work: Liquid Colour.Connected account.","I am married, a high energy person, mother of 2 boys and 1 girl and now have 4 grandsons and 5 granddaughters.  I love running my own business in Interior Design and Architecture, working in both the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8990598","Vivienne","https://a0.muscache.com/im/users/8990598/profile_pic/1379880170/original.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183851900","Janean","https://a0.muscache.com/im/pictures/user/c3f53cc9-7e78-4256-926c-bd7e3ba9a7dc.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("57808099","Michael","https://a0.muscache.com/im/pictures/16d78d0a-103e-4874-a831-87df6c50652d.jpg?aki_policy=profile_small","Lives in Australia.Connected account.","I love travelling and seeing the world.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("43386878","Novak","https://a0.muscache.com/im/users/43386878/profile_pic/1441424719/original.jpg?aki_policy=profile_small","Lives in Marks Point, Australia.","Hi I’m novak, I live on the premises in another unit.  I’m here if you need anything. I’m relaxed, Social person,  I’m well traveled myself love to travel. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("689304","Claire","https://a0.muscache.com/im/pictures/7a77f9e2-75d3-49d3-b4f5-9058e360757d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("31689161","Kerry","https://a0.muscache.com/im/users/31689161/profile_pic/1438851785/original.jpg?aki_policy=profile_small","Speaks English.Work: builder property manager.Connected account.","I am 50 ish aussie self taught builder property developer in to alternative lifestyle architechture reading camping travelling keeping healthy whatever comes next");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("213812558","Sinead","https://a0.muscache.com/im/pictures/user/39fc6738-f905-4e91-aaa5-622edd1bb51f.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28583793","Luke &amp; Stacey","https://a0.muscache.com/im/pictures/user/cc85d6a2-1bbd-4a18-8533-d5d9b7c1c527.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Work: Payten Street.","Payten Street is an Airbnb Management Service that offers accommodation in and around Newcastle. We started Payten Street as we had small children at home and wanted to do something that we could have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47353164","Jane","https://a0.muscache.com/im/pictures/user/3af2c28e-7957-4897-b741-3d68736496a7.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Speaks English.Work: Graphic Design.Connected account.","Aggressive feeder, salty sea swimmer. Constant gardener and podcast listener. Creator. Tamer of children and lover of my lover. 

I'm really into family; the ones from life and the ones from birth…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("27247281","Sofie","https://a0.muscache.com/im/pictures/user/0e23da14-ad55-4f69-91a3-4b07b5804076.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("156590983","Diana","https://a0.muscache.com/im/pictures/user/7aa013e0-e971-417c-b2b6-b959109c4e6c.jpg?aki_policy=profile_small","Lives in Lakelands, Australia.","Hi I’m Diana. I’m a fun, energetic mum of twin girls. A perfect day for me is waking up, doing a quick session at the gym, then heading off to a local cafe with my husband and girls. If the weather is…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47605736","Jules","https://a0.muscache.com/im/pictures/user/f0af0987-6fef-42e3-a070-7abc205a27c7.jpg?aki_policy=profile_small","","I'm a full time marriage celebrant who loves to live a full, happy and healthy life. Most if all I love my children, my family and friends, my job and travelling the world. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49974958","Nikki","https://a0.muscache.com/im/pictures/user/dbc47770-5033-43c8-b5ed-7add48d27d65.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Speaks English.Work: renovating.","I am a super friendly and happy host. I love meeting new people. I am a keen renovator and now renovate for a living. As for traveling, well who doesn't love to travel, both my husband and still have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("181570937","Susan","https://a0.muscache.com/im/pictures/user/467a5ddf-bc28-4b05-ba52-e2da250dd873.jpg?aki_policy=profile_small","Lives in Bar Beach, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51187348","James","https://a0.muscache.com/im/pictures/ca100839-ecf7-41a7-9a85-a9631812197a.jpg?aki_policy=profile_small","","Hello! I'm a local Newcastle boy who's returned after living all over Australia. I'm now working in a Hunter Valley winery while enjoying the beautiful beaches and restaurants of Newcastle. Welcome to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("64723277","Kerri","https://a0.muscache.com/im/pictures/a76f0688-efeb-40fb-b88b-71fb7941de17.jpg?aki_policy=profile_small","Lives in Windang, Australia.","My name is Kerri and I love travelling and meeting new people. My husband, Alan, and I have been lucky enough to travel to Europe, America and Asia several times. We now live in a beautiful part of…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60696109","Raewyn","https://a0.muscache.com/im/pictures/user/8fe55ec2-4aac-4708-8d95-91647d876358.jpg?aki_policy=profile_small","Lives in Towradgi, Australia.Work: Department of Education .","Raewyn and Jeff love to travel and have travelled extensively throughout our lives.

We love meeting people from all cultures and we look forward to welcoming our guests.

Raewyn works for The…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("127932727","Adam","https://a0.muscache.com/im/pictures/da0b4fd8-341e-453c-962a-2a7735bf7ac9.jpg?aki_policy=profile_small","Lives in Australia.Speaks Dansk,Deutsch,English,Polski.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("209839680","Sarah","https://a0.muscache.com/im/pictures/user/f29a26f6-4171-4ccb-ae83-2be8a305d536.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("40361215","Tom &amp; Lisa","https://a0.muscache.com/im/pictures/6af89b23-cfa5-4729-9640-0cf9684ce48f.jpg?aki_policy=profile_small","Lives in North Wollongong, Australia.Speaks English,Svenska.","We are obsessed with all the good things in life - Surf, Salt, Sand, Sun, BBQs, good food and great beer. We love living in Wollongong, we have an amazing coast and we spend as much time as possible…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21205262","Roz","https://a0.muscache.com/im/pictures/user/46f1bd0b-3353-4fad-bc75-133c4bcffe58.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49517957","Paul","https://a0.muscache.com/im/pictures/ebf84149-c485-4a6c-a130-955ac68f868a.jpg?aki_policy=profile_small","Lives in Port Kembla, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2235158","Daniel","https://a0.muscache.com/im/pictures/51b6950c-ef6d-43a5-bf14-0e1008ad944c.jpg?aki_policy=profile_small","Lives in Wollongong, Australia.Work: Australian College Of Commerce and Management.Connected account.","My names Daniel and I'm from Wollongong, Australia just south of Sydney. 

Im 30 years old and work full time in IT. 

I love traveling and meeting new people!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45969246","Kelly And Mark","https://a0.muscache.com/im/pictures/user/ca4fd5de-fe0d-4287-a679-d9352c2722df.jpg?aki_policy=profile_small","Speaks English.Work: Firefighter .","Welcome to Figtree Beach Cabin and we hope you enjoy your stay. 

A little bit about us, we have lived and travelled throughout the world to the following countries and regions, Africa, Asia,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155336107","Scott","https://a0.muscache.com/im/pictures/user/6b736063-9a8f-412e-9b7d-f18b956bf5e7.jpg?aki_policy=profile_small","Lives in Wollongong, Australia.","Love to travel. Currently studying part time and working full time. Love the beach and keeping fit. I'm new to this but giving it a red hot go and keen to make your stay a memorable one for all the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("109575215","Gerald","https://a0.muscache.com/im/pictures/dfa434d9-a4be-46af-bae3-b14ec4062ced.jpg?aki_policy=profile_small","Lives in Coledale, Australia.","I am Gerald, or Gerry if you want, Born in NYC, Washington Heights, went to High School of Music Art (The Castle) then Pratt Institute in Brooklyn. Worked as Lifeguard at Rockaway Beach in the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155035492","Tamara","https://a0.muscache.com/im/pictures/user/b0fcc085-d606-4c48-ad41-ffe304fd6c52.jpg?aki_policy=profile_small","Lives in Barrack Heights, Australia.Speaks English,Ελληνικά.Connected account.","You will find out who I'm when you meet me . I can't wait to meet you. Ask me all the questions you want, I'll do the best I can to answer to you. I'm a friendly person but I can give you total…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("94477418","Susan","https://a0.muscache.com/im/pictures/8832ab68-cc72-483c-9148-77982f2e91ce.jpg?aki_policy=profile_small","Lives in Towradgi, Australia.Speaks English.","Im a retired nurse.
Love the water swimming
Have time now 
I like to think l provide privicy for my guests
But still here to give a helping hand
I enjoy hosting very much and would love to meet you");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55725355","Boris &amp; Sharon","https://a0.muscache.com/im/pictures/user/1d8aeeaa-cc7c-43ba-8c98-a42174aed6b2.jpg?aki_policy=profile_small","Lives in Shellharbour, Australia.Speaks English.Work: Welfare, Teaching.","Fun loving couple! We have three awesome boys who keep us busy. We love to travel, socialise and love the beach!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28887681","Lorri","https://a0.muscache.com/im/pictures/user/8e78dd47-104c-45fb-ba45-fd5adc1f7948.jpg?aki_policy=profile_small","Lives in Wollongong, Australia.Speaks English.Work: School cleaner.Connected account.","Hi my name is lorri and my husband dave.We love walks and my husband is  easy to get on with we have traveled a little love cooking and entertaining and like  talking to our guests. 
Our motto is to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("38315324","Louisa &amp; Stewart","https://a0.muscache.com/im/pictures/user/680f99f3-5ebe-45b3-b16d-b156ed8710f1.jpg?aki_policy=profile_small","Lives in Campbell, Australia.Speaks English.","Louisa's family has run a guest house and she has worked in childcare and primary teaching. She has a passion for cooking! Stewart's interests are in the sciences and and he likes the outdoors.
(The…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("148465564","Anthony","https://a0.muscache.com/im/pictures/user/676e26e3-abc8-4260-abff-c4e30290e373.jpg?aki_policy=profile_small","Lives in Lake Illawarra, Australia.Connected account.","Hi fellow travellers, myself and my wife Laura absolutely love to travel and meet people. We have stayed in countless accommodations and with this experience I hope we can provide a memorable and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5424984","Avril","https://a0.muscache.com/im/users/5424984/profile_pic/1363065381/original.jpg?aki_policy=profile_small","Lives in Wollongong, Australia.Speaks English.Work: Computer Sciences Corporation, CSC Australia.","Hi I'm Avril and I live with my little dog, Harry, at the base of Mt Ousley near Wollongong.  I love to travel and meet new and interesting people as well as host old and new friends and showcase the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3437211","Tracy","https://a0.muscache.com/im/users/3437211/profile_pic/1434269280/original.jpg?aki_policy=profile_small","Lives in East Gosford, Australia.","I am originally English and a business women I love to travel and enjoy time with my children that are 22,21 and 19  I love my home and I am constantly renevating as I love to design and invent new…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("27124649","Paul","https://a0.muscache.com/im/pictures/a3ccd267-d62a-463f-9f22-6f05ef62628f.jpg?aki_policy=profile_small","Lives in Copacabana, Australia.","I'm an Airbnb host on the NSW central coast. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("136705008","Kerry","https://a0.muscache.com/im/pictures/user/94671449-f561-40e1-85a5-d3d06f0d8f56.jpg?aki_policy=profile_small","Lives in Macmasters Beach, Australia.Connected account.","I love spending time with my family and friends, reading, gardening, cooking travelling and relaxing");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16163417","Mandi &amp; Russell","https://a0.muscache.com/im/pictures/user/ebf1b041-1a87-4eef-b364-f9131f8b13aa.jpg?aki_policy=profile_small","Lives in Forresters Beach, Australia.","Hi! Our names are Mandi Russell and we both love life near the beach and have lived in Forresters Beach for 18 years We have good knowledge of the area and can give you plenty of advise if you need…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("32814420","Susana","https://a0.muscache.com/im/pictures/user/70b52167-ab69-4c69-9cc9-97262737deb4.jpg?aki_policy=profile_small","Speaks Português.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48209326","Roam Managed Services Pty Ltd","https://a0.muscache.com/im/pictures/user/7be59b09-90b0-4a02-a19e-580d8fd2232c.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.Work: Self Employ.","I am a self employ bookkeeper. I run this apartment for my SMSF. I have a family of 4 reside in Sydney.
I enjoy running businesses and deal with complex matters. I cannot live without 
internet,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22425344","Karen","https://a0.muscache.com/im/pictures/546622e2-2c72-4495-a97a-42670ced6dcf.jpg?aki_policy=profile_small","Lives in North Avoca, Australia.","Hi.  I am Karen from North Avoca, host of North Avoca Sea Salt.   I really love having guests come and enjoy staying here on the beaches of the Central Coast of NSW and also look forward to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49510350","Michele","https://a0.muscache.com/im/pictures/dd7906e9-bb11-4928-8f2f-16511bbdeea0.jpg?aki_policy=profile_small","Lives in Toukley, Australia.Connected account.","Enjoy travel, entertaining and family. Looking forward to hosting after some lovely stays overseas.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23053193","Rebecca","https://a0.muscache.com/im/users/23053193/profile_pic/1414478880/original.jpg?aki_policy=profile_small","Work: Local.","Mother of two boys, great cook and I love this part of the world .... Looking forward to sharing our slice of paradise with you :)) come visit sometime . ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("214357751","Gib And Toni","https://a0.muscache.com/im/pictures/user/8206c3d9-b4bb-4cac-aa23-c9f879ac76b1.jpg?aki_policy=profile_small","Lives in Central Coast, Australia.","We are a young family that love living in Holgate, the best kept secret on the Central Coast. Our passions are music, building design and the outdoors. Our favourite place to travel is Andalucia,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("17429873","Mary And Anthony","https://a0.muscache.com/im/pictures/50b12b95-f664-4710-9639-599210fefba1.jpg?aki_policy=profile_small","Lives in Central Coast, Australia.Speaks English,Italiano,Ελληνικά.Work: Fitness Professional, Cook Packaging Designer/Manager.","We are a professional married couple and empty nesters for most of the time. 
The beautiful Central Coast is our home, love the beach life, camping, fishing, pretty much anything to do with the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21030621","Kaye And David","https://a0.muscache.com/im/users/21030621/profile_pic/1410087454/original.jpg?aki_policy=profile_small","Lives in Avoca Beach, Australia.Work: Worked on Newspapers, magazines and private work.","Hi, our names are David Kaye and we are excited to be your hosts! Please check out our listing and please don't hesitate to contact us about any bookings and inquiries.

David is a professional…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2087321","Judy","https://a0.muscache.com/im/users/2087321/profile_pic/1341453963/original.jpg?aki_policy=profile_small","Lives in Bateau Bay, Australia.Work: Retired.Connected account.","We are Judy and Murray Townsend.  Hosting on Airbnb for nearly seven years. Our studio is beautiful and has won an Australian architectural award. 
Murray was a deputy at a local primary school and I…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("33147618","Max","https://a0.muscache.com/im/users/33147618/profile_pic/1431382914/original.jpg?aki_policy=profile_small","","Hi,

Nicola and I love our Waterfront Retreat, but sadly we can’t be there more than a couple of times a year, so it’s available for you to enjoy.

We love travelling the world to make lovely…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("90182074","Ava","https://a0.muscache.com/im/pictures/fcdeed39-a935-4690-9f44-ada6bac5e253.jpg?aki_policy=profile_small","Lives in Bouddi, Australia.Work: Teacher.","I am a teacher who loves to travel.I live at Avoca Beach and enjoy swimming and meeting new people.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26504836","Mark And Anne","https://a0.muscache.com/im/pictures/user/e5c88eda-93c6-4824-aea4-a0fea5891e9a.jpg?aki_policy=profile_small","Lives in Woy Woy, Australia.Speaks English.Work: Civil Engineer and Teacher.Connected account.","We love to travel and enjoy meeting people. We are a 'young at heart' couple that is looking forward to retirement so we can explore all corners of the planet.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49138112","Terry And Row","https://a0.muscache.com/im/pictures/b0c1ce5d-c77a-4dc1-8260-f826046113e4.jpg?aki_policy=profile_small","Lives in Albury, Australia.","We love travelling, spending time with family and friends and are totally committed to providing the best possible Airbnb spaces for our guests.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("33161710","Jocelyn","https://a0.muscache.com/im/pictures/user/2acd8fad-68e1-42ab-9719-2d97c4aee3fd.jpg?aki_policy=profile_small","Lives in Albury, Australia.Work: 1977.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16547404","Vivien","https://a0.muscache.com/im/users/16547404/profile_pic/1441247529/original.jpg?aki_policy=profile_small","Lives in Albury, Australia.Work: AirBnB, Volunteering, Writing .","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12787643","Poppy","https://a0.muscache.com/im/pictures/user/ddb2f4ec-0b7b-4579-9586-8c64ed2ae164.jpg?aki_policy=profile_small","Lives in Beechworth, Australia.Speaks English.Work: Cafe Owner.Connected account.","Cafe owner in small country town.
I work with my husband and we both
love to  travel when  possible.We love to eat out 
try lots of new places.
I love Eurovision. I love Abba. We love Premier…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("254013539","David","https://a0.muscache.com/im/pictures/user/1c4810a7-d6e5-479e-b531-fd264a6bd91c.jpg?aki_policy=profile_small","Lives in East Albury, Australia.","Fran and I have lived in Albury since 2001 having moved from Alice Springs. While there we brought up our 4 children who are now living the good life in Melbourne! Although they love the big city,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("94883411","Mia","https://a0.muscache.com/im/pictures/user/3e9b272a-5816-45cb-8933-084664abc98e.jpg?aki_policy=profile_small","Lives in Albury, Australia.Speaks English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1258796","Nicole","https://a0.muscache.com/im/pictures/user/8a6dbcbf-e055-4358-9a8f-8f93ae37ca74.jpg?aki_policy=profile_small","Lives in Lavington, Australia.Speaks English.","Married for 20 plus years with 3 beautiful children. Born and raised in Albury and no other place I would like to live. Love to travel, garden and reading. Always work hard and you will achieve your…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("140664567","Kathryn &amp; Peter","https://a0.muscache.com/im/pictures/user/b63335c9-6b57-40de-b881-96c2e8e8a217.jpg?aki_policy=profile_small","Lives in Albury, Australia.Speaks English.","Kathryn and Peter were both born and raised in Albury, NSW. We have two adult children aged 23 and 25 and a much loved family dog! 
We absolutely love having guests stay in our guest suite…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14143195","Jane","https://a0.muscache.com/im/users/14143195/profile_pic/1443673408/original.jpg?aki_policy=profile_small","Lives in Albury, Australia.","I am a mother of three. I work as a midwife. I love travel, exploring new places and meeting interesting people. I love reading and keeping myself fit and healthy with good food and regular exercise…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48135997","Tina And Row","https://a0.muscache.com/im/pictures/266c1610-3032-4146-b7a6-197deaec5845.jpg?aki_policy=profile_small","Lives in Albury, Australia.Speaks English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29174998","Trish","https://a0.muscache.com/im/users/29174998/profile_pic/1432734180/original.jpg?aki_policy=profile_small","Lives in Albury, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10333818","Gail","https://a0.muscache.com/im/users/10333818/profile_pic/1406934871/original.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.","I am retired.  I love meeting people from different cultures and in my pastime enjoy singing choral gospel and love theatre especially musicial productions, also love swimming sailing on our…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26640992","Carolyn","https://a0.muscache.com/im/pictures/user/d2e74a1e-413c-47a3-b78c-b63f86928f69.jpg?aki_policy=profile_small","Lives in Albury, Australia.Speaks English.Work: Musician/coffee  professional.Connected account.","I love travel, music, coffee! I live in regional NSW Australia.
Friendly and enjoy meeting new and diverse people.
Food, wine, cycling general good health and fitness also..
I am tidy, social and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("81318696","Therese","https://a0.muscache.com/im/pictures/7c3234f5-4da8-49bb-a67b-e1e3ac056042.jpg?aki_policy=profile_small","Lives in Albury, Australia.Connected account.","  I'm friendly creative, outgoing and very social. I can recommend the best places to grab a pub meal or the ultimate fine dinning experience. I love walking, riding my bike and going to the local…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("90908106","Linda","https://a0.muscache.com/im/pictures/user/f1f8919e-981e-48cf-802a-06130af97ac7.jpg?aki_policy=profile_small","Lives in Albury, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37651259","Bianca","https://a0.muscache.com/im/pictures/84a17e8d-4ebc-4641-b9e0-75102754aeac.jpg?aki_policy=profile_small","Lives in Albury, Australia.","Owner of BMC Apartments.

I look forward to all dealings with guests who stay at BMC and happy to provide some information about our wonderful region and all it has to offer! 

The apartment is all…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("18919827","Michael","https://a0.muscache.com/im/users/18919827/profile_pic/1412296621/original.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Speaks English.","Urbane and witty Teacher,  with a wife and partner, Fifi, who is fortunately much more empathetic and interesting. We enjoy the opportunities of life and would like to share our take on existence with…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("187043532","Martina","https://a0.muscache.com/im/pictures/user/5506c86e-e1ed-4c8a-97bd-8931f564c59f.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Speaks Deutsch,English.Work: University of New England.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("109885720","Tanja","https://a0.muscache.com/im/pictures/user/89bc5ac3-278b-4e89-8a69-48967d8eae6f.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We are a professional couple who love being busy. Originally from South Africa, we lived in Ireland for 6 years and now call Australia home. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("40339011","Paula","https://a0.muscache.com/im/pictures/user/76b0b9ee-bce7-49ff-9ff7-1a2f07869cff.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Work: Office Manager.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("132566395","Flora","https://a0.muscache.com/im/pictures/user/5d77cd14-7283-4865-b75c-d58e3aa5f9d9.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Speaks English,한국어.","Lovely Yolo day : )");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("94535076","Emma &amp; Nick","https://a0.muscache.com/im/pictures/688195dd-ba18-46d1-8626-b38c6c665f87.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Self Employed .","We are a young family that enjoy being outdoors and love this beautiful area, of New England, that we live in. 

We are passionate about all the wonderful attractions that the New England has to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8222399","Carolyn","https://a0.muscache.com/im/pictures/user/7ea2685f-8761-4874-a31e-43db0ed81f78.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Work: Principal.","We are keen to share our home with people who are visiting Armidale. Carolyn works in education and Avril is an apprentice chef. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("172289050","Kasia","https://a0.muscache.com/im/pictures/user/4c1a4af6-14fa-4bad-bbe6-d72843579034.jpg?aki_policy=profile_small","Lives in Armidale, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24531192","Sally","https://a0.muscache.com/im/pictures/5640a4b9-8db5-4cd2-b18e-120e504213f1.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Work: Chef.Connected account.","I've lived in Armidale for nearly thirty years.
Love to cook, paint and enjoy walking my dogs.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("198542521","Bill","https://a0.muscache.com/im/pictures/user/6dd5eb24-4b82-459f-8a31-21de7351f1c7.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I’m a retired grazier, who’s moved to the centre of Armidale. I’m a keen gardener and in my spare time I like to dabble with making sculptures. My partner Kerry is a former academic and she’s an…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("177445083","Geoff","https://a0.muscache.com/im/pictures/user/291f2a3c-b490-4ef0-8013-53942ba73df7.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.","I have an adorable Thai wife (Kate) and am a proud father of two awesome boys Charlie (7years) and Teal (5 years). 

Recently completed mature age study at university and work in Renewable energy…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("34563903","Michelle","https://a0.muscache.com/im/pictures/user/4d2f3390-90ac-498a-a3d5-26503e602c23.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","We are a pretty laid back family.  Originally from South Africa, we are happily settled into Armidale. 
Mark and I decided to renovate our garden cottage and make it into a lovely self-contained…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("92360811","Kathryn&amp;Matt","https://a0.muscache.com/im/pictures/754c1cb2-b05b-4c05-bb66-7f90a4eedd6a.jpg?aki_policy=profile_small","Lives in Rowena, Australia.","We are a family of 4 are currently educating our children in Armidale. We are farmers from North West NSW and enjoy our own company value privacy so try reflect this with our airbnb offering. We…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("117653761","Lyn","https://a0.muscache.com/im/pictures/2bbea945-a8e9-469c-9f63-b36b0fb0b2d6.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Speaks Français.Work: Retired.Connected account.","Just retired
Part-time student
Ex Housesitter
Mother of 3 grownup boys.
Learning French at Uni. Studying Psychology.
Widow");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4887425","Ania","https://a0.muscache.com/im/users/4887425/profile_pic/1359426095/original.jpg?aki_policy=profile_small","Lives in Armidale, Australia.Connected account.","We like to relax, drink nice wine, eat good food");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("58244102","Marilyn","https://a0.muscache.com/im/pictures/79020adb-2115-40a6-8037-a8f5b0503570.jpg?aki_policy=profile_small","Lives in Armidale, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49537814","Jeff","https://a0.muscache.com/im/pictures/user/16d3d96d-9088-4364-982e-8e30e57142b1.jpg?aki_policy=profile_small","Connected account.","Professional (Contract Management) in he’s 30s from Perth Australia that loves an adventure and weekend getaway.

The partner (Dr) and I, love cafe and bar hoping all over the world.

Also an Airbnb…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("168612281","Raelene","https://a0.muscache.com/im/pictures/user/b7a7649e-0a62-4d22-9323-13b8692b412f.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24811328","Benny","https://a0.muscache.com/im/pictures/user/1276fc31-9a19-40e0-9dc1-9207da42c5eb.jpg?aki_policy=profile_small","","My name is Benny your host, pleased to meet you! I intend to help with your stay to be a relaxing enjoyable one.
The Ivy Lodge is a Heritage listed 152 year old Cottage that has had only 3…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("66311099","Kim","https://a0.muscache.com/im/pictures/c5ee2004-8e17-4ff8-b840-37b9e1b921e6.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","Easy going. Cheerful and honest. 
I love Bathurst for its beauty, its friendly people including me, lol
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49311462","Virginia","https://a0.muscache.com/im/pictures/user/e52b9560-7e6b-4b8f-ae5d-39347b17a1f9.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25616164","Leesa","https://a0.muscache.com/im/pictures/b2f49c1f-3b54-46d2-8025-aa33767fae06.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("115458125","Bella","https://a0.muscache.com/im/pictures/user/c43a8a79-0ece-4054-84ab-59e59a642535.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87446917","Elle","https://a0.muscache.com/im/pictures/user/a7e683d7-2b47-468c-bac1-f63e05fa5ed7.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","I love good coffee, the first thing I look for in a town I visit is a good cafe. I love the style feel of luxury hotels, but I miss the space of home when I stay in hotels. I need a good kitchen…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("151582552","Jasmine","https://a0.muscache.com/im/pictures/user/86fd5a35-5eaf-412a-bb36-2d1e4f00de90.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("224260227","Stephen","https://a0.muscache.com/im/pictures/user/9aacd839-ad3e-4304-a96a-c2576f2c502f.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("195875178","Marion","https://a0.muscache.com/im/pictures/user/94e7ba9c-d3f9-401a-bf78-5e4199d825a9.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("71598700","Steve &amp; Cheree","https://a0.muscache.com/im/pictures/70b0294a-abf6-41da-abe7-321709e99055.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("124022115","Andrew","https://a0.muscache.com/im/pictures/ad98705c-2abd-4915-ac2c-117774f880ac.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","Hi, I'm Andrew, tree changer, dad and motorcycle enthusiast.  We think there's drawbacks when trying to travel with larger families or groups so we've set our places up so everyone can get around a…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("193630629","G &amp; W BnB'S","https://a0.muscache.com/im/pictures/user/c14d2909-4b76-41c7-b148-2f35a23136ee.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.Work: G W BnB's.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21228619","Paul &amp; Terry","https://a0.muscache.com/im/users/21228619/profile_pic/1427092655/original.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","Active and fun loving
Spending time with family and friends
Interested in collecting Australian wines
Operates a construction machinery hire business");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25274576","Victoria","https://a0.muscache.com/im/pictures/user/20097a84-9d94-4122-a00e-129ca582ba6a.jpg?aki_policy=profile_small","Lives in Kelso, Australia.Work: PCE.","Hi, having used Airbnb myself for travelling, I have decided to have a go at hosting.  I am friendly and happy for a chat about anything. My partner, Paul, is a bit more reserved, but will get excited…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2280100","Sarah","https://a0.muscache.com/im/pictures/user/af060e77-aad3-4498-9544-3857cda2d839.jpg?aki_policy=profile_small","Lives in South Bathurst, Australia.Work: Mortgage Choice, Central West.Connected accounts.","I'm Sarah, an ex-Hairdresser who became a Mortgage Broker who lives in Bathurst NSW having made a tree change from Sydney, Australia.  I have a cat called Josie Lah Lah who is the apple of my eye!  I…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("83014707","Carolyn","https://a0.muscache.com/im/pictures/user/8034c2ed-fdae-4500-b0a2-f08a72a53086.jpg?aki_policy=profile_small","Lives in Bathurst, Australia.","Love the country life. Keen snow-skier, dabble in graphic and web design, enjoy hiking and walks, good food and wine are necessities! Well-travelled across the globe, favourites include Japan, Hong…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15996236","Ghislaine","https://a0.muscache.com/im/users/15996236/profile_pic/1425362967/original.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.Speaks Deutsch,English,Español,Français,Italiano,日本語,한국어.Work: Joashwood Coaching.Connected account.","Hello and welcome to my little world in Broken Hill. I am a retired teacher who has had great experiences as an Airbnb guest overseas and who is delighted to be able to return the favour. I look…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("63293717","Jenny","https://a0.muscache.com/im/pictures/user/a5d4c80e-7758-4afc-ab1e-52436864e108.jpg?aki_policy=profile_small","Lives in Bowral, Australia.Speaks English.","I am an outgoing family person who enjoys reading, cooking and travelling. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("711449","Ron","https://a0.muscache.com/im/users/711449/profile_pic/1444248211/original.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.","We are long term residents of Broken Hill being here over 30 years raising 5 children in the wonderful outback. Our lifestyle includes full time work in the disability sector for both of us.Our…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("56791679","Ben &amp; Emma","https://a0.muscache.com/im/pictures/user/0d4de0bc-4f72-4d21-9f53-b9bddff00c04.jpg?aki_policy=profile_small","Lives in Australia.","Hello we're Ben Emma. We are both Airbnb hosts and regular Airbnb travellers ourselves. We love nature, exploring cultures, places and foods, and meeting new people. We have learnt from our own…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13645247","Adam","https://a0.muscache.com/im/pictures/user/3dc02b3c-7f14-47ad-80d8-18167028898e.jpg?aki_policy=profile_small","Lives in Cronulla, Australia.Speaks Bahasa Indonesia,English.Connected account.","Love traveling to obscure destinations. Currently building a tree house on a tropical island ☀️");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("175572217","Leelee","https://a0.muscache.com/im/pictures/user/5244c914-e8ea-46b3-b73c-172384f614da.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.Speaks English.","I'm and avid DIYER and enjoy my life in Broken Hill.  I like to promote the city to my guests that book my Cottages.  ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("227930215","Debbie","https://a0.muscache.com/im/pictures/user/6886acbc-1075-477b-96ab-b2fc7e36c577.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24052676","Karyl &amp; Henry","https://a0.muscache.com/im/users/24052676/profile_pic/1416722134/original.jpg?aki_policy=profile_small","Speaks Deutsch.Work: Restoration.","We are people who have fallen in love with restoring old houses.

'A Miner's Rest' circa 1896, and 'Ella's Place' circa 1903 are  just two of our restorations that will give you a taste of outback…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53886725","Stevie","https://a0.muscache.com/im/pictures/user/60772a0e-4992-43eb-8874-48fb80c5aec4.jpg?aki_policy=profile_small","Lives in Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14252781","Martha","https://a0.muscache.com/im/pictures/user/b3812e1a-268e-4194-95c9-9670e0bbb8c5.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.Work: Grassroots empowerment program facilitator - volunteer / Landcare Coordinator  / writer .","I'm living and working in Broken Hill but still making time to travel. I will take any opportunity I have to explore a new place or culture, travelling has been a key to learning for me.

If you…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("199875520","Glynis","https://a0.muscache.com/im/pictures/user/7e6acbe2-5af0-498c-acbe-6bc164165acf.jpg?aki_policy=profile_small","Lives in Broken Hill, Australia.Work: Nurse.","I am new to hosting holiday accommodation however I really enjoy travel myself and I hope to make my guests very comfortable and enjoy their stay in Broken Hill. I have personally enjoyed staying in…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("67017710","hiden","https://a0.muscache.com/im/pictures/a7b3034c-66d9-412d-8844-f689ac6ad074.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("255958368","Marnie","https://a0.muscache.com/im/pictures/user/c5397437-8bd2-4d2f-8ce4-882bcdeb41d2.jpg?aki_policy=profile_small","","
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155174470","Corinne","https://a0.muscache.com/im/pictures/user/863b0002-c20a-4474-bd63-4cd9641a939a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("43074870","Cathy","https://a0.muscache.com/im/users/43074870/profile_pic/1441162630/original.jpg?aki_policy=profile_small","Lives in Old Calperum, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15696845","Jay","https://a0.muscache.com/im/users/15696845/profile_pic/1400482205/original.jpg?aki_policy=profile_small","Speaks Deutsch,English,Norsk.Work: Actors Equity.","I am social and enjoy meeting new and interesting people, and I also value my quiet time and independence. I usually have a smile on my face and love to hear people's stories :) 

I'm a Somatic…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("123940463","Michael &amp; Trudy","https://a0.muscache.com/im/pictures/2207d32a-681b-48a5-8143-4556f9c7aa6e.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1179090","Vanessa","https://a0.muscache.com/im/pictures/user/106ee491-6850-4af1-b250-9f270dbad09c.jpg?aki_policy=profile_small","Lives in Kilaben Bay, Australia.Speaks English.Work: Enviable Home Styling.Connected account.","Hi - I live on the waterfront of Lake Macquarie in NSW near Newcastle in Australia.   Lake Macquarie is the largest saltwater lake in the southern hemisphere.  My home in Martinsville is only 15…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("217126345","Jessica","https://a0.muscache.com/im/pictures/user/46e52802-64d6-4c12-ad52-d07eb1228c64.jpg?aki_policy=profile_small","Lives in Valentine, Australia.Speaks Bahasa Malaysia,English.","I love coffee, wine and sunshine ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("93090672","Debbie","https://a0.muscache.com/im/pictures/user/45a3b964-9eb3-4994-bc6e-dc3925616e6b.jpg?aki_policy=profile_small","Lives in Coal Point, Australia.","My husband John I live at Coal Point, in beautiful Lake Macquarie. 
Local cafes and restaurants in Toronto are just 2  minutes away.  We would love you to stay with us at Lily's On The Lake ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5203065","Margaret And Charlie","https://a0.muscache.com/im/pictures/user/dac23320-7dc3-4a4e-a7df-e845dbcf31dc.jpg?aki_policy=profile_small","Lives in Valentine, Australia.Speaks English.","We are a retired couple who have raised 4 children who have now left home. We enjoy reading, movies, travel and gardening. We enjoy meeting people from  all walks of life and cultural backgrounds. We…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("116324209","Cormac","https://a0.muscache.com/im/pictures/1afe2005-8c99-4a75-a825-c5dfb72b8e59.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26642685","Anthea","https://a0.muscache.com/im/pictures/user/9026c68d-55ec-4022-8226-586b3d6dd2df.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Work: Newcastle Eye Centre.","Hello,
I am from Newcastle, Australia. 
I love to travel and now I am spending as much time as I can exploring the world, learning about places and meeting new people. I have a great love for many…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("227370219","Elizabeth","https://a0.muscache.com/im/pictures/user/13df822e-ce89-4478-973d-af8907347377.jpg?aki_policy=profile_small","Lives in Murrays Beach, Australia.Speaks English.Work: Mum.","Family of four, expats from uk. Blessed to be living in this wonderful place. Passionate about Australian wildlife and nature. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("96757725","Shaun","https://a0.muscache.com/im/pictures/518350eb-6df1-4f95-8ff7-f8a319bcabe5.jpg?aki_policy=profile_small","Work: Senior Estimator.Connected accounts.","Hard working and easy going. Love learning new things and meeting new people. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("84629238","Susan","https://a0.muscache.com/im/pictures/163456b2-b0d2-4ae2-85f0-8454744e5e4a.jpg?aki_policy=profile_small","Lives in Cardiff Heights, Australia.Connected account.","Andrew and I are new to Airbnb and very much looking forward to the adventures to come. 
Our main priority is to meet new people from different walks of life; people that we might not otherwise have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("164593373","Barry","https://a0.muscache.com/im/pictures/user/4ef1dab5-ef24-4895-82b4-71e0a1428b6f.jpg?aki_policy=profile_small","Lives in Dora Creek, Australia.","We are a semi-retired couple who enjoy travel.  Our favourite country is France.  Barry likes to throw a line in and sometimes catches something!! Lyn enjoys her garden and works as a temp doing…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("44621207","Nadia","https://a0.muscache.com/im/pictures/66f51d8b-884c-48c8-a4df-d35cad2b213e.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1104391","Tanya","https://a0.muscache.com/im/pictures/dc0a339c-f618-455a-b514-583ca0b32fda.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.","I am an Australian and lucky to be able to live in Bali Australia! My other favourite places for holidaying are Vietnam, Cambodia and New Zealand.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152126655","Jill And Rod","https://a0.muscache.com/im/pictures/user/15fb478c-f105-4008-b22a-45fc7ef5ac61.jpg?aki_policy=profile_small","Lives in Wangi Wangi, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("150387299","Helen","https://a0.muscache.com/im/pictures/user/eb44186d-99f6-47b9-9c88-96d570aa744e.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","I am friendly and open - originally from New Zealand I have called Australia home for many years now. I am married with 3 children. I love animals especially horses. I love to travel and I love…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131880300","Sarah","https://a0.muscache.com/im/pictures/74d84c52-2959-43eb-95f3-564b1ad780f2.jpg?aki_policy=profile_small","Lives in Valentine, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("101898210","Martin","https://a0.muscache.com/im/pictures/8864fbc6-2e28-416c-9339-1fb2384f67bf.jpg?aki_policy=profile_small","Lives in Upper Orara, Australia.","I am a semi Retired Businessman I love looking after my health Physically and spiritually.I have traveled extensively and love meeting new people . I am learning the guitar so  i'm open for a jam…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("161179888","Julie","https://a0.muscache.com/im/pictures/user/6b076604-322b-46ff-a3c3-2ae03db1849f.jpg?aki_policy=profile_small","","Hi we areJulie and David
We are from beautiful Coffs Harbour  Nsw");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("238163537","Lyn","https://a0.muscache.com/im/pictures/user/d6f67a14-6f67-4a81-be61-c5a1a74d44df.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("172423876","Alison","https://a0.muscache.com/im/pictures/user/e35d1dd9-9751-4efc-9e0c-a32873298b89.jpg?aki_policy=profile_small","Lives in Boambee, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("52263869","Julie","https://a0.muscache.com/im/pictures/user/0399dc7f-5aac-4295-863d-80181a542174.jpg?aki_policy=profile_small","Lives in Australia.Work: Dance teacher receptionist to Jons Injury therapy massage business.","Originally from Melbourne I teach dance to adults at my dance studio I established 29 yrs ago in Coffs Harbour, the place I now call home with husband Jon. Jon has run his own massage injury therapy…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5451959","Lorraine","https://a0.muscache.com/im/users/5451959/profile_pic/1397035242/original.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Speaks English.Work: A few part time jobs in Human Services.","I am a fun loving, friendly  and hard working mother of a grown up daughter. I am easy to get a long with  and  enjoy meeting new people. I have travelled extensively and have enjoyed the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23539591","Lyndy","https://a0.muscache.com/im/users/23539591/profile_pic/1443997686/original.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Work: NSW National Parks and Wildlife Service - ranger.","I am a national park ranger. A fantastic job in a fantastic location. My family loves the outdoor lifestyle, beaches, camping and bush walking.  We spend a lot of time camping in national parks too! I…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48811148","David","https://a0.muscache.com/im/pictures/014b607e-2c84-4c0a-8ebe-f0b6a997d77e.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105879338","Anthony","https://a0.muscache.com/im/pictures/e91e326d-3264-43bc-b9a8-f335a506862d.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.","My Wife Kathy and I have set up Magnolia Cottage to share our love of living on the north Coast of NSW.
Meeting new people and sharing past experiences and future aspirations, we have always found to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("82717508","Haddy And Fran","https://a0.muscache.com/im/pictures/user/15eeddeb-5dea-4cba-b5c3-e7379d17f095.jpg?aki_policy=profile_small","Lives in Upper Orara, Australia.","Fran  grew up in London and Haddy in the New England area. Fran is now self employed and runs her own business here in Coffs Harbour while Haddy works for Health although previously self employed and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24878770","Geoff","https://a0.muscache.com/im/users/24878770/profile_pic/1418754991/original.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.","Married to Sue, 3 children, 8 grandchildren. Love living on the Coffs Coast.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60458740","Gael","https://a0.muscache.com/im/pictures/03092c2c-e101-4fa4-a885-4e558fdeaca7.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Speaks English.Work: AirBnb Host.","I, along with my hubby, Brendan have lived in the beautiful coastal city of  Coffs Harbour for over 25 years. We are parents to 4 adult kids and have 5 beautiful grandchildren who we love spoiling…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28711220","Pip","https://a0.muscache.com/im/users/28711220/profile_pic/1429764286/original.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Speaks English.Work: Various - health, arts, marketing PR.","Watch this space - profile coming");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("56542394","Anne","https://a0.muscache.com/im/pictures/3429d564-8d1c-434d-b429-c04920fb878f.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Speaks English.Work: Aged Care facility in Coffs Harbour.Connected account.","I am in my early sixties.  My husband and I live a simple life style.  Our home is close to a lovely surf beach and also walking distance to our major resorts. I still work part-time in an aged care…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("175612127","Annelies","https://a0.muscache.com/im/pictures/user/3633edd6-6257-487c-8693-c9b6900f31d9.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Speaks English,中文.","I'm a busy mother of four children and cross fit queen. I work with children who have disabilities. When I'm not working, I'm planning my next beach holiday. Our family is into swimming, surfing and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25372671","Cindy","https://a0.muscache.com/im/users/25372671/profile_pic/1419912627/original.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("66674501","Sharni","https://a0.muscache.com/im/pictures/c3b4552b-84f7-4018-985f-703435930676.jpg?aki_policy=profile_small","Lives in Coffs Harbour, Australia.Connected account.","My husband and myself have lived on the Coffs Coast all our lives and are raising our 3 children here. We have travelled the world but love to call the Coffs Coast home. Due to our careers, Surfing…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("225125962","Tammy","https://a0.muscache.com/im/pictures/user/3b7bc9b9-1227-4169-ad78-5a79514363d6.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16055811","Clare  And John","https://a0.muscache.com/im/pictures/52ced1d7-25c6-414d-bdf6-9705c77169d2.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.","Love coffee wine good food and travel");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("125237113","Lyn","https://a0.muscache.com/im/pictures/user/557e9d62-60a2-477a-8b69-1b9caed94c4a.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.Work: Authorised Civil Celebrant - Hatches, Matches and Dispaches !!!.Connected accounts.","I am a happily semi retired lady of an interesting age.
As a Civil Celebrant, I love the interaction and opportunity to assist people at their happiest and saddest of time.
I was first introduced…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2650528","Wendy And Peter","https://a0.muscache.com/im/pictures/user/bda40286-8a5c-42b3-9654-9fe016dd911b.jpg?aki_policy=profile_small","Lives in Warren, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("237747450","Rebecca","https://a0.muscache.com/im/pictures/user/1c1ebda1-0443-4bc0-86ca-340fc7df67c7.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("41330357","Belinda","https://a0.muscache.com/im/users/41330357/profile_pic/1439762399/original.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.Speaks English.","Easy going person who adores having family around and sharing good food and wine.  Love the outdoors, bushwalks and riverwalks with our dogs, a blue heeler and a foxie cross little dog.  Gardening and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("115906667","Michael &amp; Lucy","https://a0.muscache.com/im/pictures/b57e0e9d-7bed-40aa-8ad3-06ee1ab26915.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.Connected account.","Husband, father and amateur farmer");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("123110930","Talitha","https://a0.muscache.com/im/pictures/c4471f22-1e7a-485e-a647-253858d71b0a.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53749229","Sue And Nick","https://a0.muscache.com/im/pictures/user/c43865d1-4816-44ce-b6b0-9cad5392c04a.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.","Nick and I are self employed happy couple who are really enjoying being hosts .
We live on a large in town block and have 2 puppies and a cat here at home with us.
We have children and grandchildren…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55251568","Leanne","https://a0.muscache.com/im/pictures/user/e87e413e-eb0c-4d7a-b409-654f77515790.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55368055","Alice","https://a0.muscache.com/im/pictures/8cae0e8c-53ca-4936-adce-d228064b4c41.jpg?aki_policy=profile_small","Lives in Nyngan, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("135580406","Susan","https://a0.muscache.com/im/pictures/user/28f94c87-483b-4358-ab61-ce1612eef54c.jpg?aki_policy=profile_small","Lives in Dubbo, Australia.Speaks Français.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6641912","Alison","https://a0.muscache.com/im/pictures/74752d79-4c38-40a6-975d-ddc9816ac6aa.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7249597","Daniel","https://a0.muscache.com/im/pictures/user/0c82c6f2-4b37-4a8a-8ab9-c87bbe49ce93.jpg?aki_policy=profile_small","Lives in San Francisco, CA.Speaks Deutsch,English.","Dear Guests

I am pleased to be able to host you and I trust you will enjoy your stay at my place! I encourge you to familiarise yourself with the check in detils and guide book and if you have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12066559","Andrew","https://a0.muscache.com/im/users/12066559/profile_pic/1406422951/original.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.","Anne-Maree and I have a large family of eight and one grandchild, we enjoy people and welcome the opportunity for others to enjoy our home. The studio is very much a reflection of who we are and how…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95634681","Diane","https://a0.muscache.com/im/pictures/88418d91-7955-45e2-890f-be8061e451c3.jpg?aki_policy=profile_small","Lives in Gundary, Australia.Work: Self employed Transport and Logistics.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("122558506","Carole","https://a0.muscache.com/im/pictures/73d72d97-b664-4dfd-9598-6342cfda1d62.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.","I am a Nurse, working for Australian Red Cross Blood Donor Services in Canberra. My husband Joe works in IT and we both love to travel in our spare time. 
We have three beautiful adult children who…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165716850","Darryl And Vicki","https://a0.muscache.com/im/pictures/user/803b6589-2f43-4874-85de-30360bd18c68.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.","We both love playing golf.  Love travelling.  Now that our children have grown up and moved out, we are rattling around by ourselves in our large home.  Having Airbnb guests is a wonderful way to meet…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3088587","Lynne","https://a0.muscache.com/im/pictures/875ca745-d361-4133-bb1a-65b32f5c6246.jpg?aki_policy=profile_small","Lives in Australia.","I live in Goulburn NSW Australia a country town one hour from Canberra.  I am an artist working 'en plein air' and in my studio. I taught in a previous life at high school and at tertiary level and I…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("253074580","Michelle","https://a0.muscache.com/im/pictures/user/331c926e-0f59-42fa-abf1-3f301077e3e3.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("238963184","Andria","https://a0.muscache.com/im/pictures/user/dcf3dedf-d367-478d-9b28-d2a4b88f41ac.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.Speaks English.","I'm a housewife who loves meeting new people. I also love health and fitness, and studying - currently onto my second degree (Human Nutrition).");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("208605013","Rodrigo","https://a0.muscache.com/im/pictures/user/81cd4f91-d3c2-48c5-8653-fd7d6d81e048.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("118617084","Michelle","https://a0.muscache.com/im/pictures/4004fdee-c779-4b6f-8603-0a2ff89581d1.jpg?aki_policy=profile_small","Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("163228144","James And Spring","https://a0.muscache.com/im/pictures/user/cd66c43f-7005-4984-a43d-cca7ef75067b.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.Speaks English.Work: Retired .","James and Spring are husband and wife, we are humble couple . Now we take courage to present our little nest to the world. Welcome home  ! 

About James :

James, 64 years young man. was good…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("143430737","Jane &amp; Ed","https://a0.muscache.com/im/pictures/9ce29ec7-b34d-42e8-a9df-4b8995aa9362.jpg?aki_policy=profile_small","","Ed and I have retired to run our 240 acre farm where we breed Angus cattle. The environment is remnant box-woodland and (to our eyes!) is really beautiful and natural.
We have built a beautiful…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25483351","Vaughan &amp; Alex","https://a0.muscache.com/im/users/25483351/profile_pic/1420191744/original.jpg?aki_policy=profile_small","Speaks English,Español.Work: IT  Professional.","Hello, we have been AirBnB hosts since July 2015 and know you will feel right at home in the cottage. Please familiarise yourself with the house rules, check-in details and guide book and if you have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("259087562","Jean","https://a0.muscache.com/im/pictures/user/426a3ae4-91b9-46f7-97bf-94ebd8422eb9.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("181196613","Kaylyn","https://a0.muscache.com/im/pictures/user/9fc0fe58-9b33-4132-a19e-05a220ed8f75.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("56790952","Charles","https://a0.muscache.com/im/pictures/6962be03-4532-487d-b8bc-6d3b866515ee.jpg?aki_policy=profile_small","Lives in Goulburn, Australia.Speaks English.","接受支付宝付款");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8044093","Helen","https://a0.muscache.com/im/pictures/f96b9b1c-cef0-4d5b-826d-2be80c675fcc.jpg?aki_policy=profile_small","Lives in Grafton, Australia.","I am a retired Agricultural Scientist who loves the company of people and enjoys sharing my warm and lovely home and environment with others. I love music, Drama and theatre, and am involved with…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("157201366","Brian &amp; Mandy","https://a0.muscache.com/im/pictures/user/3835a51f-41db-4716-a9f7-a3363fec5c7b.jpg?aki_policy=profile_small","Lives in Grafton, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("125100514","Russell &amp; Rathi","https://a0.muscache.com/im/pictures/ccbb9f0e-61c9-4364-ac8b-8055db317df5.jpg?aki_policy=profile_small","Lives in Grafton, Australia.","Rathi and I have fallen in love with Grafton and bought one of its older residences.  We ran an Airbnb in Broome for 3 years so are practiced hosts who enjoy caring for our guests!  We are both widely…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("89619663","Robyn","https://a0.muscache.com/im/pictures/5631be92-5a81-421e-b938-6864d99a7a7a.jpg?aki_policy=profile_small","Lives in Grafton, Australia.Work: Foster Carer.Connected account.","I am a retired senior, sometimes I help services in the region,. I love gardening. helping people less fortunate than myself.
I go travelling in my caravan when possible. Reading and doing patchwork…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1141853","Lesley","https://a0.muscache.com/im/users/1141853/profile_pic/1315800929/original.jpg?aki_policy=profile_small","Lives in Grafton, Australia.Speaks English.Work: JOURNALIST.","I'm a journalist/sub editor for a regional daily newspaper and keen to start traveling internationally now my daughter has grown up. I'm a 'young' 48, looking forward to venturing out of Australia…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8072077","Deborah","https://a0.muscache.com/im/pictures/39557430-c6c4-4a33-9744-8a7ec38b9e35.jpg?aki_policy=profile_small","Lives in Grafton, Australia.Work: Grafton Heritage Accommodation.","I am interested in just about everything! I love travel and now have the time to look around.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("18775776","Bronwyn &amp; Marty","https://a0.muscache.com/im/pictures/user/8c8fddbd-db13-45ad-b310-0e539f951162.jpg?aki_policy=profile_small","Lives in Eatonsville, Australia.","We love simple pleasures. Walks to the river, watching the cows graze in the paddocks, listening to bird song of a morning. Creating beautiful spaces, making music and hanging out with our beautiful…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165560524","Paula And Craig","https://a0.muscache.com/im/pictures/user/102f3144-3d30-4dae-8be4-473e59aeb71d.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","An easygoing friendly person who loves the outdoors.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("64120645","Larry","https://a0.muscache.com/im/pictures/9b9884e7-96a9-4542-a7a9-b43af018efef.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14033193","Katrina","https://a0.muscache.com/im/users/14033193/profile_pic/1398682071/original.jpg?aki_policy=profile_small","Lives in Swan Creek, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47591153","Lorraine","https://a0.muscache.com/im/pictures/user/27091ba1-c381-4a60-a265-46f567caf26a.jpg?aki_policy=profile_small","Lives in Clarenza, Australia.","I have lived at Clarenza on our property Belvoir  with my husband Tom for 37 years. We raised our two children here and love living on our glorious 25acres, with regular visits from our three…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7540228","Louise","https://a0.muscache.com/im/users/7540228/profile_pic/1432221653/original.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Work: National Parks, NSW Australia.Connected account.","We have just returned from volunteering overseas for a year. Now that we can't travel and are back working...... We would love to host people on their adventure!");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55367851","Dianne","https://a0.muscache.com/im/pictures/68a25b5f-7fb9-449a-8b66-a42002a4f1c0.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We started renovation Ava House in 2014  and We have recently finished the renovation mid 2015. 
Ava house is a charming home to come back to after a day of work, or site seeing. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("186531142","Emma","https://a0.muscache.com/im/pictures/user/c721ee24-75eb-4724-968c-a1a6ef329ae3.jpg?aki_policy=profile_small","Lives in Broadbeach, Australia.Speaks English.Work: Digital Marketing Social Media.","Fair easy going host.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("173291023","Jenna","https://a0.muscache.com/im/pictures/user/2f4d9cc6-871b-4c5b-974f-dca2885a569f.jpg?aki_policy=profile_small","Lives in Griffith, Australia.","I’m a mum of two beautiful children, a wife and a school teacher. I love that I can provide a clean, comfortable and charming BnB for visitors to enjoy!
My very talented husband fully renovated this…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60110355","Vanessa","https://a0.muscache.com/im/pictures/user/c81fd67c-ad2f-4cc7-be33-e1d0276ee5cd.jpg?aki_policy=profile_small","Lives in Griffith, Australia.Speaks Deutsch,Italiano.Work: GHD.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("104974266","Yanni","https://a0.muscache.com/im/pictures/751964be-e4f1-4e64-af3a-cf95a43341d3.jpg?aki_policy=profile_small","Lives in Brighton-Le-Sands, Australia.","Hard working
extremely Busy
Slightly crazy in a good way. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("198292884","Rosemary","https://a0.muscache.com/im/pictures/user/8e411b0a-5aff-40e9-b7d7-c51c49e57a6f.jpg?aki_policy=profile_small","","Hi, I’m Rosie! I am an outgoing, semi-retired Office Manager from Griffith NSW. I love tennis and photography. I enjoy having coffee and lunch with friends and family, as well as baby-sitting from…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155335030","Zoe","https://a0.muscache.com/im/pictures/user/e01df395-517e-41fe-8940-bc555696bc6b.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("229792370","Nava","https://a0.muscache.com/im/pictures/user/8ba03084-2ccf-44cf-b137-5ee44c26cd4f.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("153168090","Ann-Maree","https://a0.muscache.com/im/pictures/user/4af8f40b-ed06-4f60-b3d7-aee2096c6acb.jpg?aki_policy=profile_small","Lives in Donvale, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("97011036","Anaïs","https://a0.muscache.com/im/pictures/9ce9af6c-055b-43c4-a695-e3fa355ba66d.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("150776437","Paul","https://a0.muscache.com/im/pictures/user/f9eb0887-4670-4039-bf84-ca4990c8abce.jpg?aki_policy=profile_small","Lives in Griffith, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("251878573","Janet","https://a0.muscache.com/im/pictures/user/b3ada597-b2b7-4848-9311-bfe0a61d7dd9.jpg?aki_policy=profile_small","Lives in Griffith, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("77843788","Gringko","https://a0.muscache.com/im/pictures/user/fa326122-f228-436a-a0ba-cc5858538090.jpg?aki_policy=profile_small","Lives in Kuala Lumpur, Malaysia.Speaks Bahasa Malaysia,English.Connected account.","Easy going person
Not picky
Simple
Shy person
Single mom with 3 year old son
I like things to be organise
Like a clean enviroment");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("43158764","Stephen","https://a0.muscache.com/im/users/43158764/profile_pic/1441190371/original.jpg?aki_policy=profile_small","Lives in Yenda, Australia.Speaks English.","Married to Maree with 3 kids and live in Yenda nsw.  I enjoy travel and motor sports and just quality time relaxing");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("153339065","Jane","https://a0.muscache.com/im/pictures/user/484cad6d-efd9-4710-9f6e-54a7fef21433.jpg?aki_policy=profile_small","Lives in Griffith, Australia.","Polite clean punctual
I run a BnB so I know and respect the rules and regs");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("108919536","Maree","https://a0.muscache.com/im/pictures/034b416b-21db-4409-adeb-ae918e0fb8cd.jpg?aki_policy=profile_small","Lives in Yenda, Australia.Speaks English.","A middle aged woman who loves family history and her family.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("160798900","Merridy","https://a0.muscache.com/im/pictures/user/f55a6ce9-c853-408f-a58a-e08ed3b78b03.jpg?aki_policy=profile_small","Lives in Lithgow, Australia.Speaks English.Work: n/a.","48 yr old female. Typical laid back Aussie in love with this great country and exploring it every chance I get.  I love sharing my experiences through my photos and conversations. I would love to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("207841287","Mick","https://a0.muscache.com/im/pictures/user/f14e0fb9-ace0-4f08-af7d-45e2db5eb5f4.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("52743460","Sherry","https://a0.muscache.com/im/pictures/user/7eebf028-1697-4b20-b986-30cb18b162ee.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.","Love to travel the world, meet new people and experiences. 

It's funny how day to day, nothing changes. But when you look back everything is different. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8946005","Judy","https://a0.muscache.com/im/pictures/64e16de3-f69b-4685-9a43-2d50c9973fcf.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3658701","Stephen  And  Pamela","https://a0.muscache.com/im/users/3658701/profile_pic/1380872679/original.jpg?aki_policy=profile_small","Lives in Balmain, Australia.Speaks Français.Work: Film, Anthropology, Writing and Teaching.","Hi we are a family that live and work in Sydney,  Steve is  semi retired and I am a art teacher. We also have a little house in the centre of Lithgow which we love to visit and use as a base to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("153024686","ZigZag","https://a0.muscache.com/im/pictures/user/a9d2df04-2d19-41d8-aea9-eabdbadb0c29.jpg?aki_policy=profile_small","Lives in Oaky Park, Australia.Work: Blue Mountains Natural Spring Water.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("111456721","Mike","https://a0.muscache.com/im/pictures/d531a91d-ba2e-4ecc-9886-d2da6706f419.jpg?aki_policy=profile_small","Lives in Sheedys Gully, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25856660","Erica","https://a0.muscache.com/im/users/25856660/profile_pic/1420841724/original.jpg?aki_policy=profile_small","Lives in Lithgow, Australia.Speaks Deutsch,English.Work: Teacher.","Adventures, friendly and outgoing. Love books and bush walking. I have been to over 69 countries love to meet people and learn about their history and culture.
My life's philosophy is to be …Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49152781","Christine","https://a0.muscache.com/im/pictures/95c3c432-dea4-4f1d-be6d-3b6ab00d7031.jpg?aki_policy=profile_small","Lives in Lithgow, Australia.","I am married and have 3 grown up daughters.I emigrated to Australia from England in 1981.I no longer work but spend my time looking after my father and grandchildren.I love to travel and have visited…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183685336","Adam","https://a0.muscache.com/im/pictures/user/148296de-a5db-416f-8ed2-6454c601b2c1.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("70290866","Lauren","https://a0.muscache.com/im/pictures/7631e701-a821-4a87-af7a-ced504e6f692.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Mother of two beautiful girls! Business owner. Adventurous and spontaneous.   ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("191144836","Radha","https://a0.muscache.com/im/pictures/user/b6251e97-3513-4830-9c1c-15f697f36e9f.jpg?aki_policy=profile_small","Lives in Lithgow, Australia.","I love gardening and yoga and am abit of a hippie at heart :)");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49510703","Trevor","https://a0.muscache.com/im/pictures/51af8362-9bb7-4639-ad94-dd797c59efeb.jpg?aki_policy=profile_small","Lives in Sheedys Gully, Australia.","I am married with four daughters and seven grandchildren. I generally travel with my wife for work and occasionally for leisure. I host through Airbnb in the blue mountains and I own and operate a…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("71734968","Jen","https://a0.muscache.com/im/pictures/8ec15c11-d771-45a4-9e12-1d5861d463f3.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12342101","Mark And Clara","https://a0.muscache.com/im/users/12342101/profile_pic/1394183949/original.jpg?aki_policy=profile_small","Lives in Blackwall, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("32939969","Sharon","https://a0.muscache.com/im/pictures/user/25c8ed12-87cd-42c4-825c-a58099b7e648.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("46957585","Juanita","https://a0.muscache.com/im/pictures/f9b11499-d24f-4a59-a856-b3c3625f597a.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24800689","Emma","https://a0.muscache.com/im/pictures/31259791-3a3e-46e0-8761-fe89e54c99ec.jpg?aki_policy=profile_small","Lives in Maitland, Australia.Work: Emma Kaye Photography.Connected account.","My name is Emma, 
My goal is to travel around Australia with my dog by my side.
As well as offer a family and pet friendly place for other travellers to stay.
We look forward to meeting all our new…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("84354095","Paige","https://a0.muscache.com/im/pictures/user/a2ce1e86-7972-48cc-8a7d-e8903b686717.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Graphic Designer, Sheffield Group .Connected account.","I am a graphic designer living in Newcastle. I enjoy all things art and music and love animals. As no one is living in the family home anymore I decided Airbnb is a great way to share a great space. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("178555938","Anja","https://a0.muscache.com/im/pictures/user/1ea99bb5-a744-40c8-b8b5-1d8390961a42.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I’m a single mum in my forties living in a big house. We have rooms to spare and want to rent them out.

My son is a lively 3yr old with good manners. He will not be at the house a lot because he…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("207863073","Christine","https://a0.muscache.com/im/pictures/user/eb8c3f4e-1dfa-4ec6-a470-550640894fbf.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13939171","Tony","https://a0.muscache.com/im/pictures/f24d1b51-1a36-4931-8395-96c003de7a9b.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.Work: Company Director.Connected account.","I have been in the hospitality business for 30 years and we are a small FAMILY owned on operated Australian business. 

Our company motto is to Bring Back Good Old Fashioned Hospitality 

");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23868856","Katrina","https://a0.muscache.com/im/pictures/user/63138fc4-3e9d-457d-8b43-2d73b853eb03.jpg?aki_policy=profile_small","Lives in East Maitland, Australia.Connected account.","Hi there, 

My name is Katrina and my partner (who you may meet) is Vaughn. I’ve travelled the world and have explored many amazing places but decided on Morpeth for my home. I love wandering around…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("157597478","Taryn","https://a0.muscache.com/im/pictures/user/99efea85-3978-46d4-8be2-13282f253a27.jpg?aki_policy=profile_small","Lives in Bolwarra, Australia.","Local to the Maitland are. Happy wife to Luke and Mum to Nicholas and Harper.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37092751","Joanne","https://a0.muscache.com/im/pictures/user/9be85e51-63fa-4dc3-9ca0-6dec36efc87d.jpg?aki_policy=profile_small","Lives in Rutherford, Australia.","After living in the USA for 11 years I have moved back to my home town to be around family, especially my nieces and nephews.

I have used Airbnb on a number of occasions while travelling have met…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("81552219","Julie","https://a0.muscache.com/im/pictures/d37846d6-f411-48c6-8514-a0db0a185ea2.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I am an IT professional working full-time and a mother of 3 girls aged 18-25. I live in the beautiful Hunter Valley and I have my own Airbnb near Maitland. I love to travel and love staying in…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("220821036","Nicolette","https://a0.muscache.com/im/pictures/user/7db3a6c0-02c1-4b28-b795-fa9692812bd3.jpg?aki_policy=profile_small","Lives in East Maitland, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87460331","Trish","https://a0.muscache.com/im/pictures/2409d482-79ce-403b-ba13-1a611f6bcf2c.jpg?aki_policy=profile_small","Lives in East Maitland, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95789575","Stuart","https://a0.muscache.com/im/pictures/user/eaf3de70-a6c4-4ed6-ba9f-47baea32e8e7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Married with 3 grown up sons, and 3 grandchildren. Too early to retire yet.  I enjoy renovating and being able to see the changes take effect. Ellicottage 2 is my old family home, and I have enjoyed…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("230702394","Jo","https://a0.muscache.com/im/pictures/user/1dec2c5f-d93f-46c8-94c7-dee707049b9f.jpg?aki_policy=profile_small","Lives in Australia.","An over-sharer obviously... My hubby Jon and I are living our 'planned for' dream, especially now being 'empty-nesters' with our parental commitments completed.  Today we  run a marketing business…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22458110","Lynda","https://a0.muscache.com/im/pictures/user/68020727-edf6-44bd-8a60-4509d7074eaf.jpg?aki_policy=profile_small","Lives in East Maitland, Australia.","Hi my name is Lynda and my husband is John. We have been hosting for over a year now and enjoy the experience of meeting new people and sharing our lovely space.  I am at present exploring the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("36416554","Janette","https://a0.muscache.com/im/pictures/user/16c89724-9604-4191-b408-c08d929a2a5e.jpg?aki_policy=profile_small","Lives in Newcastle, Australia.","I’m a teacher and live in East Maitland in a charming cottage with a gorgeous garden. My family and I love camping and I’ve recently discovered a love of multi-day hiking in wilderness areas.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("78415307","James","https://a0.muscache.com/im/pictures/919bd2dd-2613-4811-acad-13ada285d4d1.jpg?aki_policy=profile_small","Lives in Chisholm, Australia.Speaks Français.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("147488524","Jason","https://a0.muscache.com/im/pictures/user/3d46b043-ed3d-47e1-8051-f4bd7dc712cd.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Connected account.","I'm a social guy but always on a busy schedule. I enjoy meeting new people that are like minded, intelligent and down to earth.

If I am hosting your stay, I am always contactable but I have made…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("150804984","Jason","https://a0.muscache.com/im/pictures/user/d93fb875-80c3-46d6-b6c8-b1102354f6c4.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.","I think I am cheerful, good character. I like meeting people from all over the world and I always like to collaborate in to do your stay in Parramatta as complete as possible. I love that.
I try to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("221896823","Sonal","https://a0.muscache.com/im/pictures/user/f5a984f4-7606-4db8-ba4a-8b1515a67658.jpg?aki_policy=profile_small","Lives in Concord, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("230300050","Chuming","https://a0.muscache.com/im/pictures/user/3651fedd-38cd-42af-a73e-8c28221c63a8.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("63841353","Ron","https://a0.muscache.com/im/pictures/57314c28-ab12-4f46-a826-ae59f08ff0d7.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("106018680","Siu Lap","https://a0.muscache.com/im/pictures/1969cf3a-2785-4a09-a8eb-9645d22fd200.jpg?aki_policy=profile_small","Lives in Rosehill, Australia.Speaks 中文.Connected account.","I am a married father of two, I like beer, fried rice, crowded house is my favorite band.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("176343672","Angelina","https://a0.muscache.com/im/pictures/user/16472502-45ec-407c-ad29-647d13564d83.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47940071","Lee","https://a0.muscache.com/im/pictures/5a5ac890-f487-4b7d-93de-2f756b8e6d0b.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文,日本語.","Hope you will enjoy your stay with us. We will try our best to make you feel like home.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("113180379","Ray N Kris","https://a0.muscache.com/im/pictures/user/140172aa-6431-419b-bc63-815a7e0b6638.jpg?aki_policy=profile_small","Speaks English,中文.","We love travelling. So we fully appreciate the importance of finding a home away from home.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("229335078","Amee","https://a0.muscache.com/im/pictures/user/018a7bb4-4f63-4911-9cd1-b9427e182700.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("197930893","Vanessa","https://a0.muscache.com/im/pictures/user/4ddb231e-9187-419c-948e-23c327bbe99a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Young at heart.
Passion for any good things in life.
Love travelling, food, and good friends
enjoy own space as well");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("176710200","Monica","https://a0.muscache.com/im/pictures/user/e490e316-5d08-4c05-969a-c03cb0308087.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Work: Project manager.","Love to meet interest people from all over the world.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23800225","Kim","https://a0.muscache.com/im/pictures/user/5ed758df-66f9-4333-8b81-78db082d8ceb.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.Speaks English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("38742890","Michelle","https://a0.muscache.com/im/pictures/6e3b6a03-c7c2-4a35-8e4c-dd250ccb2dc8.jpg?aki_policy=profile_small","Lives in North Rocks, Australia.Speaks English,中文.Work: Self employed .","Hi this is Michelle. I have operated Airbnb as my job for 2 years, support you 24/7.
You can check-in anytime you want, just inform half day in advance.
My word: Live, just like the paradise is on…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("157851215","Elanor","https://a0.muscache.com/im/pictures/user/82839ea3-cd79-4a3f-8549-03618a892859.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("521540","Elizabeth","https://a0.muscache.com/im/pictures/user/632f9615-9c9d-49f0-aeba-fdec6a8ccca0.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Work: graphic designer and artist student.Connected account."," love travel and love to meet new people and share this experiences to other people?

I  have been travel to Italy, Barcelona , Asia and Iran so travel always our passion so I understand for someone…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("163553018","Patience","https://a0.muscache.com/im/pictures/user/ec37bf1b-f7ec-4245-9883-928d97164393.jpg?aki_policy=profile_small","Lives in Mawson Lakes, Australia.","Warm person with a great passion for people. Patience is a former corporate executive who is now following some of her passions. She is a wild life photographer who has travelled  to many popular…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("112966120","Marie &amp; Tony","https://a0.muscache.com/im/pictures/39207b03-5c23-44cc-b770-1d248be82dd3.jpg?aki_policy=profile_small","Lives in Kingswood, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("103546282","Christine","https://a0.muscache.com/im/pictures/bde62695-3dde-4929-b48a-6b255b9da655.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Easy going, quiet person who enjoys the simple things in life");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("108114782","Jimmy","https://a0.muscache.com/im/pictures/c33acc7f-1acb-47c1-aae3-53ce62ca5a25.jpg?aki_policy=profile_small","Lives in Llandilo, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183812217","Ian","https://a0.muscache.com/im/pictures/user/c86505cd-7ede-4114-b39d-1bb92b822c73.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("270390874","Bindi","https://a0.muscache.com/im/pictures/user/e58169c6-3a62-4811-9591-65a42a34f09d.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("175813691","Mingda","https://a0.muscache.com/im/pictures/user/5e3f78f5-173e-4b5f-ad5c-322250b69ba5.jpg?aki_policy=profile_small","Lives in Kingswood, Australia.Speaks English.","HALLO 你好!我是陈小姐,住在悉尼KINGSWOOD. 您要入住的法式乡村木屋就在我们的后花园｡您有什么需要我可以随时帮忙｡您有自己的通道出街,和停车｡安全方便｡
Hallo My name is Mingda. Your COTTAGE is at our backyard garden with your own gate and parking. Safe and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48136143","Shania","https://a0.muscache.com/im/pictures/34ef1bf5-7cfb-47d6-984d-a42ac4af4287.jpg?aki_policy=profile_small","Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183508722","Kelvin","https://a0.muscache.com/im/pictures/user/94e1cd0a-90ab-4729-bb50-97ab5c5d8d9f.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("228774278","Md Jahangir","https://a0.muscache.com/im/pictures/user/c37555ac-dad8-4c47-a597-446fe769c120.jpg?aki_policy=profile_small","Lives in Mount Druitt, Australia.Speaks Bengali,English,Hindi.","Hi, we are a small family living in Australia for four years. We are originally from Bangladesh. Me and my wife both are working in telecommunications industry. We love to travel and we often take air…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("182533951","Haesook","https://a0.muscache.com/im/pictures/user/81f12ad4-385c-48e9-976c-af276ffe0726.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("35345357","Megan","https://a0.muscache.com/im/pictures/user/81c0405f-e7c0-420e-b636-6bd829b00fdf.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.Work: KozyGuru Management.Connected account.","We manage short-let properties on behalf of different landlords. Our aim is to give an excellent service to the guests and make them feel as comfortable as possible. The 'home from home' experience is…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("261073107","Nepean","https://a0.muscache.com/im/pictures/user/0016b15d-1f51-4cf8-a6b5-fbca82102359.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("217000626","Dalia","https://a0.muscache.com/im/pictures/user/2f81ed53-9ffa-4e2d-8e43-fed3b47c7552.jpg?aki_policy=profile_small","Lives in Penrith, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165731199","Rashmi","https://a0.muscache.com/im/pictures/user/e9901670-d003-4b60-87ec-38eb582c55bc.jpg?aki_policy=profile_small","Lives in Jordan Springs, Australia.","My name is Rashmi living with my husband and son in this property located in beautiful suburb called Jordan Springs. We are friendly and understanding, would like to make your stay as comfortable as…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("249150370","Rachael","https://a0.muscache.com/im/pictures/user/0dbbb7a7-be63-433b-804e-ae3138a72546.jpg?aki_policy=profile_small","Lives in Llandilo, Australia.","Positive vibes ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("200923522","Linda","https://a0.muscache.com/im/pictures/user/5bdb98ed-5c35-4eb4-8d3a-86c62320a2ac.jpg?aki_policy=profile_small","Lives in Australia.Work: Blacktown family medical center .","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("111201293","Arlene","https://a0.muscache.com/im/pictures/user/702773d5-c6c4-47f9-9680-b1fd2435cb24.jpg?aki_policy=profile_small","Lives in Penrith, Australia.","Friendly and caring semi retiree, bit of a foodie, love travel, coffee and long ladies lunches.
I spend the majority of my time doing volunteer work, and supporting locals and helping the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("200301637","ValueSuites","https://a0.muscache.com/im/pictures/user/84c046a4-f95a-4e24-9dac-cee86ad7a436.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("184018601","John","https://a0.muscache.com/im/pictures/user/338226a6-4584-480c-b918-c2d52f0b84cb.jpg?aki_policy=profile_small","Lives in Brighton-Le-Sands, Australia.Speaks English.","Retired, friendly, like to help.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("59819979","Alinda","https://a0.muscache.com/im/pictures/673cdd71-aad9-4329-8a22-f9c14737f255.jpg?aki_policy=profile_small","Lives in Brighton-Le-Sands, Australia.Speaks Español,Italiano,Português.","I am a mature lady, who lives on her own, very active, positive, friendly, educated, very well travelled
I like reaching out to help and being helped as well.
I like cleanness, punctuality,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("119570880","Billy","https://a0.muscache.com/im/pictures/user/0a947b71-4c3c-467b-86c0-6616a75010d9.jpg?aki_policy=profile_small","Lives in Botany, Australia.Speaks English,한국어.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51188554","Martin","https://a0.muscache.com/im/pictures/user/4d268995-a04b-4747-a71b-143bf57c433a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8224416","Liz","https://a0.muscache.com/im/users/8224416/profile_pic/1399167624/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español.","We are a friendly, welcoming family of 4 with 3 adorable Beagles. We enjoy sharing our love of Australia and the beautiful beaches Sydney has to offer.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("52375691","Annick","https://a0.muscache.com/im/pictures/950d1c47-5b8c-499d-978c-90b57ee991c0.jpg?aki_policy=profile_small","Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47156617","Ana","https://a0.muscache.com/im/pictures/a6af6007-82e7-4eba-bc03-a289f5859eea.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("130364236","Rick","https://a0.muscache.com/im/pictures/d7020bd3-43e7-44f1-9fd7-05c2674294c0.jpg?aki_policy=profile_small","Lives in Little Bay, Australia.Speaks English,Español,Português.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("198570031","Grace","https://a0.muscache.com/im/pictures/user/89e26849-0ee3-49b3-8941-a21a598f3d07.jpg?aki_policy=profile_small","Lives in Kensington, Australia.","I’m just a fun gal ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("238133344","Donna","https://a0.muscache.com/im/pictures/user/fab62703-b948-4047-80c6-906255abcb37.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("38546787","Michael","https://a0.muscache.com/im/users/38546787/profile_pic/1436964104/original.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("268516214","David","https://a0.muscache.com/im/pictures/user/b6047e22-78ec-4d24-bdc5-9e0f75105776.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I like to  travel overseas. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("189820848","Luciana","https://a0.muscache.com/im/pictures/user/0a9dadf6-952d-49cf-b56f-c021efc11450.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("62188907","Marianne","https://a0.muscache.com/im/pictures/user/fff6fe4d-d6d0-45c4-b5f0-d93a297df809.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Director.","Sydney. 25. World Citizen.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60847444","Jenny","https://a0.muscache.com/im/pictures/user/de3f9112-2cf8-4fff-9bb7-fdec22aba1aa.jpg?aki_policy=profile_small","Lives in Botany, Australia.Connected account.","Easy going fun loving  genuine ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("78096639","Kaio","https://a0.muscache.com/im/pictures/user/7f6aef65-4e03-4d8f-8457-4b6b9e6fd597.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16184998","Michelle","https://a0.muscache.com/im/pictures/user/fc714764-463d-44ce-abf1-2d4b382b1e77.jpg?aki_policy=profile_small","Lives in Brighton-Le-Sands, Australia.","Happy to help my guests or give you space ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("42360855","Jian Min","https://a0.muscache.com/im/pictures/da9dfdae-5056-4f16-938b-f47e1064e0c4.jpg?aki_policy=profile_small","Lives in Chapman, Australia.Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1336116","Terry","https://a0.muscache.com/im/users/1336116/profile_pic/1336709503/original.jpg?aki_policy=profile_small","Lives in Canberra, Australia.Speaks English.Work: Digital Transformation Agency.Connected account.","A married couple from Canberra. Both professional people with adult children and a couple of younger ones still at home.
We love travelling and meeting people from all walks of life, and enjoy a…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45291052","Omar","https://a0.muscache.com/im/pictures/2df31d47-4e67-4b16-a5aa-9635d2bb0c44.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51777808","Kate","https://a0.muscache.com/im/pictures/d2de7a3b-bec2-4be4-8d25-2f453d9bc8bb.jpg?aki_policy=profile_small","Lives in Canberra, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4407485","Jeneane","https://a0.muscache.com/im/pictures/user/c6cf75c1-f664-426f-a007-0dfe01efcee3.jpg?aki_policy=profile_small","Lives in Queanbeyan, Australia.Connected account.","Hi, my name is Jeneane 

I love film/tv, golf, art Italy and red wine. I have travelled  a little and lived in a few capital cities in Australia.   

My spare room is available, and comes with off…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95538508","Lisa","https://a0.muscache.com/im/pictures/user/7d1162cd-f009-4a84-be7c-ac98521925e3.jpg?aki_policy=profile_small","Lives in Australian Capital Territory, Australia.Connected accounts.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("211453472","Bing","https://a0.muscache.com/im/pictures/user/1e05ea35-01ea-42ce-a6d9-96c8f48992c5.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28526991","Virginia Anne","https://a0.muscache.com/im/pictures/user/9c1f69e4-c836-4fb1-88e7-d14c1f1b68bb.jpg?aki_policy=profile_small","Lives in Canberra, Australia.Speaks English.Work: Garden and Permaculture Designer.","I am a garden and Permaculture designer.  Wherever I go, I like to experience the local gardens, especially the productive ones.  I live in a self-contained studio attached to my house, with its own…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("88411983","Kurt","https://a0.muscache.com/im/pictures/29964e12-7f4b-493f-9a58-45d92698eef5.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks Deutsch,English,Français.Work: Student at Australian National University.Connected account.","I am a 22 year old student, studying Finance and Actuarial Studies at the Australian National University in Canberra. I love all kinds of sport, but I follow the Rugby League most closely.
I went to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("202155374","Anna","https://a0.muscache.com/im/pictures/user/b103b73c-1c2d-42f5-ba7e-93262b3a26fa.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("142595163","Pure Ocean","https://a0.muscache.com/im/pictures/user/628c7100-1b32-484c-8fed-8bd65dbcaee8.jpg?aki_policy=profile_small","Lives in Canberra, Australia.","I am a 39 years-old Asian woman and a professional ACT public servant. I am also a quiet, tidy, peaceful, pleasant, respectful, loving-kind, and spiritual person. I have practiced a sustainable,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165943720","Nathan","https://a0.muscache.com/im/pictures/user/939bf3ba-3c47-49ab-9657-ebfe6e07dd5e.jpg?aki_policy=profile_small","Lives in Narrabundah, Australia.Speaks Français,中文.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("100690778","Olivia","https://a0.muscache.com/im/pictures/user/d56e74c5-2c62-4807-8ea8-83467c84e96f.jpg?aki_policy=profile_small","Lives in Red Hill, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131828543","Ruth","https://a0.muscache.com/im/pictures/39cda4ba-8199-4b3a-a3cf-e52cfa0ad14d.jpg?aki_policy=profile_small","Lives in Karabar, Australia.Speaks English,Español.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("36603527","Chris","https://a0.muscache.com/im/users/36603527/profile_pic/1436769449/original.jpg?aki_policy=profile_small","Speaks English.Work: Airbnb/ Hi-Fi sales-service / Disability Services .","Hi Chris here, I am very excited about being a Airbnb host. I think the accommodation I have to offer is excellent for 1 to 6 people. I've put a lot of hard work into getting it right. 
I look…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("179680165","Yuanshu","https://a0.muscache.com/im/pictures/user/0230559b-b822-4974-a00e-3f918292baa4.jpg?aki_policy=profile_small","Lives in Red Hill, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("156854142","Nicky","https://a0.muscache.com/im/pictures/user/16a210bc-bea5-42a0-a2fd-6babe32837cf.jpg?aki_policy=profile_small","Lives in Vincentia, Australia.Work: ethik.","Steve and I have a passion for travelling and have been exploring the globe together for the last 21 years! We have a particular affiliation with Nepal, Turkey, Bali and Morrocco and travel to these…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50681518","David","https://a0.muscache.com/im/pictures/a0c168b2-1394-4959-8b7e-0c47113d3e3c.jpg?aki_policy=profile_small","Lives in Old Erowal Bay, Australia.Speaks English,Español.Work: English Teacher .","I'm friendly and love animals and the outdoors. My family have been living here for 20 years so I  know all the exciting places and things to do around the Jervis Bay area.  I'm a former journalist…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13544107","Cheryl And Shannon","https://a0.muscache.com/im/pictures/user/6020086f-c957-423d-bb3a-dad93c382b08.jpg?aki_policy=profile_small","Lives in Australia.","We live in this beautiful part of NSW on a property large enough to have a small studio out the back. I’d like to offer this space to share with quiet friendly couples. The studio caters for two and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29718706","Eva","https://a0.muscache.com/im/users/29718706/profile_pic/1427106068/original.jpg?aki_policy=profile_small","Work: Fashion, mother wife.","About Eva

Eva (born in the Czech Republic) and husband Andre originally stayed at SkyView Villa as paying guests many times over, thoroughly loving the view, comfort and holiday feel offered by…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10354864","David And Sharon","https://a0.muscache.com/im/pictures/af4e69ef-555f-4701-9525-60b80c8da709.jpg?aki_policy=profile_small","Lives in Saint Georges Basin, Australia.","We are easy going, nothing is a problem. David enjoys all sports, especially anything fast that gets adrenaline going, water skiing, watching movies, all types of food, and just relaxing. 
While…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("36562922","hiden","https://a0.muscache.com/im/users/36562922/profile_pic/1441609720/original.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29664437","Kimberley","https://a0.muscache.com/im/pictures/a55ac110-8864-46de-ba6c-69a134375669.jpg?aki_policy=profile_small","Lives in Gerringong, Australia.Speaks English.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13551330","Kim And Brendan","https://a0.muscache.com/im/users/13551330/profile_pic/1395991343/original.jpg?aki_policy=profile_small","Lives in Little Forest, Australia.","We appreciate that the simple things in life are often the best, like fresh air, clean water, wilderness and friendship. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("118139594","Anita","https://a0.muscache.com/im/pictures/22d522ee-fcd0-4126-88c3-f39cf9363a80.jpg?aki_policy=profile_small","Lives in Nowra Hill, Australia.Connected account.","I like to travel as an Airbnb host myself, I like to use Airbnb for my own accomodation.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("34567477","Roselle","https://a0.muscache.com/im/pictures/user/dd063b52-6553-4091-afa2-097271ddfc7f.jpg?aki_policy=profile_small","","My husband Peter and I brought our young family to Australia from the UK nearly 20years ago , Magnolia house formerly being our family home. Now all grown and flown the nest ,we downsized.
I love the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4089777","Sandy","https://a0.muscache.com/im/users/4089777/profile_pic/1383547998/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Management consulting .","It was love at first sight when I discovered this quiet south coast hamlet and property. Imported this tent from Africa to live stay in whilst designing building our house. The national park and…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("158524668","Sue","https://a0.muscache.com/im/pictures/user/d8d0c05b-8e05-46d8-b949-40fe81440167.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I enjoy exploring our beautiful world and meeting people! ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26615045","Liza","https://a0.muscache.com/im/users/26615045/profile_pic/1422181454/original.jpg?aki_policy=profile_small","Lives in Australia.Speaks Dansk,English.","Hi! 
My name is Liza, I work as a permaculturist and I'm studying to be a Naturopath. I love good food and good wine (don't we all!)
We love living in Jervis Bay, there is so much to do all year…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16394084","Margie","https://a0.muscache.com/im/users/16394084/profile_pic/1403908892/original.jpg?aki_policy=profile_small","Lives in Cambewarra, Australia.","We are a couple who love to travel. I am an environmental scientist and Peter is a civil engineer and we owned our own business. 

We both love active outdoor pursuits such as cycling, bush walking,…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11637759","Ross","https://a0.muscache.com/im/users/11637759/profile_pic/1390702275/original.jpg?aki_policy=profile_small","Lives in Vincentia, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("120626397","Susan","https://a0.muscache.com/im/pictures/user/3056c1dd-4fa5-4610-8025-fcf294603517.jpg?aki_policy=profile_small","Lives in Mollymook Beach, Australia.","Recently retired from the hustle and bustle in Sydney and relocated from the Blue Mountains to the beautiful South Coast.
I'm now enjoying relaxing times with family and friends.
");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("127654408","Victor","https://a0.muscache.com/im/pictures/6ecfd191-a2d2-4d6f-9cff-587d7a1730af.jpg?aki_policy=profile_small","Lives in Durras North, Australia.Speaks Bahasa Indonesia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13277264","Justine","https://a0.muscache.com/im/users/13277264/profile_pic/1395194861/original.jpg?aki_policy=profile_small","","I'm curious by nature and a designer by trade. I like trying new things and getting to know new places and faces... I enjoy the simple things in life whilst exploring the intricacies of…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("264675311","Kerri","https://a0.muscache.com/im/pictures/user/5e6697d4-a8ac-4383-a541-ebfc396427a5.jpg?aki_policy=profile_small","Lives in Tamworth, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("264184896","Nicola","https://a0.muscache.com/im/pictures/user/b0416b5d-3531-44d3-bc50-14ce11813e03.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("116022835","Kristi","https://a0.muscache.com/im/pictures/user/5eb09b24-26e7-4e0a-bbba-75245837f1df.jpg?aki_policy=profile_small","Lives in Tamworth, Australia.","We are an Australian couple. Clinton is a kinesiologist and I am a dance studio owner. We are open minded, friendly and love meeting new people. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("228134045","Brittany","https://a0.muscache.com/im/pictures/user/41dc0dde-8a8b-458a-a25f-18ae2e1fca23.jpg?aki_policy=profile_small","Lives in Tamworth, Australia.Speaks English.Work: Teacher.","Hi I'm Brittany a young high school teacher, I live with my partner, Lindsay, and our husky, Rebel.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("59851786","Mel","https://a0.muscache.com/im/pictures/a06fa7e5-ac62-40bd-8453-25ec5243e92b.jpg?aki_policy=profile_small","Lives in Kingswood, Australia.","Farming family from near Tamworth in Northern NSW");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48545741","Morgan","https://a0.muscache.com/im/pictures/2bfe26d1-5ef7-4bcd-b54a-64650eb6aa6f.jpg?aki_policy=profile_small","Lives in Tamworth, Australia.Work: Events Planner Business owner .Connected account.","Just moved to Tamworth! Can't wait to share our home with you. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("223943436","Sarah","https://a0.muscache.com/im/pictures/user/3ec7c097-c585-431b-bea6-34a0f58d2786.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53770203","Helen","https://a0.muscache.com/im/pictures/280fe891-830a-4ea0-840e-00562cb8a58c.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("31420775","Mary","https://a0.muscache.com/im/pictures/a5cb29ca-c887-4b35-b514-0f85675fbb85.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61710638","Kim (Camilla)","https://a0.muscache.com/im/pictures/19568e05-670e-4a8b-8c19-c906dc1c1998.jpg?aki_policy=profile_small","Lives in Hillvue, Australia.Speaks Bahasa Indonesia.Work: Retired.","Married to Colin
Seniors
Live in Regional NSW");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("201408566","Michelle","https://a0.muscache.com/im/pictures/user/33b22fba-874e-4cad-b8e5-d447506d63e5.jpg?aki_policy=profile_small","Lives in Kunda Park, Australia.","I’m a health professional at Tamworth Hospital and also studying part time. I love the New England region. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("101575749","Michaela","https://a0.muscache.com/im/pictures/6efc2745-9f80-4a29-be35-ae5876783732.jpg?aki_policy=profile_small","Lives in Moore Park, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("681876","Jody","https://a0.muscache.com/im/pictures/user/b9673f4a-3aaf-4f5e-9f3f-f9d0462d04c2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Guesthouse Wrangler at Jody's Guesthouses.","I'm a 39 year old solo mama of one boy, Elliott, who is eight years old.

I live at The Rex with my son and our dogs.

We're a friendly bunch and happy to help you get settled in Tamworth and give…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152907034","Lachlan","https://a0.muscache.com/im/pictures/user/ecdeae64-52a9-465b-92df-21b3d9dc440f.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("145776648","Cameron And Mel","https://a0.muscache.com/im/pictures/67a3c509-f285-4d25-abdb-dd3a3b5406fe.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("115067940","Lesley","https://a0.muscache.com/im/pictures/d478b215-f249-4e62-924f-855853e9cd87.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("160272253","Garron","https://a0.muscache.com/im/pictures/user/50a0b26a-564c-4e5a-953d-b7d1c8363ec4.jpg?aki_policy=profile_small","Lives in Tamworth, Australia.","Hello! I live in Tamworth with my  wife and two children. Spent my childhood and schooling in Tamworth and I was glad for the opportunity to moved back here from Sydney when the opportunity arose 10…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("199155293","Teena","https://a0.muscache.com/im/pictures/user/2449747b-1fbb-4f2e-8be6-71d3742d50f7.jpg?aki_policy=profile_small","Lives in Tinonee, Australia.","I’m a empty nester who’s keen to explore the world around me ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6932072","Dheera And Raj","https://a0.muscache.com/im/users/6932072/profile_pic/1442142600/original.jpg?aki_policy=profile_small","Lives in Mondrook, Australia.Speaks Español.Work: Teacher and carpenter.Connected account.","We live in a district called  Mondrook , near Tinonee in the awesome Manning Valley. I am a High school English and Drama teacher, married with adult children making their way through their 30s in…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("19407635","Janeece","https://a0.muscache.com/im/pictures/31258ba9-e01f-4fc5-aebe-5b5296370c6b.jpg?aki_policy=profile_small","Lives in Tinonee, Australia.Connected account.","Easy going,  friendly, arty person. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("237301593","Piet","https://a0.muscache.com/im/pictures/user/0cd5fbde-0c17-4733-beb5-aace9c9eeb3b.jpg?aki_policy=profile_small","Lives in Taree, Australia.","I am a local grandfather of three children 
I work locally during daylight hours often away on weekends 
I enjoy camping travelling and the beautiful manning river ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28894766","Ingrid","https://a0.muscache.com/im/users/28894766/profile_pic/1427698031/original.jpg?aki_policy=profile_small","Lives in Taree, Australia.Speaks Deutsch.Work: Virtual Assistant.","We live in a beautiful little coastal town about 3.5 hours north of Sydney, and love the great outdoors and the beauty of nature that abounds on our doorstep.  My husband is a photographer, and he is…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53103442","Lorraine","https://a0.muscache.com/im/pictures/4a208cfd-bdfb-4e52-970e-35cf3db8c90c.jpg?aki_policy=profile_small","Lives in Tinonee, Australia."," My husband Graeme is recently retired we have a large family who have all moved on. We love different cultural foods experiences. We enjoy meeting new people for our guests to have an enjoyable…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24956283","Jenny","https://a0.muscache.com/im/pictures/717cab62-fbab-47f6-b385-2c082bf588f1.jpg?aki_policy=profile_small","Lives in Old Bar, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6692072","Peter","https://a0.muscache.com/im/users/6692072/profile_pic/1370347912/original.jpg?aki_policy=profile_small","Lives in Wingham, Australia.","Mixed animal vet (ie treat all species), father of 4 girls, like outdoors pursuits including tennis, bushwalking, sailing. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49236962","Adam &amp; Heidi","https://a0.muscache.com/im/pictures/54915f5e-bfcc-4990-8275-8b409d80e2db.jpg?aki_policy=profile_small","Lives in Old Bar, Australia.Connected account.","I enjoy the coastal life on the mid north coast of NSW. We love to travel and see new places and enjoy meeting new people. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("16646864","Christine &amp; Peter","https://a0.muscache.com/im/users/16646864/profile_pic/1435724917/original.jpg?aki_policy=profile_small","Lives in Tinonee, Australia.Speaks English.Work: Teacher, Printer, Business Owner/Operators.","We own and operate Manning Valley Hideaway at Artisans on the hill, a unique property which is  5-bedroom self contained accommodation. Onsite as well, there is an artisan craft gallery and a craft…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("134183323","John","https://a0.muscache.com/im/pictures/c0d0e165-f756-4fe2-9ea2-f6d4a7cf4fb6.jpg?aki_policy=profile_small","Lives in Rozelle, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4997126","Mary","https://a0.muscache.com/im/users/4997126/profile_pic/1360572220/original.jpg?aki_policy=profile_small","Lives in Tallwoods Village, Australia.Speaks English.","I am retired and live with my partner Whady, who  speaks Polish as well as English. We love having family and friends, cooking, eating, dragon boating, walking around the Tallwoods Village golf course…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("35113087","Maurie","https://a0.muscache.com/im/users/35113087/profile_pic/1433571416/original.jpg?aki_policy=profile_small","Lives in Taree, Australia.Work: Stacks Law Firm.","I am a lawyer and Deidre a retired French teacher. We enjoy snow skiing, golf tennis and cycling. We are heavily involved with Rotary – in my district I am District Governor 2015/16. We have a retreat…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("171177590","Eric","https://a0.muscache.com/im/pictures/user/1c4498e2-4ee4-4424-827c-79b731bd422f.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("67110954","Jane","https://a0.muscache.com/im/pictures/user/18724aaa-828c-4a0b-a4d1-7b685dbf1e80.jpg?aki_policy=profile_small","Lives in Oxley Island, Australia.","I live and work in the beautiful Manning Valley on the Barrington Coast of NSW
I enjoy gardening, reading and love to cook. I enjoy entertaining family and friends and love meeting new people.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("177922212","Peter","https://a0.muscache.com/im/pictures/user/97291f0e-9458-4ba3-ae64-fac34398f88b.jpg?aki_policy=profile_small","Lives in Manning Point, Australia.","We are a retired Aussie couple who are now empty nesters with a big two story house in a beautiful seaside village on the east coast..
If you like the quiet life then this is your place...
We are…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("62890621","Leah","https://a0.muscache.com/im/pictures/user/a567ae1d-3834-4084-966f-7f0430c099e4.jpg?aki_policy=profile_small","Lives in Taree, Australia.Speaks English.Work: Teacher.Connected account.","Hello. Im Leah and have a beautiful home that is a pleasure to share. I am happy to give you plenty of privacy or happy to socialise. Sometimes you may have the whole house to yourself If I am away. …Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("109391260","Amy","https://a0.muscache.com/im/pictures/user/ef50d235-e41a-4bb0-bb5f-c0ce292bff20.jpg?aki_policy=profile_small","Lives in Tweed Heads, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("62194394","Annabelle","https://a0.muscache.com/im/pictures/9089bb28-c682-4d84-b8c8-139560fab3a2.jpg?aki_policy=profile_small","Lives in Australia."," I love beach running with my dog, overseas holidays and yoga. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25370979","Emily","https://a0.muscache.com/im/users/25370979/profile_pic/1419907693/original.jpg?aki_policy=profile_small","Lives in Gold Coast, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3794750","Anna","https://a0.muscache.com/im/users/3794750/profile_pic/1357864655/original.jpg?aki_policy=profile_small","Lives in Kingscliff, Australia.Connected account.","Hello, my name is Anna Broomfield, i am originally from South Carolina. I met my husband travelling in Costa Rica over 20 years ago. He is Australian. We lived in america for a short while and found…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("44885141","Catherine And Tim","https://a0.muscache.com/im/users/44885141/profile_pic/1444123731/original.jpg?aki_policy=profile_small","Lives in Cudgen, Australia.Work: I help manage the farm and when the fruit is in season I do most of the picking. On the weekends I sell fruit and vegetables, farm honey and homemade preserves at the local farmers markets. .Connected account.","Catherine's parents bought the farm in 1972 and the family moved to Cudgen  in 1976. We grow tropical fruit, the majority crops being avocados and custard apples. The property has been open to…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24890875","Sandy","https://a0.muscache.com/im/pictures/ea2750b3-8852-43e6-bc10-4316b188b815.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Hi,  I'm Sandy and live with my husband and 2 boys (12 and 20) ..oh and Bonnie our 11 YO Labrador! 
We love where we live,  and that's why we would love to share this with travellers!  Our extensive…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9089878","Robert &amp; Evelyn","https://a0.muscache.com/im/users/9089878/profile_pic/1400721081/original.jpg?aki_policy=profile_small","Lives in Tweed Heads, Australia.Speaks English.Work:  .","Love eating out with hundreds of restaurants to choose from around Collangatta Tweed Heads.
Evelyn and I enjoy travelling.   
Enjoy listening to travellers highlights and stories.
we love going for…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4901620","Natalie","https://a0.muscache.com/im/users/4901620/profile_pic/1360800269/original.jpg?aki_policy=profile_small","Lives in Kundabung, Australia.Work: Administration .","Natalie Pearson");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("30509325","Anne","https://a0.muscache.com/im/pictures/bd8f53bd-ca09-4210-b5ea-c7e58f7edfd3.jpg?aki_policy=profile_small","Lives in Banora Point, Australia.Speaks English.Work: Previous Manager of welfare youth service.","Hi, I'm Anne, married to my wonderful husband Greg. We have 6 children between us (now all out of home) and 4 grandchildren who we love. We enjoy travelling and have stayed in AirBnB's around the…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("56800916","Steve","https://a0.muscache.com/im/pictures/user/5bccfa18-cd62-4212-93da-352df2a294a1.jpg?aki_policy=profile_small","Lives in Coolangatta, Australia.Work: Pilot.","I am busy with full time aviation study at the moment and run a business on the side. I love the ocean and at the beach every day. 
I have a little dog who is full of energy and loves people. 
Very…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("119557068","Christine","https://a0.muscache.com/im/pictures/98dfb55a-eab3-4d81-939d-c54e14801e13.jpg?aki_policy=profile_small","Lives in Banora Point, Australia.","Friendly love meeting new people. Love to host people and give them advise on the holiday and. Where to go ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("80973888","Leah","https://a0.muscache.com/im/pictures/user/e38cf572-d6ad-4d13-8219-04f4574c8589.jpg?aki_policy=profile_small","Lives in Tweed Heads, Australia.Connected account.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("224350377","Justine","https://a0.muscache.com/im/pictures/user/19f0ab42-e2c9-462d-9a0c-cf812794754b.jpg?aki_policy=profile_small","","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("18823595","Marilee","https://a0.muscache.com/im/pictures/user/c8e0c4a2-2a72-4528-b6c3-d73b028944bb.jpg?aki_policy=profile_small","Lives in Tweed Heads West, Australia.","We are a young couple who love to travel and see the world.  We are friendly and out-going. We love animals and swimming and camping. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("33725785","Trent","https://a0.muscache.com/im/pictures/user/b907edaa-2622-4405-8aa6-e0729697783e.jpg?aki_policy=profile_small","Lives in Gold Coast, Australia.Work: Electrical Contractor.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9343583","Donna","https://a0.muscache.com/im/pictures/user/9ef43584-533d-411a-bb4c-a397fe83a724.jpg?aki_policy=profile_small","Lives in Tweed Heads, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51537707","Rebecca","https://a0.muscache.com/im/pictures/c158f93e-cdfe-4e43-8dd8-aea71851d06b.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.Speaks English.Work: Short Stays Wagga.Connected accounts.","The Mum in a family of 4. Enjoys fashion, food and fun, new places and having little adventures:) ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("214704292","Olivia","https://a0.muscache.com/im/pictures/user/996cbd30-4e3e-4663-9bc3-a6d344f8578b.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12973963","Geoff","https://a0.muscache.com/im/pictures/user/4127ffa6-758b-44ff-9cb2-50c53decf998.jpg?aki_policy=profile_small","","I'm a technical manager, of the industrial chemist variety.  I love bird watching, the Melbourne Demons AFL team, the southern coast and my kids (all 5 of them, all flown the coop now).  So I have…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29712999","Cassandra","https://a0.muscache.com/im/pictures/user/cde8b1c3-29df-49a5-9b02-ef3968075f24.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","I live with my partner and toddler in Wagga Wagga, NSW. I’m a ceramicist and work from my home studio, and am also studying heritage conservation part time. ");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("199121124","Deon","https://a0.muscache.com/im/pictures/user/9ff29f37-147e-491b-be63-262c88dc6e4f.jpg?aki_policy=profile_small","Lives in Melbourne, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("232926760","Townsend","https://a0.muscache.com/im/pictures/user/54b0e347-7a02-4418-902d-48cdf6b761ed.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61195544","David And Laurene","https://a0.muscache.com/im/pictures/8145884e-08d5-46d4-8073-cfa4d89aec4f.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We have been involved in the hospitality and tourism industry over the years and we are looking forward to welcoming guests to our apartment (granny flat) which is attached to our private…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155175435","Kim","https://a0.muscache.com/im/pictures/user/d6ba3896-247e-4368-a3c0-38f0119fc325.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50973048","Erica","https://a0.muscache.com/im/pictures/26027fbf-3e20-4995-9cb5-2adab6daa64d.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","Hi, my name is Erica. I live and work in Wagga Wagga. I am a busy professional who keeps a clean and healthy lifestyle. I enjoy the gym, great outdoors, hiking, travel and collecting vintage items. 
…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("32762","Grant","https://a0.muscache.com/im/pictures/f67effde-334d-4628-9d41-ba401ab95eaf.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.Work: Firefighter.Connected accounts.","I am an AirBNB veteran having travelled extensively using AirBNB since the start. I love the AirBNB community, the interesting people I meet and the fabulous places I stay.
When choosing an AirBNB…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("90131145","Jenny","https://a0.muscache.com/im/pictures/da6514d2-dcbe-4d55-b1ec-5113f375a661.jpg?aki_policy=profile_small","Lives in Tarcutta, Australia.","I'm a farmer's wife and live on a Rural property. I have grown up children and my husband and I enjoy travelling around Australia with our Caravan.");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6851242","Rachel","https://a0.muscache.com/im/users/6851242/profile_pic/1370994985/original.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.Work: Educational Designer.Connected account.","I am from Wagga Wagga in NSW. I work at Charles Sturt University as an educational designer and practice Equine Bowen Therapy in my spare time.  I have two grown up children and one young grandson. I…Learn more");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("155853554","Harry","https://a0.muscache.com/im/pictures/user/a9d0e898-363e-4c54-bdaf-d9682b608c18.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","");
INSERT IGNORE INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("181222266","Kylie","https://a0.muscache.com/im/pictures/user/83ef7152-da31-4ca1-93d6-5aaadc3f7ae4.jpg?aki_policy=profile_small","Lives in Wagga Wagga, Australia.","");
