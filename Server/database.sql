CREATE TABLE IF NOT EXISTS `host` (
  `id` varchar(10) NOT NULL KEY,
  `name` varchar(30) ,
  `details` varchar(200),
  `picUrl` varchar(200),
  `self_intro` varchar(3000),
  `password` varchar(8) DEFAULT '12345678'
) DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `host_to_room` (
  `host_id` varchar(10) NOT NULL,
  `room_id` varchar(10) NOT NULL,
  PRIMARY KEY (`host_id`,`room_id`)
) DEFAULT CHARSET=utf8;


INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47250720","Mia","https://a0.muscache.com/im/pictures/32dbd44e-50ca-4e47-a50c-99a3e9413e13.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi There! I’m an AirBnB host myself and have been using the platform as a super host for over a year. I’m looking forward to my first guest experience!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("47250720","21884828"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26919489","Yukio","https://a0.muscache.com/im/pictures/user/56c443ef-fca9-4de9-b2ce-3c1494e4d544.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español,Português.Work: Brianda Projects.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("26919489","19942828"),
("26919489","21299201");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3809995","Charlotte","https://a0.muscache.com/im/pictures/user/a47df38e-9106-44ce-91cb-adea8685756b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","My husband and I live close by to Potts Point with our 8 year old daughter. We love meeting people from all over the world!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3809995","767295"),
("3809995","1903284");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("132640747","Al","https://a0.muscache.com/im/pictures/c694d9f4-a509-4728-8242-61ab142ff62a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("132640747","19012009"),
("132640747","25427666");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("34487626","Susan","https://a0.muscache.com/im/users/34487626/profile_pic/1436487041/original.jpg?aki_policy=profile_small","Speaks English,Español,Hindi,Italiano,Português,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("34487626","28323916"),
("34487626","28323996"),
("34487626","31543369"),
("34487626","31543381"),
("34487626","31807602"),
("34487626","31809311");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20039367","Bettina","https://a0.muscache.com/im/pictures/b3636a52-ce8a-42ea-b23a-2ac415f5678a.jpg?aki_policy=profile_small","Lives in Coogee, Australia.Speaks English.Work: Health professional .Connected account.","I am a warm friendly professional
I work in the health industry love to travel with an appreciation of art music &amp; culture . Have expansive knowledge of Sydney &amp; surrounds &amp; am happy to assist with any questions regarding the accomodation or your trip 
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20039367","19912813"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4421400","Scott","https://a0.muscache.com/im/users/4421400/profile_pic/1355706316/original.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.","I'm Scott, very active guy from Sydney who loves traveling and exploring different cultures. Look forward to meeting you!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4421400","846696"),
("4421400","879438"),
("4421400","2339516"),
("4421400","4698283"),
("4421400","9301633"),
("4421400","18431145"),
("4421400","24213302"),
("4421400","32824270"),
("4421400","35132774");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5383558","Angus","https://a0.muscache.com/im/pictures/1969385f-a2c1-44f5-8e77-1ff97f0ae2fa.jpg?aki_policy=profile_small","Lives in Redfern, Australia.","Love nature and the outdoors");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5383558","15424010"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("74564218","Andre","https://a0.muscache.com/im/pictures/6430b854-1d2f-46fd-a64c-4778f95ebffd.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks Português.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("74564218","13582232"),
("74564218","15474118");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("644516","Mel","https://a0.muscache.com/im/pictures/user/789c20d4-ab5d-4eeb-a25c-d77decee9659.jpg?aki_policy=profile_small","Lives in Redfern, Australia.Speaks English.Work: Photographer.Connected account.","I work for myself as a commercial photographer and I love it!
I have an office at home so sometimes i'm at home during the day working, so can greet you when you arrive, whilst other times I'm out working on location, if this is the case I will leave a key out for you and communicate this with you via the Air BnB message service.
Harry (my dog) and I go walking every morning. She will greet you very enthusiastically when you arrive at the house and be ready for a scratch on her tummy from you to say hello.
It's great to meeting and hosting new people from all over the world and have a chat over a coffee or a wine and share my local knowledge with you, and hear about your travelling experiences, but I also respect your privacy, and my work keeps me pretty busy too!
I love being an Air BnB host and have made some great friends from the guests who have stayed with me from all over the world.
I am aware a lot of people are looking for longer term accommodation, however, short term stays suits me, and I'm not looking for any guests to stay longer than 1 month.
I look forward to meeting you.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("644516","130970"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45902462","Kate","https://a0.muscache.com/im/pictures/user/528e199d-01cc-485a-afde-8f34a9a42065.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Speaks English.","Hi all,
I'm Katie, a graphic designer based in Sydney. I'm an on-off Airbnb host who just love to use Airbnb for travel accommodation like you do. My Airbnb experience ( both host and guest) are incredibly amazing and memorable, I met so many amazing guests/hosts who came from all around the world and there have been always different stories to take away afterward. Regardless of a few bad reviews  that upset me, those good hosting experiences truly motivate me. Honestly, I'm not making a living on this, Airbnb apparently a thing set me free from paying the bills while I'm travelling and  I would never stop feeling grateful for this mutual share of benefit. Travelling is a part of learning process and lifestyle, I hope my Airbnb place could be a part of your beautiful journey as well. 
Please notice that most of the time you will checkin/out by yourself as I could be away by that time. I expect guest will be more aware of your trip/ time management, so bit careful read/research about your Airbnb place will save both our time and effort. 

Ps: Tks for reading anyway, usually people roll past this part:-) ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("45902462","9051847"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7531199","Daniel","https://a0.muscache.com/im/pictures/b3b8bec1-d22c-4a1e-895b-525bae0f9453.jpg?aki_policy=profile_small","Lives in Redfern, Australia.","I've travelled a bit in the past but of recent years been tided to a desk. Looking forward to getting out there again soon. 

Enjoy being a host and showing people my city, which I love. 
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("7531199","4439559"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("57488052","Nicole","https://a0.muscache.com/im/pictures/fac74210-377c-4f59-84c5-cb0340c9b55a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: NSW Department of Education .Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("57488052","31719385"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
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

I speak fluent English, Cantonese (广东话), Mandarin (普通话), Bahasa Melayu, Bahasa Indonesia &amp; Tagalog.

If the dates you're after are available on my calendars, you may proceed to "INSTANT-BOOK" em'.

My calendars on AirBnb are always up to date, so if they're blocked and you can't select them, it pretty much means someone else has already booked em'.

Happy stays &amp; safe travels :)

View more properties HERE (JL1) &gt; https://www.airbnb.com.au/users/8530753/listings
 
OR HERE (JL1) &gt; https://www.airbnb.com.au/s/homes?host_id=8530753
 
OR HERE (JL3) &gt; https://www.airbnb.com.au/s/homes?host_id=114384153
 
OR HERE (JLMY) &gt; https://www.airbnb.com.au/s/homes?host_id=177114776

OR HERE (JLMY2) &gt; https://www.airbnb.com.au/s/homes?host_id=217495299

OR HERE (JLMY3) &gt; https://www.airbnb.com.au/s/homes?host_id=228789871");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8530753","17597778"),
("8530753","21583293"),
("8530753","23636663"),
("8530753","23791351"),
("8530753","24163323"),
("8530753","25169449"),
("8530753","25480578"),
("8530753","25489818"),
("8530753","25490687"),
("8530753","25491043");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105151106","Geoff","https://a0.muscache.com/im/pictures/db36996d-c180-4d7d-a83b-1f8a8626b51f.jpg?aki_policy=profile_small","Lives in Woolloomooloo, Australia.Speaks English,Italiano.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("105151106","16123508"),
("105151106","32963565");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("36928848","Jackie","https://a0.muscache.com/im/users/36928848/profile_pic/1435493891/original.jpg?aki_policy=profile_small","Lives in Centennial Park, Australia.","I love keeping fit and spending time with friends and family. My favourite destination is Paris. I love trying out new restaurants and cafes in Paddington and Woollahra. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("36928848","7042470"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("46909702","Fumi  &amp; Lucie","https://a0.muscache.com/im/pictures/1af0af9a-5447-44b0-9774-2231f6fbf8ea.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Français,日本語.","We love traveling and have visited lots of different places in the world but we have decided to call Sydney nearly 4 years ago (Fumi has been in Australia for 10+ years).
We both work in Sydney and like to stay outdoors on our days off, either at the beach or for a walk, Sydney has so much to offer..
We are pretty relaxed and like meeting new people but as hosts, we will respect your privacy and will let you enjoy our flat and you will have the place to yourself.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("46909702","8977284"),
("46909702","19065568"),
("46909702","22193203");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4519063","Margie","https://a0.muscache.com/im/users/4519063/profile_pic/1403432620/original.jpg?aki_policy=profile_small","Lives in Willoughby, Australia.Work: Channel 9.","We are from Sydney, Australia and have a busy lifestyle,  We enjoy cooking, golf, gardening and travelling. Both Wayne and I work full time. We enjoy meeting people from all walks of life!!  Our home is somewhere to stay in comfortable surroundings and a nice quiet neighbourhood. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4519063","3265015"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("73407853","Zoltan","https://a0.muscache.com/im/pictures/user/5f5ef4ab-e185-492c-bc92-f2b0c8159d9e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English,Español,Magyar.Connected account.","I am an artist originally. I am an active person who loves traveling and cooking.  Besides English I speak German, Hungarian and Spanish . ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("73407853","26108345"),
("73407853","27711170"),
("73407853","29806142");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6875353","Nathan","https://a0.muscache.com/im/pictures/bd0871d6-8cfe-4170-9370-da21b4fb71ae.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Forex Trading, Sales and marketing.","Hi there, Born in NZ to a long line of danish vikings, I moved to Australia when I was 17 and then to London when I was 20...

Ever since then I've been addicted to travelling and bounced around the world non stop for about 4 years during which time I backpacked to over 90 countries, became a Dive Instructor in Thailand and eventually decided to commute between London and Sydney for the summers on both sides of the earth. I trade forex in my spare time, Background in Sales and Marketing, Building Construction and Renovations, IT Project Management and studied Clinical Nutrition, I'm now 32");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6875353","1268125"),
("6875353","1268135"),
("6875353","1769170"),
("6875353","2533176"),
("6875353","4598493"),
("6875353","8025580"),
("6875353","27095958"),
("6875353","27521703"),
("6875353","32876781"),
("6875353","35351370");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14813306","Tania","https://a0.muscache.com/im/pictures/14f55224-81a7-4185-ae5f-5360f07cbd0f.jpg?aki_policy=profile_small","Work: Tania Wursig Art.","Hi,
My name is Tania, I am an artist and and have been creating, adding to and evolving my spacious, colourful, bohemian loft style home for the past few decades. I share this much loved space with my beautiful daughter and my 2 cats.
Aside from painting and exhibiting within Australia I am very fortunate to have an annual 3 month painting residency in Tahiti.
I usually go for the months of July, August and September to paint, teach, exhibit, gather inspiration and enjoy that beautiful part of the world. 
Since 2015 I have been sharing my eclectic and creative world on airbnb which includes my spacious bohemian home my 2 gorgeous cats Fellini and Poerava, but we call her 'Popo', a truly eclectic accumulation of art, artefacts and collectables and the wonderful village  of Rozelle where I spend the other part of my life when not in Tahiti.

As I will be away I would prefer guests who are seeking a longer term stay, 2-3 months would be ideal and I am offering a great discount as incentive.
My dear friend Kathrin, who lives down the road will be acting as land lady, should you need any assistance she is just a phone call away.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("14813306","2898295"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1820335","Sherry","https://a0.muscache.com/im/pictures/user/373e56da-7158-455a-a3e2-1965f07e751e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Hello, my name is Sherry, and I am originally from the United States. My partner and I have taken over from the lovely Dave and Lisa to run this apartment. We look forward to giving you the same experience and friendly attention as they have given over the last few years.

We're very respectful and will take the greatest care and appreciation of your property, and love people who do the same with ours!

We love traveling, cooking, and daily exercise. We are big dog lovers and are enjoying our new cavoodle, Ruby. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1820335","658720"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2052335","Keith","https://a0.muscache.com/im/pictures/c20a2e92-d962-443f-b5b0-d7156cf00a99.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","I am a semi retired man who is happily running a small family accommodation business for you to enjoy!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2052335","426398"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51507029","Toni","https://a0.muscache.com/im/pictures/user/96c199f0-aea6-42c0-9640-e1f969dc1f7d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("51507029","10691075"),
("51507029","20697867");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("91754420","La","https://a0.muscache.com/im/pictures/3c9695c2-1fa8-4e24-8696-d4f7c2b498ea.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("91754420","17907575"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("688781","Lynn","https://a0.muscache.com/im/pictures/user/d1ac9124-7389-4476-8e0b-e217db48c148.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Work: Graphic designer / model.","I'm am an artist, Silverfox model, Airbnb host, mother of four wonderful adult kids, proud grandmother of a baby girl born in the UK in November 2018, besotted dog owner and live in the top two level of a beautiful, light-filled three-level renovated church building.

Sharing my home (the street level) with Airbnb guests is one of the best things I've ever done. It's given me connections with many amazing people. I've found that the kind of people who choose Airbnb are adventurous, friendly, warm, intelligent, curious and often have fascinating stories to tell about their own lives.

When I travel, I stay at Airbnb places and each place I've chosen has been unique, full of character and has offered so much more than a stark and sterile hotel room. Meeting my hosts has been another benefit - they are all wonderful people.

I have a dog – a Lagotto Romagnola – whose name is Mucca and she shares my space upstairs. She's very friendly and lovable and is classified as 'hypoallergenic' so should not be a problem for guests with allergies.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("688781","143048"),
("688781","5751561");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29889587","Shukhratjon","https://a0.muscache.com/im/pictures/8e59cb82-9bd9-42cb-b5dc-d82b79a8bb1b.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Speaks English,Русский,中文.Connected account.","I am nice dude with some nice dreams :D");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("29889587","21505901"),
("29889587","21505965"),
("29889587","22570261"),
("29889587","23318322"),
("29889587","31932700");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6779186","Heather","https://a0.muscache.com/im/users/6779186/profile_pic/1377510612/original.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Speaks English,Français.","Life is great.  I have 2 beautiful children, an amazing husband and a great career in a wood workshop.  We are keen sailors, campers and generally outdoorsy people.  

As a host, I try to give our guests maximum privacy while still being available to answer questions or deal with issues should they arise.  As a guest, I'm very respectful of the places we stay and know what goes into a changeover so try to help out where I can.

I grew up in Sydney and have finally returned after many years living in various parts of the world - France, USA, UK, Singapore.  Airbnb has enabled us to keep the travel bug alive within us.  ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6779186","1243792"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131859707","Braith","https://a0.muscache.com/im/pictures/user/da11cb3b-be58-46b7-988f-0ea182210231.jpg?aki_policy=profile_small","Connected account.","I am a 35 year old male who works as a corporate professional. I live alone in my two bedroom apartment and spend very little time at home due to my demanding career. 

When I am home, I enjoy a very quiet lifestyle. A home cooked meal and an early night is how I spend my time at home. I work six days a week with early starts and late finishes, I am very rarely home. 

I take pride in my modest home by keeping it clean and tidy. I don’t host parties or rowdy groups. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("131859707","25468596"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1943399","Paul And Raymond","https://a0.muscache.com/im/pictures/user/0e4bac21-2274-4e5e-a9a2-1900737df8c2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Academic (Paul) &amp; Media Analyst (Raymond).","I (Paul) am a psychotherapist and Senior Lecturer at the largest counselling and psychotherapy college in Australia. This work is fascinating both in terms of the wonderful clients, students, and staff with whom I work.  I spent 10 years conducting social research on sexual behaviour, gender and sexuality, having come to academia late after running a manufacturing business, driving trams in Melbourne (a job a STILL have great dreams about!) and a wasted year in a clothing factory after high school. 

Raymond works as an analyst in government and corporate media, a field he has been involved in since graduation. After his honours year, he spent the best part of the next year backpacking around the world. Every continent covered.... except Antarctica. So that's on our mutual Wishlist!

Meeting guests - especially those visiting Australia - is like having a little holiday without leaving Sydney as we get to hear what their home countries are like. We manage to meet over 80% of our guests to welcome them to town! And this is the best part of being hosts with Airbnb. We have also been really lucky to meet a lot of other local hosts, managers from the San Francisco head office, and the wonderful, warm and friendly staff at the Sydney office. Paul was also asked to speak on the SuperHost panel at the inaugural Airbnb Open in November of 2014 and we both attended the Paris Open in 2015. It was really thrilling to be included with such passionate, professional hosts talking to a huge room full of excited people. 

We have traveled extensively including staying in hotels, hotels, on the beach, and latterly in Airbnb homes. So we really know what makes for a good stay. It's both a pleasure and an honour to have folks stay at here, especially international guests who are traveling around this lovely country.

We have three great apartments, close to the centre of Sydney, available as the entire place for up to four guests. We do not stay when guests are staying - you have the whole apartment to yourselves.

Redfern is an original area of Sydney, featuring some of the oldest homes dating back to the 18th and 19th centuries. Prince Alfred Park is nearby, and the city itself is on the other side of that. You can literally walk to town in under 10 minutes, and it is well supported with public transport to all parts of the city only a four blocks from the front door.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1943399","389876"),
("1943399","725541"),
("1943399","21311896");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8963402","Noa &amp; Keren","https://a0.muscache.com/im/pictures/user/3305a982-cafc-448e-a915-fddbdf77836c.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","We chose Sydney as our home over 18 years ago and have loved digging under it's glittering beach destination facade to discover the hidden gems.
We run a creative agency and have a 7 year old kid and an old dog.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8963402","16876209"),
("8963402","19481367"),
("8963402","20803207");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6344154","Roy","https://a0.muscache.com/im/pictures/45ced7a5-5904-4710-b44e-79d48e93a1e2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Hi, My name is Roy and I'm a young working professional living in Sydney, Australia. I have an awesome job working for a non profit organisation. I'm an avid lover of live music, out door adventure, good wines, great food and interesting people.  ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6344154","10026712"),
("6344154","13690087"),
("6344154","25428954");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9509911","Andrea","https://a0.muscache.com/im/pictures/user/2d160d64-7ebc-4fef-9bc2-dffdbc1ba50d.jpg?aki_policy=profile_small","Speaks English,Italiano.","This is the first time that I have listed my place. Let me tell you guys a little about myself. I am 48 years old. I was born and brought up in Sydney in a very very Italian house. I am a video maker specialising in medical/hospital films so I spend a great deal of time travelling. Hence the reason I have decided to list my place. This is actually my home. I am typing this email at the moment from my sunny balcony. If you are living here it means that I am actually travelling or living at my girlfriend's house. 
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("9509911","1815619"),
("9509911","4937277"),
("9509911","5848768");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7671211","Belinda","https://a0.muscache.com/im/users/7671211/profile_pic/1374665398/original.jpg?aki_policy=profile_small","Speaks English.Work: Health Promoter.","Belinda- my husband Adam myself and 2 children live in Sydney, Australia and love outdoor sports, great food, nature, meeting fun people. Health is a priority:)");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("7671211","8294494"),
("7671211","31171707");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2953790","Laszlo","https://a0.muscache.com/im/pictures/user/0d4ac283-0777-4f12-a31c-bd874b84d5fe.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Speaks Deutsch,English,Magyar.Work: Tiny Hunter.Connected account.","Friendly, well-travelled and easy-going guy. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2953790","9698145"),
("2953790","16364076"),
("2953790","28571928"),
("2953790","34603545");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37394087","Tina","https://a0.muscache.com/im/pictures/user/dbe29e05-e531-4ddd-9710-7e5019015a28.jpg?aki_policy=profile_small","Connected account.","Tina, Uni student and travel junkie.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("37394087","29809726"),
("37394087","30166126");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("188997545","Kannika","https://a0.muscache.com/im/pictures/user/9360fb8c-2995-4af1-a92c-4f83d3b39d01.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,ภาษาไทย,中文,日本語.Work: Property Management.","Whether I am travelling or hosting  Airbnb is my passion, I am really excited to host Airbnb PLUS. I am a true blue born and bred city girl as I spent my whole life in Sydneys CBD it is my home and only way of living. I live and breathe the City Life!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("188997545","24999766"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13791976","Bron","https://a0.muscache.com/im/pictures/user/89d6b8ac-bdce-4841-8fcc-4d301758e8cb.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Easy going person who loves my family, pets, friends &amp; gorgeous neighbourhood of Surry Hills. 

I really look forward to sharing my home and enthusiasm for the beautiful city of Sydney with guests. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("13791976","2694793"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("140732328","Chris","https://a0.muscache.com/im/pictures/user/5ccefb43-6b66-43aa-a3cb-2ee16f76edba.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Work: Handyman.","To start my day I usually go for a run. Sydney has steep hills, lots of parks, pathways along the harbour. If you aren't up for a morning run then join me for a coffee.

In 2019 I plan to leave Sydney and do some extensive travelling.

I'm motivated by the belief that God loves us but sad that our greed hurts so many.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("140732328","23255721"),
("140732328","23788626"),
("140732328","25377947"),
("140732328","32055180");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1553030","Beverley And Michael","https://a0.muscache.com/im/pictures/ad808be1-aaad-4240-8b32-1a6a370e5bce.jpg?aki_policy=profile_small","Lives in Mascot, Australia.Connected account.","I have travelled extensively since I was 3 years old and can imagine myself doing so till I can't walk when I am 100 years old.   There are many new places in the world I would like to visit and hope that those people can come visit me.
I feel like I know what people would like, that is your own bedroom and bathroom.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1553030","7944819"),
("1553030","10661536");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("167498543","Tai","https://a0.muscache.com/im/pictures/user/4e77f375-def5-48c8-a9be-f8aea58b7eea.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,中文,日本語.","I love to Travel and see the world!! I love the idea of Airbnb as it makes it more affordable yet you don’t have to compromise on comfort and quality.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("167498543","21973027"),
("167498543","22709315"),
("167498543","24996341"),
("167498543","24999766");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("55713296","Rebecca","https://a0.muscache.com/im/pictures/user/3f64929c-afcb-4e82-aaa1-485e76139be7.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Speaks English.Work: Consultant.Connected accounts.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("55713296","4540547"),
("55713296","17914785"),
("55713296","17915374"),
("55713296","22483447"),
("55713296","22709659"),
("55713296","24018204"),
("55713296","24603395"),
("55713296","26202567"),
("55713296","32216466"),
("55713296","33136558");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45620575","Trevor","https://a0.muscache.com/im/pictures/8fc6ee95-1c76-400c-b922-62bfd6cf6090.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,ภาษาไทย.Work: Veneueslive.","We are a gay couple and have been living in Newtown for some time, and love this part of Sydney. Newtown is a unique suburb, full with people who are down to earth and kind. We're lucky enough to have some of the best bars and restaurants in Sydney, as well as excellent access to the city.

We've an Italian Greyhound, who tines and smells great, is fully house trained and is always on his best behaviour. He loves hanging out with people if they are home and tends to do his own thing.

We love our place in Newtown and we hope you will too. We rent out our spare bedroom through bnb when our friends and family aren't visiting. As much as we love our space, we also love meeting people from around the globe and sharing stories and experiences from our travels.

And we love going out for a nice meal or drinks. We love trying new restaurants and small bars that seem to pop up all the time in Newtown. We love cooking for our friends and family, and happy to share a meal or two with our guests. We love good wine and food, movies, music and outdoor activities such as the beach.

As hosts, it's our duty to ensure you know about all the great things that Sydney has to offer, including the highlights of Newtown and the inner west.

We're hopping to meet you soon!

Tom Trevor and Thongfar");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("45620575","8688786"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50707354","Marie","https://a0.muscache.com/im/pictures/324d7620-52c2-4e99-9100-332f5b4b3895.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Work: Retired.","I am an Annandale local and I run a small business in the area. I love living in the inner-west of Sydney with all the cafes, restaurants, eclectic shops and green spaces. In my spare time, I like to paint and walk my poodle, Lulu, at the nearby dog-friendly park. During my travels abroad I have enjoyed staying in Airbnb apartments and I would love to return the favour to intrepid travellers visiting my beautiful city.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("50707354","15257722"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("96106690","Dixon","https://a0.muscache.com/im/pictures/8b6e6ac5-8efc-4a00-8f9e-9c3cc1b0f490.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Connected account.","I'm an easy and outgoing character with a thirst for knowledge and exploration. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("96106690","16277847"),
("96106690","16286231"),
("96106690","16728245"),
("96106690","18935580"),
("96106690","27766663");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8247293","Ariana","https://a0.muscache.com/im/pictures/99e42ec1-ce63-4c81-b0f4-5bea23b5198e.jpg?aki_policy=profile_small","","I grew up in Sydney's inner city and still think it's a pretty magical place. I've spent one year in South America, one year in California and backpacked bits of Europe and New Zealand. I studied for a long time in the liberal arts, mostly theatre/gender/performance. Some of my favourite things are white balsamic vinegar, ocean swims, wandering open-air markets and dancing to Tom Waits' more tuneful numbers with my little girl.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8247293","1547664"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("7028222","Kylie","https://a0.muscache.com/im/users/7028222/profile_pic/1372825205/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Hi there
My name is Kylie which, not many people know,  is actually an Australian aboriginal word for Boomerang. 
I bought this apartment decades ago because I loved the area and wanted to close to the city and my work. It’s such a melting pot of interesting culture and entertainment, but also a real community. 
For over a decade I worked at the Art Gallery of NSW which is a short walk from the apartment. I’d walk into work every day and most days do a quick walk at lunch time around the Botanical Gardens to take in the view of the Opera House and Harbour Bridge. 
I moved out when we had our baby and wanted to be closer to family. We love doing Airbnb as we love hosting and it keeps us connected to the area. 

");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("7028222","1292602"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("103561166","Sittichai","https://a0.muscache.com/im/pictures/0554bfb6-20aa-4558-8e7d-0780525e769b.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("103561166","15979558"),
("103561166","19980585"),
("103561166","30236910");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("151780551","Vera","https://a0.muscache.com/im/pictures/user/0c22b8ea-75ba-45a8-915a-5bf7175f5ec1.jpg?aki_policy=profile_small","Lives in Rhodes, Australia.Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("151780551","21224607"),
("151780551","30779617");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("19949885","Genevieve","https://a0.muscache.com/im/users/19949885/profile_pic/1417424642/original.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Speaks English.Work: 1979.","I am a wife and mother of two boys and own a lifestyle communications agency but at my core I am a lover of the hospitality industry. I love nothing more than hosting people and telling them about my homes, whether it is the inner city suburb of Paddington Sydney, or the countryside of Evandale Tasmania. I know how to have fun and eat and drink well so will have lots of recommendations to share with you! My favourite destination outside of Sydney and Evandale, Tasmania is anywhere in Italy.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("19949885","4711731"),
("19949885","6518475"),
("19949885","17226674");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("410489","Michal","https://a0.muscache.com/im/users/410489/profile_pic/1368598905/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français,עברית.Work: Teacher, Artist, Art Therapist.Connected account.","Hi, I discovered Airb&amp;b when planning a trip last year. We had a great time and stayed in 8 listings in 2 continents. I took my time choosing places and it paid off. All the 8 listings were very good and a few were outstanding for different reasons. All the hosts were genuine, caring and interesting people.We took care of their places and have been invited back to all of them. What more can I say? As a guest traveling the world I know I was looking for a good sleep on a comfortable bed and a pleasant outlook that felt safe so I could enjoy being a tourist .The fact that we also met lovely interesting people and that I didn't break the bank with Hotel prices, well that was good too.I can confidently offer you this with my studio listing and its location is perfect for accessing the city, universities and beaches.
I love nature and enjoy nurturing my garden and other creative activities. I can point you in the direction of art galleries and good live music.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("410489","1128749"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("165767189","Naphassanan","https://a0.muscache.com/im/pictures/user/00eb524d-4204-4ab7-8dee-d7bfe7d07219.jpg?aki_policy=profile_small","Speaks English,ภาษาไทย.","I always smile and friendly ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("165767189","22558475"),
("165767189","27557826"),
("165767189","30005448"),
("165767189","30407470"),
("165767189","31003930");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("54695275","Aj","https://a0.muscache.com/im/pictures/6a635244-b50a-4532-8d58-1733e89d9a27.jpg?aki_policy=profile_small","","Love hosting the space and love opening up what Paddington has to offer at an affordable price point");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("54695275","19390050"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("70736388","Joseph","https://a0.muscache.com/im/pictures/8f9eaf8e-b9fd-4c2c-9a6b-a285d588f501.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Relationship Management.Connected account.","I'm a very easy going and down to earth person who loves life to the full. 
My major passion is travel having been to over 80 countries. I am also passionate about food and wine, and love music mainly Jazz, funk and soul.
I love meeting new people and am a very accommodating, friendly and generous host.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("70736388","12906796"),
("70736388","17126841");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6232973","Phillip","https://a0.muscache.com/im/pictures/user/3bbf7e0f-1f22-4d8e-998c-cf76a4ca1708.jpg?aki_policy=profile_small","Lives in Australia.","Retired teacher. Love to travel.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6232973","22360662"),
("6232973","22660020"),
("6232973","23468711"),
("6232973","27294659");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105906077","Glen","https://a0.muscache.com/im/pictures/0c152db5-2af9-4f1a-b0ae-ca041d1a34d8.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","Passionate traveler and love keeping healthy and exploring what life has to offer. I love being an Airbnb 'Superhost' and will do everything possible to make your stay an outstanding experience! Available at any time to assist you before or during your stay. Looking forward to meeting you.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("105906077","16445733"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("30075514","Lindsay And Minny","https://a0.muscache.com/im/users/30075514/profile_pic/1440721809/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks ภาษาไทย.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("30075514","5796898"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("144599946","Sohrab And Mari","https://a0.muscache.com/im/pictures/user/e92a1817-1160-4345-8d91-75c93eb1d70a.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks Bengali,English,Hindi,Tagalog,日本語.Work: Sydney Lodges, Sydney Boutique Hotel, Posh Hotel.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("144599946","20654538"),
("144599946","22047785"),
("144599946","22170745"),
("144599946","23859603");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("121579179","Jennifer","https://a0.muscache.com/im/pictures/user/94bd3d9e-ec8d-4074-bb0d-8920388205a5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Work: Investment Bank.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("121579179","23831539"),
("121579179","30922872");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21891204","Victoria","https://a0.muscache.com/im/users/21891204/profile_pic/1431247195/original.jpg?aki_policy=profile_small","","Hi I'm Vickie! I am an avid traveller who loves my city and Airbnb allows me to share it with you and!!! I truly enjoy meeting new people and look forward to welcoming you to my beautiful city. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("21891204","13529946"),
("21891204","13530122"),
("21891204","16366019"),
("21891204","23189022"),
("21891204","23808219"),
("21891204","25110045"),
("21891204","29828638");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53560924","Daisy","https://a0.muscache.com/im/pictures/user/889bb2b0-91c2-459c-8c03-d7766e943caa.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("53560924","22208179"),
("53560924","30329361"),
("53560924","30333643"),
("53560924","34384816");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("17061","Stuart","https://a0.muscache.com/im/users/17061/profile_pic/1425534501/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Business Owner.","G'Day from Australia!

He's Vinh, and I'm Stuart...

We're big fans of AirBnB for nearly a decade having used it when traveling in the USA not long after AirBnB first started.

Since then we've enjoyed traveling with AirBnB across the US, around Australia, in Hong Kong, and also in Vietnam. We're also hosts.

As guests we're always out &amp; about most of the time and won't be intruding too much.

We're neat &amp; tidy and vibrant conversationalists...

We operate ArtSHINE industries - Australia’s independent Creative Industries Enterprise Acceleration Platform + Launch Pad identifying, advancing, and funding commercially minded and innovative Creative Industries Professionals who focus on art, craft, artisanal making, design, fashion, entertainment, photography, music, writing, film &amp; television, digital technology, and games &amp; interactive content. ArtSHINE also incorporates a coffeehouse and coworking space; CoSydney CoWorking + Project Space, in the City of Sydney’s Chippendale Creative Precinct.

So here's an open invitation to come check us out.

My partner Vinh is a keen traveler who works a lot with artists and designers in his coaching practice. He's the energetic, vibrant one...

I lived in Bolivia for a year as a young man just out of school and have worked in social enterprises and not for profits over the years. I'm the more serious, bookish one (with a wicked sense of humour though). Currently working in financial services too...

One of the things we're keen to do is catch up with some social entrepreneurs, coworkers, not for profits, and microfinanciers.

We're particularly interested social enterprise, coworking, and small business incubators &amp; mentoring projects.

More that happy to answer any questions that you may have.

All the best,

Vinh &amp; Stuart
Australia");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("17061","12351"),
("17061","73639");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
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
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("58393929","14856867"),
("58393929","15363639"),
("58393929","16978328"),
("58393929","18964937"),
("58393929","20825909"),
("58393929","23904719"),
("58393929","29226905"),
("58393929","30196109"),
("58393929","32022009"),
("58393929","35716855");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3792649","Steve","https://a0.muscache.com/im/pictures/7f1313f7-8d79-4463-8ffd-dd405c0eec61.jpg?aki_policy=profile_small","Lives in Bondi, Australia.Work: Freelance Photographer, Fine Woodworker.","Freelance photographer and fine woodworker from UK originally, got married to Iva last year and together with are beloved cattle dog, Pheonix, we now live between Sydney and Mullumbimby.  If you are interested in my photography, please search for steve back photography and you will find my site, it will not allow me to write it here.

Love AIrBnB, both using it and renting out my spaces on it.  Always have had really great tenants and stayed in some great places.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3792649","1135581"),
("3792649","9614398");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20202876","Lola","https://a0.muscache.com/im/users/20202876/profile_pic/1408530140/original.jpg?aki_policy=profile_small","Lives in Cheltenham, Australia.Speaks English,Русский.Work: artist and illustrator.Connected account.","An artist and designer passionate about travel and hospitality ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20202876","15825979"),
("20202876","21639809"),
("20202876","27385752");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("733574","Tobias","https://a0.muscache.com/im/users/733574/profile_pic/1310181001/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Since I've had such great experiences with AirBnB, I thought it was only natural that I list my properties for visitors to Sydney. 

The inner eastern suburbs of Sydney  are swimming in good caffeine and food for that matter - any number of cuisines are available nearby as the area is scattered with amazing restaurants and cafes.  

The inner eastern suburbs is extremely central to what Sydney has to offer and has a great village feel to it.  I love living here and can't imagine living anywhere else and I hope for you to have the same experiences during your stay.


");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("733574","153444"),
("733574","7791178"),
("733574","9097926"),
("733574","21044299");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25382118","Jary","https://a0.muscache.com/im/pictures/user/dbdddaee-65a2-4566-8f37-07b347afe9b2.jpg?aki_policy=profile_small","Speaks English,中文.","Hi everyone, I’m Jary. An easy going guy. As an BNB host, I’m focusing on provide high quality accommodation at affordable price. Hope will see you soon. Cheers");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("25382118","22332753"),
("25382118","22732884"),
("25382118","23107413"),
("25382118","23756006"),
("25382118","25005124"),
("25382118","35774466");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28536857","Anthony","https://a0.muscache.com/im/pictures/5d45cef8-dd6c-4373-be72-8aa6f10e03f6.jpg?aki_policy=profile_small","","22 year old Australian. I am eager to travel as much as I can and experience and see new cultures, sites and cities.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("28536857","25305496"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("136111647","Minh","https://a0.muscache.com/im/pictures/user/f1b7e1bd-c6c2-44d6-8693-f35fb170ae26.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("136111647","19414276"),
("136111647","22455162"),
("136111647","25414760"),
("136111647","27919415");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3093746","Roland","https://a0.muscache.com/im/pictures/527db98b-5cec-43b9-99a4-e019e5a19f65.jpg?aki_policy=profile_small","Speaks Deutsch,English,Español,Français.Connected account.","We are a young professional couple - Roland is from Australia and Andrea from Germany.  Between us we speak English, German, French, and some Spanish.

We have both done a fair bit of travelling and look forward to receiving guests from all over the world!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3093746","8379974"),
("3093746","8979659");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5967453","Ling","https://a0.muscache.com/im/users/5967453/profile_pic/1387268173/original.jpg?aki_policy=profile_small","","Happy family");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5967453","4158645"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152020347","Lily","https://a0.muscache.com/im/pictures/user/a9249909-5df3-47eb-8973-4a310f245cd5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,한국어.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("152020347","21087620"),
("152020347","33214071"),
("152020347","34378097"),
("152020347","34378232");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("24048741","Tommy","https://a0.muscache.com/im/pictures/99cb4e6a-1237-4a9c-8555-2741a84468c5.jpg?aki_policy=profile_small","Speaks English.","Hello everyone, my name is Tommy. I look after my own property while helping other hosts to manage theirs, all our apartments are located in the central CBD, it’s accessible to the most major destination by walking, short stroll to Darling Harbour and public transportation, restaurants and cafes surrounding. I look forward to you stay with us and wish all of you had really wonderful time in Sydney, enjoy the sunshine city!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("24048741","16058053"),
("24048741","16587005"),
("24048741","16590520"),
("24048741","18398960"),
("24048741","19023882"),
("24048741","19704466"),
("24048741","21966815"),
("24048741","24400164"),
("24048741","25174383"),
("24048741","25271367");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("117984855","John","https://a0.muscache.com/im/pictures/59e090f8-5d22-46ba-8c2d-4153f38dc7ad.jpg?aki_policy=profile_small","Lives in Balmain, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("117984855","17436906"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("41998987","Carly","https://a0.muscache.com/im/users/41998987/profile_pic/1440067226/original.jpg?aki_policy=profile_small","Lives in Dulwich Hill, Australia.Speaks English.","Hola! 
I love seeing live bands.. the punk-rocknrollin variety. The area where I'm situated in (inner west of Sydney) is great location for live music. 
main passions - I play bass guitar in a couple of original local punk rock outfits with some mates. ...some of my other favourite things: travelling, beer, cheese, op shopping, eating yummy food and trying different cuisines. 
What pays the bills..? sadly, not playing punk rock ;p ..instead, I manage (Website hidden by Airbnb) far as day jobs go, I count myself lucky as I actually dig the company I work for and the people I work with.
What else to tell..? -I have an adorable but feisty bunny rabbit called Electra ..She likes to think she's boss. She's domesticated/toilet trained and shares the indoor communal/common space with me but tends to hide away when people come to visit. Recently I got Electra a boyfriend bunny, Nutkin. He’s very cute and thankfully loves Electra.
I'm pretty easy going and friendly and would hope to make you feel welcome during your stay with Electra, Nutkin and I. :)
Cheers. 
  ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("41998987","24720025"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9359294","(Website hidden by Airbnb)","https://a0.muscache.com/im/users/9359294/profile_pic/1404456078/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We're about a family who loves to travel and have listed our Sydney and other apartments with Airbnb. We also enjoy staying at places with high standards and cleanliness of a 5 star apartment, the way we wish to live when we travel.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("9359294","1866006"),
("9359294","3472789"),
("9359294","16494658");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50174640","Charles","https://a0.muscache.com/im/pictures/user/4954b439-7d82-49ed-ac06-3104842bc3ae.jpg?aki_policy=profile_small","","Originally from Sydney Australia and would love to have you as a guest and host you! Little about me - i have travelled around the world, lived in London.  Love travel, food, triathlon and appreciate Quality, comfortable accomodation. Great to meet you and look forward to having you stay with us!!!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("50174640","27689449"),
("50174640","27716426"),
("50174640","27718720"),
("50174640","27786464"),
("50174640","27797705"),
("50174640","27815764");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4713840","Brenda","https://a0.muscache.com/im/users/4713840/profile_pic/1396812229/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","efficient , friendly, easy going, ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4713840","2704122"),
("4713840","8106459"),
("4713840","9014102"),
("4713840","9014287"),
("4713840","10599898"),
("4713840","25871466");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4424088","Sophie","https://a0.muscache.com/im/users/4424088/profile_pic/1355923005/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Norsk,Svenska.","I'm a Swedish viking enjoying life under the blue sky in the city of my dreams. I kickbox, hike, bike and run every chance I get. I'm a bit of a health nut, slightly addicted to greens. I consider a couple of cucumbers as perfect long haul flight-snack and if I got stuck on a deserted island with only avocado + coconuts I would be a happy girl. But don’t worry I also love to bake Swedish Cinnamon buns and ”Semla” and I make a mean Espresso Martini. Passionately love Sydney and try to visit a new restaurant, cafe, place every week to stay up to date. Happy to give you all our recommendation on everything from best bar, perfect pre-work run, must do´s etc. Beside from Sydney other favorite destinations are: Copenhagen, Palm Springs, anywhere in the Greek islands, Hawaii or why not a snowy ski slope finished with hot coca! Hope to meet you! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4424088","1253351"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13423390","Troy","https://a0.muscache.com/im/pictures/user/d56e0577-1558-4480-90c1-2aa00d921a67.jpg?aki_policy=profile_small","Lives in Cherrybrook, Australia.Connected accounts.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("13423390","19555904"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10010322","Helen","https://a0.muscache.com/im/pictures/user/beac8088-bf0d-4574-b95d-1f81afdbc583.jpg?aki_policy=profile_small","Lives in Forrest, Australia.Speaks Bahasa Indonesia,English,中文.","I am a well travelled adventurer and have lived overseas. Sydney is a fabulous city. I look forward to meeting you and sharing Sydney tips!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("10010322","22583838"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152530023","Mina","https://a0.muscache.com/im/pictures/user/3e6fcbaf-feb3-48e8-a04b-6dd6ca43c468.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Русский.","We have been living in this lovely city of Sydney for more than half of our lives. 

We like trying out different cuisines, we love travelling and we also enjoy having a quite relaxing time at home. 

We have had many great experiences travelling and we're hoping that our guests staying in our places will experience the same excitement and magic in Sydney. 

We'd love to meet you from the other side of the world and we'd love to talk with you about interesting things we had in this city. We look forward to hosting you soon! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("152530023","21158841"),
("152530023","24041650"),
("152530023","24233506");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("185794729","Bappy","https://a0.muscache.com/im/pictures/user/a25dc642-a970-4b53-ab9c-668ba71f9db4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Hi, I'm Bappy Golder. I host with my brother Stanly. I run a software company called oLab in Surry Hills and love meeting and talking to guests when possible :)

Airbnb is a side hustle and that keeps us connected with the rest of the world! We love meeting guest and we want to create a big beautiful ecosystem for guests to enjoy their short term stay at our home. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("185794729","24585647"),
("185794729","26261823"),
("185794729","26261842"),
("185794729","28256551"),
("185794729","28483909"),
("185794729","32771017"),
("185794729","34546356"),
("185794729","34548565");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2404694","Arnie &amp; Lorraine","https://a0.muscache.com/im/pictures/6640e8a2-20d8-48d0-8faf-7f3c6f1b48f9.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Visual Art &amp; Contemporary Craft, Artist.","Hello,

We are creative, down to earth and open-minded couple, who enjoy a healthy lifestyle and a vibrant home.    There are much happenings in our home, from photo shoots, to art salons to creative dinners and occasionally short film making.

We have been greeting and hosting guests from all over the world, for just over three years. We host a wide variety of people from all over the world.  Our home is a unique step into an old world reality, and we enjoy sharing it with others.
 
As an alternative,  if you are after the privacy of a one bedroom Paddington pad, have a look at our listing at: https://www.airbnb.com.au/rooms/3795958?preview

We hope you enjoy your time in our home!
Arnie &amp; Lorraine");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2404694","1113059"),
("2404694","1759931"),
("2404694","2278444"),
("2404694","13318845");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("72988681","Marissa","https://a0.muscache.com/im/pictures/user/e61af89c-296d-4009-96ad-26097d4a5477.jpg?aki_policy=profile_small","Lives in Ultimo, Australia.Connected account.","Aloha,

My name is Marissa and I work in Public Relations for a fashion online retailer. Would love to socialise and taking interest in travelling, food and architecture and homeware design as its my passion

Bonus FREE Travel Credit: If you are NEW to Airbnb, click this link:
https://www.airbnb.com.au/c/taym106 to sign up and claim up to A$55 Free Travel Credit for your first Airbnb booking (Note that this is subject to Airbnb Rules )");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("72988681","19415698"),
("72988681","20336870"),
("72988681","21070009"),
("72988681","21169527"),
("72988681","29265814"),
("72988681","29341935"),
("72988681","29739131");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3609508","Elise","https://a0.muscache.com/im/pictures/user/fe648efe-0c57-4ade-831d-9406a0fe7d29.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Property Manager.","Based in Bondi Beach, I enjoy the outdoors and exploring natural landscapes. Passionate about arts and crafts, I enjoy creating basketry from plant based fibres. I also love designing furniture from recycled items. I like to travel in good company and find inspiration from new creative activities from around the world. 

I am available to guests within 20 minutes from their property. I provide a 24 hour point of contact for guests. I do my best to keep the place perfectly maintained and hire professional cleaners  to make sure the place is in impeccable condition for incoming guests. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3609508","5366904"),
("3609508","6174915"),
("3609508","13914271"),
("3609508","18556999"),
("3609508","25177390"),
("3609508","26289873"),
("3609508","29322476"),
("3609508","30896892"),
("3609508","31683553"),
("3609508","35551706");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51166872","Julia","https://a0.muscache.com/im/pictures/user/f54b4bf5-d12b-4a55-bfa4-492c9b9301b3.jpg?aki_policy=profile_small","Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("51166872","18439259"),
("51166872","19715081"),
("51166872","23069353"),
("51166872","23759333"),
("51166872","30516663"),
("51166872","32877066"),
("51166872","33214071"),
("51166872","33621034"),
("51166872","34378097"),
("51166872","34378232");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("59293853","David","https://a0.muscache.com/im/pictures/ef1ba9ce-ed61-45d9-aa6a-4d148f96aa57.jpg?aki_policy=profile_small","Speaks English.","Quiet and laid back.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("59293853","15612629"),
("59293853","20273004");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("975628","Vivien","https://a0.muscache.com/im/pictures/user/10a80d1a-227c-4fcc-87d5-6bc6458c450a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I'm Australian Nationality, Chinese background.可以國語溝通 Profession in film, fashion, architecture, last job position was production manager for an international fashion company. Currently working on property development projects, devoting time on voluntary works and live in Sydney.

I'm a responsible caring person, believe in doing good causes in life, non smoker, like to keep places clean and tidy. 
Hobbies: skiing, reading, sailing, visual art, traveling, dining, architecture and film.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("975628","23257112"),
("975628","23846908");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("163511421","Excelsior Serviced","https://a0.muscache.com/im/pictures/user/ba8bdae0-9a83-4853-9e8b-fd9e9be3d226.jpg?aki_policy=profile_small","Lives in Glebe, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("163511421","23883958"),
("163511421","23883967"),
("163511421","23883973"),
("163511421","23883982"),
("163511421","23883987");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("60423487","Craig","https://a0.muscache.com/im/pictures/8ef2ab45-5c1a-4b49-8265-d98b09779b95.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","We are a gay couple with twin toddler daughters and a cat, George.  We continue to be avid travellers with trips planned this 2016 to backpack Cambodia and Bolivia and to Winnebago the east coast of the USA. 

");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("60423487","11480581"),
("60423487","11698734"),
("60423487","12434800");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20493747","Bee","https://a0.muscache.com/im/pictures/user/fbf9c835-fe6d-441d-94d7-129c00f73049.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi welcome to Sydney!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20493747","4788666"),
("20493747","5905265"),
("20493747","14997645"),
("20493747","17386673"),
("20493747","17387039"),
("20493747","20095189"),
("20493747","20095512"),
("20493747","20095603");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("197658869","Sky","https://a0.muscache.com/im/pictures/user/a8b10add-9e13-45dd-8d48-7adbb48a9b9e.jpg?aki_policy=profile_small","Lives in Rhodes, Australia.Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("197658869","26289923"),
("197658869","26700651"),
("197658869","29694669");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("204418797","Joe","https://a0.muscache.com/im/pictures/user/f4b30743-0e09-47d6-b0cc-aa3d38961ae1.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,中文.","Hi Guests, 
Thank you for considering staying in my place during your visit to Sydney. Whether you're coming for business, pleasure, or to visit family, I think you will enjoy my apartment and my neighborhood. 
I've been here in Sydney since 2009. I've had graphic design and lifestyle products design businesses for years and I'm enjoying adding Airbnb hosting to my daily routine. I've travelled quite a bit and enjoy having the world come to me!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("204418797","21414755"),
("204418797","27150946");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("196683909","Oaks Goldsbrough Apartments","https://a0.muscache.com/im/pictures/user/d79fa095-a540-4692-a299-77938212e385.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","For travellers in search of centrally located Darling Harbour hotels with free Wi-Fi in one of Sydney’s most sought-after locations, Oaks Goldsbrough Apartments in Darling Harbour is the perfect choice. Combining comfortable, self-contained apartments, this hotel is perfect for every kind of trip; whether you’re in town for one night or looking for an extended stay.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("196683909","26167918"),
("196683909","26170542"),
("196683909","26171414"),
("196683909","26199694"),
("196683909","26200377");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("86817437","Lachlan","https://a0.muscache.com/im/pictures/user/248f2ce1-ded5-488b-8f42-7f117fe10274.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("86817437","22378312"),
("86817437","26502901");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3437247","Max","https://a0.muscache.com/im/users/3437247/profile_pic/1346480720/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,Español.","My name is Max.  I enjoy the theatre, ballet, the arts and other wonderful events of Sydney.  Knowing what to do, where to dine out and how best to get around is my speciality for helping new comers enjoy the delights of Sydney and nearby areas.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3437247","686805"),
("3437247","5984722"),
("3437247","14265450"),
("3437247","16988190");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5332186","Glen","https://a0.muscache.com/im/pictures/user/09371bea-ff46-415c-aab8-040f5102a8f7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Digital Media.Connected accounts.","Digital media professional living in my home town of Sydney hosting lots of amazing people in my apartment over the last couple of years.

Love to travel ... everywhere is my only destination. Enjoy meeting people from all over the world and always planning a new trip to somewhere new.

You find me at home sometimes otherwise I out and about on the football pitch, cycling, attempting to surf or flying down a mountain on skis. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5332186","7521604"),
("5332186","30272092");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("52357636","Matthew","https://a0.muscache.com/im/pictures/user/06a46ff1-9b0f-4e19-92ca-9c5acedf0d3c.jpg?aki_policy=profile_small","Lives in Sydenham, Australia.","I’m the father of 3 beautiful little girls and husband to one sexy wife. From the Inner West of Sydney. We have 1 listing which is a full time Air BnB property and live nearby. We use Air BnB both for traveling and hosting.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("52357636","16077913"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5215877","Milan","https://a0.muscache.com/im/pictures/user/38a6f966-92d8-4191-a59f-0938c4178d59.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hi! I'am Milan. I would like to welcome you in Sydney. As a host I manage my own properties as well I manage many of the best properties in Sydney for others. Sydney is  truly beautiful place to stay and discover and I hope to see you soon. Please feel free to contact me anytime. Milan
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5215877","21166422"),
("5215877","30489756"),
("5215877","31005904"),
("5215877","31225766"),
("5215877","32922649"),
("5215877","33053884"),
("5215877","33460558"),
("5215877","34920380"),
("5215877","35722268"),
("5215877","35740966");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("86443890","Samantha &amp; Seb’S","https://a0.muscache.com/im/pictures/062e8d19-f89d-4a9b-afc4-36ebf125a744.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Entrepreneur .","My partner and I enjoy some really simple pleasures in life good food, friends and sleep. We work quite a bit to save for our future goals in life and like to think of ourselves as hard workers. We both would like to retire at 45 at the latest, hopefully we can make that happen. 

Always open to a good chat and banter!! 



");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("86443890","14224564"),
("86443890","14224677");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61071881","Zuzana","https://a0.muscache.com/im/pictures/8b94c440-c70e-46e7-a0c4-f0e75518a30a.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Čeština.","International student living in Sydney. Traveling often, offering my amazing home to like minded. Loving the beach life and you'll love it too.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("61071881","11562537"),
("61071881","23626729");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("167285630","Flora","https://a0.muscache.com/im/pictures/user/1130e6cf-0f32-46de-bb5e-3128d9887075.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hi everyone, I’m Flora. An easy going girl. As an BNB host, I’m focusing on provide high quality accommodation at affordable price. Hope will see you soon.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("167285630","22710517"),
("167285630","22722590"),
("167285630","23363936"),
("167285630","23459976"),
("167285630","33144824");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20953030","Dan","https://a0.muscache.com/im/pictures/ec3012bb-87ff-4464-94ad-ca4eafccc0e0.jpg?aki_policy=profile_small","","Sports producer from Sydney.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20953030","4244433"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8734842","Gerrit","https://a0.muscache.com/im/pictures/user/d587488f-196f-4f06-99f2-6d4d8281a13b.jpg?aki_policy=profile_small","Lives in Germany.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8734842","19705310"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11454671","Sn","https://a0.muscache.com/im/pictures/154414fb-1251-4609-a6e9-c751d77da581.jpg?aki_policy=profile_small","Work: Bank.","I'm a 30 year old professional who enjoys travelling and discovering new places, and meeting interesting people. I'm looking forward to my first trip around Asia later this year. This is why I'm letting my place out to people who want to discover beautiful Sydney to help save for the trip. I'm very easy going and laid back, so any questions, please feel free to ask.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("11454671","2285490"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("74096318","Ray","https://a0.muscache.com/im/pictures/ea6d8374-1b9a-4779-95c3-0bc70c6d0005.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.","Hi Guests, 
Thank you for considering staying in my place during your visit to Sydney. Whether you're coming for business, pleasure, or to visit family, I think you will enjoy my apartment and my neighborhood. 
I've been here in Sydney since 2009, and I can help you figure out what to do and how to get around. I've had graphic design and lifestyle products design businesses for years and I'm enjoying adding Airbnb hosting to my daily routine. I've travelled quite a bit and enjoy having the world come to me! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("74096318","21414755"),
("74096318","27150946");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1281892","Dave","https://a0.muscache.com/im/users/1281892/profile_pic/1417678745/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Connected accounts.","English born but now call Sydney Australia home. I love to travel, cook, ride my bike on the road or in the bush, go to music festivals, see bands, DJ's, performers, ski in the snow, eat out, take photos, spend time with my friends, and enjoy life. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1281892","5935272"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25870957","Lesley","https://a0.muscache.com/im/pictures/user/693426a3-450c-4a30-ad3e-0311a68df809.jpg?aki_policy=profile_small","Lives in Alexandria, Australia.Work: Volunteering with Oz Harvest Food Rescue..","Sharing good food and wine with my partner and friends, Sydney Summer Traveling the world");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("25870957","5015514"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51206743","Annie","https://a0.muscache.com/im/pictures/4117e126-31e7-4fe7-9aaa-d2dfdfb7b4bc.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("51206743","9965002"),
("51206743","23212365"),
("51206743","23834072"),
("51206743","25883956"),
("51206743","33126917"),
("51206743","34198398");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("136868139","Adam","https://a0.muscache.com/im/pictures/user/2d7a45a6-5a89-4bb9-a663-aab0c525c0f4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("136868139","19495471"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("33150818","Miriam","https://a0.muscache.com/im/pictures/3218f466-d457-42d1-aabb-230926a07429.jpg?aki_policy=profile_small","Speaks Deutsch,English.","Hi, I’m Miriam! I have been a Super Host with Airbnb for quite some years now. Travelling, wether on holidays or business, can be such an exciting and fun experience. Choosing the right place for you is key to having a comfortable and great stay. I absolutely love hosting guests from all over the world and will do my best to make everyone feel welcome and right at home. I am looking forward to hosting you!
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("33150818","6362810"),
("33150818","15058531"),
("33150818","17561464"),
("33150818","21011909");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("154618936","Sydney Boutique","https://a0.muscache.com/im/pictures/user/049ce6e0-3ac8-466c-83c5-62dc600c5ab8.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("154618936","27341635"),
("154618936","27341845"),
("154618936","27341876"),
("154618936","27342060"),
("154618936","27342088");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("166091307","Rhonda","https://a0.muscache.com/im/pictures/user/777a9882-631a-4e59-89f9-740152a93a97.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("166091307","22588988"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95215056","Franky","https://a0.muscache.com/im/pictures/user/4e4dc6a1-1cd2-4b08-925b-e31ab2544b57.jpg?aki_policy=profile_small","Lives in Australia.Work: Bussiness owner.","Hi GUYS,
I WILL DESCRIBE MYSELF WITH FEW WORDS &amp; MEANINGFUL....
IM HONEST , HUMBLE &amp; CARING Man THAT ALWAYS DO MY VERY BEST TO BE HELPFUL TO ANYONE, I LOVE THE GIFT OF LIFE, TRAVELING ,TRAINING, &amp; MEETING NEW PEOPLE &amp; ABOVE ALL RESPECTING ALL....
❤️❤️❤️❤️❤️❤️❤️");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("95215056","28183314"),
("95215056","28608931"),
("95215056","30722990");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("38222062","Rebecca And Luke","https://a0.muscache.com/im/pictures/a14b3872-0868-4f08-84b8-5f29d04109dd.jpg?aki_policy=profile_small","Lives in Australia.Speaks English.Connected account.","Hi! We are Luke and Rebecca and we have been hosting on AirBnB since December 2016 and we love it so far! For us as hosts it is really important to us that we treat guests exactly as we would want to be treated and that means fast communication and providing great value accomodation in the heart of Darling Harbour. We are both fairly well traveled - Rebecca is originally from Ireland and has lived in Germany, the US and Australia (since October 2012) and Luke is from New York and have lived in several states in the US, the Czech Republic and Australia (twice - most recently since August 2012). We have lived in Pyrmont for about two years and love it's small village vibe and its proximity to the city. When travelling we love adventure! You are unlikely to find us lounging by the pool! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("38222062","4332013"),
("38222062","16138615"),
("38222062","24447266");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("47822515","Konrad","https://a0.muscache.com/im/pictures/user/c7c1f8f1-b476-46dd-8008-6b033c05f346.jpg?aki_policy=profile_small","Lives in Manly, Australia.","Occasional Traveller ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("47822515","19791170"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("152911570","Cassa","https://a0.muscache.com/im/pictures/user/5cc14d66-70a4-49f3-ae2e-1c26e4547a71.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("152911570","21177784"),
("152911570","21453898"),
("152911570","22195225"),
("152911570","22680344"),
("152911570","22915866"),
("152911570","23095701"),
("152911570","26732303");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("268525206","Van","https://a0.muscache.com/im/pictures/user/c68d6b72-4462-436b-b973-fbbd0c140994.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("268525206","35697834"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("122449858","Quan","https://a0.muscache.com/im/pictures/user/647614b8-2b04-48eb-9e26-aed1e9b97c0a.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("122449858","17881731"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("75043828","Joel","https://a0.muscache.com/im/pictures/f5617e35-8796-4472-bafd-5684139b7e75.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español.Connected account.","Hi,

My name is Joel. I am from South America but I have been living in Australian for the last five years.
I am an IT professional working full time in the CBD, I normally arrive home after 6:00 pm.

I am a friendly and respectful person and I am always up for a good conversation! I also respect other's privacy which is is very important!



");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("75043828","24726161"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("28662970","Sue &amp; Gary","https://a0.muscache.com/im/pictures/d5866446-f53e-41cd-bcb7-684e30b81a6f.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("28662970","10711571"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50565626","Sante Livia","https://a0.muscache.com/im/pictures/d5a09bb6-2680-4e71-b968-8845fba16e0e.jpg?aki_policy=profile_small","Speaks Italiano.","Sydney retirees who love the heart of the CBD, and sometimes our daughter gives us a hand as co-host.

We love theatre, music, food and wine... there is nothing better than catching up with old and new friends.

We have been an Airbnb host since December 2015.... and is there is absolutely nothing we enjoy more than welcoming people to our fabulous city and meeting new people. 

We are super friendly and will bend over backwards to help you have the best stay possible.

Have travelled to Italy, Austria, Switzerland, Germany, Thailand, Myanmar,  Indonesia, Mexico, Cuba, Guatemala,  Belize, Honduras, Galapagos Islands, Argentina, Uruguay, England, Scotland, France, Spain, Morocco, Turkey, Syria, Lebanon, Jordan, Egypt, Guinea, Sierra Leone, Madagascar, USA, Hong Kong, China, Singapore … Buthan is next!

Be kind to everyone - Jim Henson");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("50565626","9816151"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("106208337","Thanh Binh","https://a0.muscache.com/im/pictures/3bef69fb-6b87-4091-acc8-49fb0eefc633.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I would love to share my experiences in Sydney with all my passionate travellers. Food from every culture is available in this multicultural city.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("106208337","16302658"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("35454201","Meredith","https://a0.muscache.com/im/users/35454201/profile_pic/1434020777/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Wife, mother, daughter. Love the ocean, nature, fine wine and food, exotic travel, good conversation and laughs with friends");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("35454201","8412341"),
("35454201","35504278");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4367105","Jan","https://a0.muscache.com/im/users/4367105/profile_pic/1355184220/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Français.Work: Travel/teaching.Connected account.","I am a writer/performer who loves traveling, singing, reading, writing and hanging out with fellow creatives. I travel often to Asia to literary and performance festivals and collaborate often with Indonesian artists, musicians, and poets.
I also take groups on writing retreats to Bali, Laos, Cambodia, Burma, Morocco, Fiji.
I am interested in Eastern religions and culture, but have also spent time in USA and Canada in the 70's hitching from LA to Vancouver and across to Montreal, so I have a lot of great traveling stories.
These days I don't hitch but I love meeting fellow travellers and exploring new places. One of my favorite destinations in Luang Prabang in Laos, I lead a writers retreat there every November.
My life motto is passed down from my mother to me  - Happiness through creativity. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4367105","834913"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("46813147","Truman","https://a0.muscache.com/im/pictures/8955ef6d-81ad-4131-848c-1a21ce7e0e18.jpg?aki_policy=profile_small","Speaks English,Français.Work: Lawyer.","I'm a young lawyer who loves learning new things.

I'm the kind of guy who turns up for a year-long trip with a tiny backpack and no plan.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("46813147","17256885"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183086309","Carlos","https://a0.muscache.com/im/pictures/user/4d585003-f0e1-4aa6-b6ad-694fc60a822c.jpg?aki_policy=profile_small","Lives in North Sydney, Australia.Speaks English,Español.","I'm Carlos. My wife and I love to travel. We've been to so many places around the world, and we found out that the most important thing is feeling at home even traveling. That's why we decided giving you the opportunity to enjoy a fresh and minimalist place where you will feel nice and comfortable. 

Our favourite thing about our home is the location. Being so close to shops, restaurants, bus stops, wharf or train stations is a privilege that we are blessed with, as we are able to say that we are close to everywhere. 

We just would ask you one thing: enjoy and treat our lovely home as you would like us to enjoy and treat yours.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("183086309","24275629"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("50183566","Petra","https://a0.muscache.com/im/pictures/350c2c96-7fa3-4328-83a8-6f1e69ba963f.jpg?aki_policy=profile_small","Speaks Deutsch,English.Work: Team Leader, Group Home.","Hi,

I love the older style of my home. The house is a rental that i have been living in for 8 years now. It's in a nice area, but we are pretty much the only unrenovated house. My flatmate, Morten, has been a close friend for 20 years and we enjoy living together again after 15 years.

I am into sustainability and cutting down consumer waste so much of my furniture is rescued. 

At home I love my garden. I always have something on the go. This summer is tomatoes, eggplant, capsicums, zucchini and kale. There is some parsley, basil, sage, thyme and chives - feel free to help yourself and add some to your meal. I have slowly been trying different methods of garden beds to see what works - this year i have made mini Hugglekulture beds. They seem to be cracking along.

We are pretty relaxed and quiet around the house. No loud music - respectful of eveyones sound space. We love to have a chat. Sometimes i play the guitar or ukulele in the garden.

Out and about i love the beach, cycling, getting out to live music and shows and interesting community events.

I work in disability care close to home. I have travelled in South East Asia, India, US and Mexico and lived in Japan for 2 years teaching English.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("50183566","10182761"),
("50183566","15115531"),
("50183566","22439236");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45941764","Tony","https://a0.muscache.com/im/pictures/0acf6aec-5675-4cb8-961d-75ecede4a177.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","I’m a caring, considerate and trustworthy person who hits gym a few times a week to keep fit and active. I work as an accountant for a Software company.

I love travelling &amp; experiencing different cultures. I’ve been to North America, Europe and most of East Asian countries so far and I’d love to visit more places. 

I’ve had some excellent Airbnb experiences and I think Airbnb is a great way to meet people and make new friends.  Hopefully I can form some sort of connections with people from all around the globe through Airbnb. I look forward to hosting you in Sydney.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("45941764","23398105"),
("45941764","23424443"),
("45941764","31968979");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("220874500","Lena","https://a0.muscache.com/im/pictures/user/572599b3-b86d-498d-aac4-8f8f8db17939.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks Português.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("220874500","29339536"),
("220874500","29339714"),
("220874500","29339789"),
("220874500","29375463"),
("220874500","29375614"),
("220874500","29375782"),
("220874500","29391526"),
("220874500","29391759"),
("220874500","29391840"),
("220874500","29391950");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("53765359","Marija","https://a0.muscache.com/im/pictures/user/c439933b-85c7-40bd-b5da-97a050f97f25.jpg?aki_policy=profile_small","Lives in Ashfield, Australia.Work: Massage therapist .","Hi, Im Marija and I am a Massage therapist with a background in Early Childhood education also. I enjoy reading, yoga, meditation and cooking. I enjoy travelling and meeting new people. Hope to meet you soon! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("53765359","22534785"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21987782","Eva","https://a0.muscache.com/im/pictures/user/d09b6d9c-4cd5-4f2e-9cff-e644cbb993d2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Travel Lover! 18 countries so far.
Published 2 travel books (Chinese).");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("21987782","25297820"),
("21987782","25310084"),
("21987782","26065676"),
("21987782","34626039");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("229824965","Chris","https://a0.muscache.com/im/pictures/user/53556491-d570-41a8-8668-b1adcf232105.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("229824965","30704040"),
("229824965","30771702");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11240160","Thomas &amp; Amber","https://a0.muscache.com/im/pictures/user/058738fc-b8f9-4cd9-a641-3e74315dbbee.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,Français,中文.Work: Architect / Cook .Connected account.","We are 31 and 35, we came from France and Taiwan few years ago and will spend a while in Australia. We live in Sydney since two years, joined by a little boy end of 2017. While we travel around, we keep planning to discover the great places of this huge country!
We open our place to share experiences with people from all around the world, feel free to drop us a message anytime, we try to answer as fast as we can :)");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("11240160","27582987"),
("11240160","32611568");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("104204096","Chankana","https://a0.muscache.com/im/pictures/2d47e047-aa00-47fa-905b-d9b747ca749a.jpg?aki_policy=profile_small","Lives in Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("104204096","18558600"),
("104204096","22491514"),
("104204096","25329514"),
("104204096","25995595"),
("104204096","34368021"),
("104204096","34368706"),
("104204096","34368994"),
("104204096","34369567");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15354654","Ollie","https://a0.muscache.com/im/pictures/user/39d1099a-6d17-4f9b-8902-65b7c42b0a19.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Community Health Promotions Officer Aids Council of NSW, Massage Therapist .","Love theatre, music, food and wine. Nothing better than catching up with old and new friends.
Am a self-employed masssage therapist, so feel free to hit up for a relaxing massage to ease all your aches and pains after those long plane flights.

Have been an Airbnb host since September 2014.... and is there is absolutely nothing i enjoy more than welcoming people to my city and meeting new people.
Im super friendly and will bend over backwards to help you have the best stay possible.

Have travelled to Scotland, UK, Indonesia, Thailand, Dubai and Germany.

Be kind to everyone - Jim Henson

LGBTI Friendly :-))");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("15354654","3013026"),
("15354654","5220681"),
("15354654","5993432"),
("15354654","21014908");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15542638","Leenie","https://a0.muscache.com/im/pictures/user/17f60b08-3fb7-47cf-9dc7-2fd787872b5f.jpg?aki_policy=profile_small","Lives in Waterloo, Australia.Speaks Español.Work: Fox Studios.","Leenie and Erick are life lovers. We travel a lot. Both artists, Leenie works in the music/film industry and Erick is an Interior Stylist/Designer and actor. Home is a sanctuary. We are clean and considerate. Leenie is a coffee snob. Erick is hilarious. Together, they salsa up a storm.


");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("15542638","17946780"),
("15542638","20718560"),
("15542638","28473128"),
("15542638","35432637");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("69159657","Michael And Alina","https://a0.muscache.com/im/pictures/2e60b437-d17e-4330-90b5-958882958567.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi, We are Michael and Alina.
It's our first time to host friends from all over the world.
Hope we'll have a good time in Sydney!

Michael and Alina");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("69159657","16916325"),
("69159657","17685808"),
("69159657","21855985"),
("69159657","25225476"),
("69159657","33922914");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25080358","Julie","https://a0.muscache.com/im/users/25080358/profile_pic/1419229220/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English.Work: Dance teacher.","Hi, and welcome to our home. My husband Gary and I have lived in and around Leichhardt all of our lives. We have been in this home for over 30 years and built the cottage at the end of our yard many years ago as a home away from home for each of our 4 children as they grew and studied. Well, they've all grown and moved on now but we're still here! Working full time, we also love to travel and dine out. I am sure that you will find us easy going and friendly hosts! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("25080358","4875082"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1936434","Thais","https://a0.muscache.com/im/pictures/794cdf58-2ae5-4726-944b-c7e76698c9bc.jpg?aki_policy=profile_small","Lives in Chippendale, Australia.Speaks English,Português.Connected account.","Me and my husband Andrew love to travel and we go away a lot. We started by using Airbnb to rent our place out when we were away, and became really passionate about hosting and sharing our home. 
I love to learn about people's stories and journeys whilst sharing my neighbourhood and its wonders.
I aim to give guests the experience I like having when I am travelling, the opportunity to live like a local in a unique, clean, convenient and homely place.
We care a lot about sustainability and the environment. We love travelling, getting to know new cultures and people, we love hiking, surfing, yoga, skiing, snorkelling, the movies, a good book and good food and wines.
I try to make each day count. 
I choose to be happy. 
I believe we must be the change we want to see in the world.
I believe no one is better than anyone and therefore we must take care of one another.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1936434","386997"),
("1936434","1765417"),
("1936434","7207811"),
("1936434","14968516"),
("1936434","29375463"),
("1936434","29375614"),
("1936434","29375782"),
("1936434","29391526"),
("1936434","29391840"),
("1936434","35586031");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("37183518","Kerrie","https://a0.muscache.com/im/users/37183518/profile_pic/1435712386/original.jpg?aki_policy=profile_small","Work: Freelance Art Director.","I am a wife, mother, Art Director / Designer and Airbnb accommodation manager. I live and work in the Redfern/Darlington area of Sydney and love it! I have lived in the area for about 15 years with my husband and we wouldn't live anywhere else. We love to travel, spend time with family and friends and are into great design, art, architecture and yoga. We love doing what we do and have a great time doing it ! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("37183518","15794371"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("26709417","Silvia","https://a0.muscache.com/im/users/26709417/profile_pic/1423038950/original.jpg?aki_policy=profile_small","Lives in Rushcutters Bay, Australia.Speaks English,Italiano.Work: Real Estate Agent.","I am a Real Estate Agent who works locally and so I know the area extremely well and like to share my local knowledge. I enjoy keeping fit with Yoga, Dance and lots of Harbourside walking. I love meeting new people and airbnb gives me these opportunities. I hope you will enjoy my home as much as I do!

For those of you travelling from Italy: Io parlo italiano.  Benvenuti a casa mia!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("26709417","5163979"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10133067","Simone","https://a0.muscache.com/im/users/10133067/profile_pic/1419116046/original.jpg?aki_policy=profile_small","Speaks English,Español,Português.","I'm a busy friendly and smily person with a positive attitude towards life. 
I emphasise a healthy lifestyle but it doesn't rule my life. I love traveling, camping, outdoor activities, live music, cooking, dinning out and getting to know new cultures and their cuisine.

");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("10133067","17706238"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("71193770","Shuang","https://a0.muscache.com/im/pictures/0d696f26-a885-4f2f-a277-9cf0edee9533.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("71193770","12954762"),
("71193770","13279754"),
("71193770","31910486"),
("71193770","34898435");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("154157237","Lana","https://a0.muscache.com/im/pictures/user/6e5eb9c7-724f-482e-b97f-0fa789372ad1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Русский,Українська.","Greetings to Everyone! 

Always very pleased to meet new visitors from across the Globe and our National friends! 
I grow up  and graduate from National University of Ukraine with Master degree of Linguistics, English and English Literature and Bachelor degree of Applied Mathematics. After I graduated I travel around the globe and work in hospitality. I work in the best 5* hotels around Europe, Middle East, Asia, America and Australia and have done so for over 10 years. I have moved to Australia in 2014 as part of my management program and get full time position as a manager in 5* hotel after successfully completing it. Hospitality is my passion and AirBnb gives me the opportunity to continue this with my own property.
I always make sure that guest get unforgettable experience with their stay and always pay attention to details to meet each guest expectations.

My life quote is:
"It has been said that something as small as the flutter of a butterfly's wing can ultimately cause a typhoon halfway around the world" - Chaos Theory
Small things can change the world ☺️");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("154157237","22270473"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("774358","Seli","https://a0.muscache.com/im/pictures/19f6da6a-7ace-4406-b933-a2175a6b9fb1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Love life in the sunshine. Forever chasing summer, glorious moments and the perfect sunset.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("774358","13285772"),
("774358","20236306"),
("774358","22392523");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("144757307","Jason","https://a0.muscache.com/im/pictures/f7bccdb1-a090-4f5e-979f-db87c7671387.jpg?aki_policy=profile_small","Lives in Parramatta, Australia.Speaks English.Work: Higher Education sector.Connected account.","Friendly working professional, enthusiastic snowboarder :)");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("144757307","20292971"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15118978","Husan","https://a0.muscache.com/im/pictures/user/9c19e158-d942-45e0-a792-4891921f9b8b.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("15118978","13544073"),
("15118978","16607966"),
("15118978","21269741"),
("15118978","21820441"),
("15118978","22255771"),
("15118978","24437105"),
("15118978","29612372"),
("15118978","33416223"),
("15118978","35497311"),
("15118978","35632497");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("84810518","David","https://a0.muscache.com/im/pictures/ec5a92f8-702a-4ddb-929d-83958490d2d9.jpg?aki_policy=profile_small","Lives in Summer Hill, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("84810518","20954479"),
("84810518","21190961"),
("84810518","21210339"),
("84810518","21397927"),
("84810518","21441798"),
("84810518","21481382"),
("84810518","21568012"),
("84810518","22250940"),
("84810518","22559554"),
("84810518","24064710");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("176661321","JY &amp; Shane","https://a0.muscache.com/im/pictures/user/936646b3-4404-4daa-b1b7-44791f83d429.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.Work: Nsw government .","We are an easy going couple in our early 30s we love the ocean and outdoor adventures.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("176661321","23614606"),
("176661321","23615747");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("127451501","Stephen","https://a0.muscache.com/im/pictures/0a3c7b99-1a3d-453b-bd9c-2486ced7fe89.jpg?aki_policy=profile_small","Lives in Newtown, Australia.Work: The Canine Butler.Connected account.","I'm a single guy, self employed as "The Canine Butler" working with dogs in the local area - walking, day care &amp; Dogbnb/HomeStays.

My life would be empty without my best mate &amp; sidekick Russo, he is 21kgs of Groodle awesomeness &amp; licks. 

Three things I'd find it hard to go without: Technology, Bacon &amp; Wine");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("127451501","18397158"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22177197","Kathryn","https://a0.muscache.com/im/users/22177197/profile_pic/1440328575/original.jpg?aki_policy=profile_small","Work: Producer.","We are a semi-retired active couple living the dream of our lives. Ron is an elite athletics coach working with young gifted athletes (sprints and hurdles) after a very long a exhausting career as a newspaper editor. His hobby is now his career. After returning from the world of events (Sydney Olympics, APEC and World Youth Day) Kathryn turned to stand-up comedy and ran her own comedy room for the last 8 years (with Ron). Her passion is any live performance but with special bent toward storytelling. Most of our guests are young (around the same age as our adult children) so we figure that they want plenty of room, independence and self direction. We're just very happy to help if asked. The motto that means the most to me is "a life lived in fear is a life half lived".");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("22177197","4271380"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("135573101","Alba","https://a0.muscache.com/im/pictures/90e4b086-71c6-4af0-9f73-23bff2edd59a.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,English,Español,Italiano,한국어.","Hi, my name is Alba. 
I look forward to welcoming you to my beautiful home close to the Sydney`s main tourist attractions!
Please feel free to contact me, if you have any questions regarding the property. 
Happy stays and safe travels -:)");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("135573101","17593212"),
("135573101","19420826");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("97439968","Jean","https://a0.muscache.com/im/pictures/user/d1efc412-7d25-4d5a-9efd-4faf3cffbe3b.jpg?aki_policy=profile_small","Lives in Caringbah, Australia.Speaks English,中文.","Couple works in tourism industry, love travelling and meeting other travelers. We have been to lots of places around Australia and the world; But our favorite place would still be Sydney, even though we love the atmosphere of London and enjoyed strolling on streets of Paris and San Francisco. But landing at Sydney and take a deep breath of the fresh air always makes us so happy to be home again. 
Our next trip will be around Europe hopefully when our daughter gets a bit older and able to travel with us on long haul flight (Website hidden by Airbnb) 
 I used work for travel agency and then in world famous Airlines as sales executive and management, and also worked for world financial institute looked after the most prestigious customers around Asia and Pacific area (Website hidden by Airbnb) like meeting people and enjoy to put a smile on people's face, especially when guests have "wow" feeling when they check in, it just makes me happy! : (Website hidden by Airbnb) I love good food (spicy), movies, reading a good book, and meeting interesting people (Website hidden by Airbnb) 
We are tidy, clean and respectful people, our place is well located and maintained,  we take the cleaning level seriously and always make sure all equipment especially towels and linens are washed and disinfected properly to ensure guests a happy staying experienc (Website hidden by Airbnb) ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("97439968","30518997"),
("97439968","30835429");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48015860","Alex","https://a0.muscache.com/im/pictures/c870ad82-a014-4d41-8226-a82e25f30d9f.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("48015860","33502045"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87388224","Chris","https://a0.muscache.com/im/pictures/86268ac9-ca10-4c43-8db0-6fe065247933.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("87388224","14303428"),
("87388224","20730235"),
("87388224","21110558"),
("87388224","26819753");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2988780","Sylvia","https://a0.muscache.com/im/pictures/user/0a3e2b62-d401-403a-8c0c-0e41b6a8e10b.jpg?aki_policy=profile_small","Lives in Leichhardt, Australia.Speaks English,Italiano.","G'day G'day
Well that's me on the left and my husband Anthony on the right.
I'm origonally from Scotland and Mr Right (Ha Ha)  from Italy.
A nice match
We are both easy going and enjoy meeting and hosting guests from all over the world.

");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2988780","20175511"),
("2988780","21253393"),
("2988780","32322252");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21538589","Catherine","https://a0.muscache.com/im/users/21538589/profile_pic/1443431777/original.jpg?aki_policy=profile_small","Speaks English.","This is me in fancy dress as Frida Kahlo, at a halloween party, complete with monobrow and mustache.  
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("21538589","8317766"),
("21538589","13239461"),
("21538589","15092541"),
("21538589","25378101");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1920131","Dan","https://a0.muscache.com/im/pictures/5887f360-93a3-4fdc-81cc-ce63d0331d31.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1920131","23618765"),
("1920131","31061058");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("114934361","Tarek","https://a0.muscache.com/im/pictures/1cced785-c2ce-45a8-80d2-f2a2b9ecc181.jpg?aki_policy=profile_small","Lives in Pyrmont, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("114934361","34547948"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
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
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2351093","498008"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5169464","Spencer","https://a0.muscache.com/im/users/5169464/profile_pic/1365246877/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Self Employed - Cafe Owner.Connected account.","Professional guy that loves to travel!  Enjoy discussing travel stories.  I have lived in Sydney for 15 years and love the city.

Always keen to chat about the sort of experiences you would like while staying in Sydney and help to plan Itineraries.  Whether it be a visit to Circular Quay or the Museum of Contemporary Art or perhaps a visit to the beaches of the Central Coast or down to Kiama to see the blow hole.

Went to school on the Gold Coast in Queensland and have family there, so may be able to help with forward planning your Australian trip.

Have also lived in regional centers in New South Wales, Victoria and Queensland - happy to advise holiday spots.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5169464","952331"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5314080","Claudia","https://a0.muscache.com/im/users/5314080/profile_pic/1423217843/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.","I am Australian and was born in Sydney. I have lived in France before and I adore French culture and language.I run a boutique French Class business. I enjoy reading, films, travelling and meeting people.
When it comes to hosting people in our home, we are very reliable and always keen to offer a wonderful experience in our beautiful home and city!
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5314080","4186050"),
("5314080","26906325");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("25419716","Anthony","https://a0.muscache.com/im/pictures/df0adf5f-48a1-4853-ab2e-bd4b80eb7c2c.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,日本語.","Easy going guy, loves to work hard and have fun when he travels. 

Loves basketball, snowboarding and scuba diving");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("25419716","4933784"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14147903","Hannah","https://a0.muscache.com/im/pictures/user/b2d8c260-f314-4462-8cd5-f0d181f5de00.jpg?aki_policy=profile_small","Lives in Rose Bay, Australia.","Hi I'm Hannah. I love being an Airbnb host and sharing my apartment in Kirribilli with people from all over the world. I am a born and bred Sydney-sider. I have lived in the UK, Europe, the US and middle east. I now live back in Sydney in the Eastern suburbs with my lovely husband - Mark - and my two (super-cute) young daughters. I love travelling and experiencing different cultures and new adventures. Although with two young kids my travels are less frequent than they used to be. This year we will be visiting Hong Kong and Hawaii.

I pride myself on looking after my guests well with clean and comfortable accommodation that is located in one of the best parts of Sydney. Our apartment in Kirribilli is right on the harbour, overlooking the Opera House.

I'm always available to answer any questions you have about what its like to spend time in Sydney and where you may like to spend some time whilst you're here.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("14147903","2765971"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("13059157","Bert","https://a0.muscache.com/im/users/13059157/profile_pic/1398253553/original.jpg?aki_policy=profile_small","Speaks English,Nederlands.Work: Dealer in old wares and bric a brac..","I have lived in Sydney since 1969, after moving here from Holland.  I have lived in Queensland and Western Australia, but always came back to Sydney.  I love my inner city apartment, which I use as a bachelor pad to escape the boredom of living in the suburbs.  But when I'm not using it, I'd like to share it with visitors to the city,  so they can experience Sydney from the heart.  I'd be happy to talk to you about antique French cars; to point you to the real Sydney; or to share travel experiences.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("13059157","2718367"),
("13059157","27154088");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("403434","Gary","https://a0.muscache.com/im/pictures/8519697d-3a51-4746-a4e6-e88febb013eb.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Connected account.","Easy going professional. Enjoy all things travel and music!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("403434","2183999"),
("403434","34319912");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("718063","Johanna","https://a0.muscache.com/im/pictures/user/27487134-340c-4952-aeed-6c6f2572fadc.jpg?aki_policy=profile_small","Lives in New York, NY.Work: journalist/meditation teacher.","
I love hosting people at my place in Potts Point,  Sydney, AUSTRALIA. And you’ll find that even though I am traveling a lot and we may not meet in person, I am very responsive though the Airbnb App. 
I am based in New York City and run meditation business in Manhattan and Brooklyn, Sydney and Melbourne. I have been a journalist for more than 20 years. 

");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("718063","8107268"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("65825639","Thomas","https://a0.muscache.com/im/pictures/1f0c89c0-8fe1-4ba7-8380-cee2129493c8.jpg?aki_policy=profile_small","Connected account.","Sydney city local interested in Sailing, surfing, swimming and exploring the area.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("65825639","12233475"),
("65825639","14680046"),
("65825639","21805860"),
("65825639","23190962"),
("65825639","33503592");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("402292","Helen","https://a0.muscache.com/im/users/402292/profile_pic/1397168958/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.","We are from Ireland, but have lived in Sydney for over 30 years.  We enjoy travelling, theatre, movies, nature, walking, and meeting  people. We are happy to help in any way we can, but you can be assured of total privacy if you just want to relax and do your own thing.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("402292","75702"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("96643264","Tracey","https://a0.muscache.com/im/pictures/user/b0ef47c4-3c79-4787-8e89-e9c0251c567b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("96643264","22295354"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("5825159","David","https://a0.muscache.com/im/pictures/user/667c1245-179b-4c2c-a112-ea7d991ad67b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Enjoy traveling and meeting new people. Love to try new places everywhere I go and enjoy a drink or two.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("5825159","28211988"),
("5825159","28419154");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("105193068","Victoria","https://a0.muscache.com/im/pictures/436576b2-9d4a-4cbe-a73c-e7112884816d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: Channel 7.Connected account.","Big heart, big hair, big adventure. Respectful traveller looking for new experiences, connections, and places. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("105193068","34373264"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20343579","Larry","https://a0.muscache.com/im/users/20343579/profile_pic/1408611151/original.jpg?aki_policy=profile_small","Work: Accountant.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20343579","4989322"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8939894","Alastair","https://a0.muscache.com/im/pictures/5fec717a-23f7-4ded-861f-a87d4a275049.jpg?aki_policy=profile_small","","4 continents, 27 countries, 60+ cities and thousands of kilometres covered, I have accrued an endless supply of memories abroad that I wish to expand on through my active involvement within the dynamic and exciting Airbnb community. 

An infatuation with travelling abroad to foreign destinations, seeing unique sights and experiencing different cultures and cuisines is a universal epidemic that crosses continents. 

As a host I take great pride in sharing the beautiful sights, spectacular views and glowing warmth of my home city of Sydney.  Having been a member since September of 2013, I have thoroughly enjoyed playing an active part in the Airbnb Community and welcome you to my humble abode.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8939894","1808700"),
("8939894","11422915"),
("8939894","11422997");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("48538672","Steve","https://a0.muscache.com/im/pictures/1fcf6e56-27b8-4645-9d89-bb0b841e86ff.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi, My name is Steve Banks. I have lived in Coogee for 15 years. I am a license real estate agent. I have traveled to most parts of the world. But i love Coogee the best. . If you also need me to drop you off at the airport i will do that for you too for $40 to domestic and international airport
All accommodation is secure once it has been booked because I am the owner of the properties and they are not sub leased like a lot of people do on Airbnb. If you want no risk book with me");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("48538672","9352316"),
("48538672","10105225"),
("48538672","11659833"),
("48538672","34288991");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("97196746","Chris","https://a0.muscache.com/im/pictures/user/f73ec1bb-f954-48c3-967b-280dc8eab96c.jpg?aki_policy=profile_small","Lives in Mascot, Australia.","Friendly and easy going. We will strive to make your stay a pleasant one.  We just ask for the basic rules to be observed.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("97196746","15274985"),
("97196746","26047444"),
("97196746","28645781"),
("97196746","31911995"),
("97196746","31939620"),
("97196746","32229222");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("30069789","Alex","https://a0.muscache.com/im/users/30069789/profile_pic/1427411468/original.jpg?aki_policy=profile_small","Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("30069789","16091446"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("15885982","Julian &amp; André","https://a0.muscache.com/im/pictures/28bb682b-1697-4337-a99e-0ffa99859a6f.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Español,Português,Svenska.","Hello, and thank you very much for having a look at our profile :) 

We (Julian Wong &amp; André Cardoso) are a married couple of dreamers. We're also hosts, travellers, performers and teachers. Along with a wonderful little team, our aim is to create spaces for people to find some peace, have a little fun, touch the ground, and hopefully learn a thing or two. 

We live, host and teach in three locations in the Sydney region. In the heart of the city are our Fig Tree House in Woolloomooloo, and Sycamore Place in Surry Hills. In the gorgeous Blue Mountains is our Secret Valley Escape, about 2 hours away. We're constantly bouncing between the city and mountains, and it makes us very happy to share them with people from all over the world. 

--------------------------------------------------------------------------------

Julian, a native Sydney-sider, travels extensively and works as a performance artist in dance, music and physical theatre. He is also a practitioner of the Feldenkrais Method, which is a movement based learning process. His family is from Wenzhou, China, and he is a total sucker for food. 

André is a Portuguese-American who went to uni in Sweden, and was brought to Australia by love. He likes long walks in the wilderness, teaches yoga and meditation, plays jazz, and can often be found in a turquoise alpaca sweater. 

--------------------------------------------------------------------------------

As well as hosting, we aim to have regular gatherings where we can share our practices, learn with others, tell stories, and play music together. If you are interested, please let us know! 

Thank you again, and welcome.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("15885982","5999221"),
("15885982","5999550"),
("15885982","7168362"),
("15885982","13438832"),
("15885982","16692296"),
("15885982","18300851"),
("15885982","21850553"),
("15885982","21951397"),
("15885982","23566303"),
("15885982","24362318");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
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

Follow us on Instagram "maxhomedesign" and don't forget to tag us with your beautiful photos! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("155157927","5127195"),
("155157927","15907301"),
("155157927","18061319"),
("155157927","18399338"),
("155157927","24460964"),
("155157927","29550028"),
("155157927","33507387"),
("155157927","33621071"),
("155157927","34763401"),
("155157927","35238422");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("106463699","Paul","https://a0.muscache.com/im/pictures/user/063a444a-1e21-4e90-b70c-4b461953ad18.jpg?aki_policy=profile_small","Lives in Lane Cove West, Australia.Connected account.","Hi,
My name is Paul. I live with my partner in a big house and love to have guests stay in the Studio. We are very happy to help with information about Lane Cove and Sydney.

Hope you book and enjoy the Studio.
Cheers,
Paul");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("106463699","16975413"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6972499","John","https://a0.muscache.com/im/pictures/93c59384-93cd-4392-852d-69ce138886b5.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","33 year old professional that works in the Sydney CBD Monday to Friday.  I enjoy books (invariably non-fiction), vintage movies, music, and am somewhat foodie (homemade and restaurant).  Travelling is also an obsession, and being an Airbnb host is a great alternative way to interact with people from around the world.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6972499","20022944"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("45937207","Amy","https://a0.muscache.com/im/pictures/af91da9d-1bdc-4954-96f7-f6d6296b8b32.jpg?aki_policy=profile_small","Lives in Bondi Beach, Australia.Speaks English.","Love to travel!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("45937207","8759863"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("22269401","Sam And Janelle","https://a0.muscache.com/im/users/22269401/profile_pic/1443518362/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","Hi there we are Sam and Janelle and we are excited by the sharing economy that sites like AirBnB provides. 

Janelle works in aged community care and she looks after the properties you will be booking.

Sam is a professional musician who has  travelled to various parts of SE Asia and I plan on a big European trip next year followed by the USA sometime after that. 

My apartments are carefully selected to provide our guests with the most comfortable stay possible and we hope you enjoy the little touches we put into each apartment. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("22269401","6397327"),
("22269401","7664827"),
("22269401","9567840"),
("22269401","11483574"),
("22269401","16923195"),
("22269401","16987694"),
("22269401","17013224");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("371323","Andrew","https://a0.muscache.com/im/pictures/a61598e1-c2ac-45f1-a7cb-8fa94f96f11d.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Work: films.","Wandering filmmaker");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("371323","3046619"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("115069485","Jim","https://a0.muscache.com/im/pictures/1d840035-a84f-4c3b-ba73-6ad6dad7ec4e.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","I am a  film composer. My partner Gloria is a scientist. Its  a perfect match of opposites. We have a 14 year old son. We are unpretentious and easy going. We survived 25 years in Los Angeles where I wrote scores for horror and action movies and met some amazing creative people. We are active and love to get out and enjoy our great city so we can help you with your plans. We are well informed on history, politics , food and culture and we love to converse about them. We will make you welcome in our house. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("115069485","17124256"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("32928357","Mary","https://a0.muscache.com/im/users/32928357/profile_pic/1431160932/original.jpg?aki_policy=profile_small","Lives in The Rocks, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("32928357","6327407"),
("32928357","15748953"),
("32928357","16801124"),
("32928357","27668332");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1347315","Riley","https://a0.muscache.com/im/pictures/user/9fe8bb23-d0d7-42cb-9189-e743123982d7.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Work: Law student.","My brother Mitch and I are ocean people, and live active lifestyles.
My father John is currently overseas, so I will be the point of contact for your stay.
Rest assured the same quality will be provided, I have been cleaning the apartment and have helped with all operations attached for many years.

I go to University of Technology Sydney, where I am studying law. My brother Mitch attends UNSW studying psychological science. 

We live in the house upstairs, and hope you enjoy your stay!
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1347315","256569"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("233182849","Mos","https://a0.muscache.com/im/pictures/user/06a49c31-3a3c-4110-89e3-bb25e93dc6ea.jpg?aki_policy=profile_small","Lives in Phayao, Thailand.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("233182849","33231496"),
("233182849","33231730"),
("233182849","33231959"),
("233182849","33232164");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("21210519","Ilhwan","https://a0.muscache.com/im/pictures/user/97878dbd-025a-45d3-b953-fe933d7085a2.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,한국어.Connected account.","Hello

I really want you stay at my apartment comfortably.
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("21210519","22589788"),
("21210519","29770616");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("199185428","Clara","https://a0.muscache.com/im/pictures/user/ec0ece5f-5497-4f53-8b99-7759c2b97626.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,Bahasa Malaysia,English.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("199185428","26485492"),
("199185428","27405290"),
("199185428","29046449"),
("199185428","29325752"),
("199185428","29527162"),
("199185428","30360881"),
("199185428","33123775"),
("199185428","33124240");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20381574","Winston","https://a0.muscache.com/im/pictures/ad20980f-7c5c-484f-a2de-dbaa75742aa2.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","I'm a Sydney local and work in digital marketing. I'm always available to answer questions over the phone or text messages during your stay, but generally prefer to maintain your privacy. I take any feedback seriously and aim to provide a comfortable, clean and peaceful stay for my guests.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20381574","7162512"),
("20381574","9122773"),
("20381574","15186470"),
("20381574","28708910");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("117827419","Mark &amp; Jess","https://a0.muscache.com/im/pictures/7215defa-20d7-4d93-8a51-001d8fc24242.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("117827419","17424237"),
("117827419","28786821");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("41599164","Kath","https://a0.muscache.com/im/pictures/43f4f429-8996-4b50-b1ae-7728da8525e0.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("41599164","7890243"),
("41599164","9156574");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("132391249","Klodian","https://a0.muscache.com/im/pictures/a152503f-330c-4a6e-8987-1a1129772815.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("132391249","18978622"),
("132391249","30275289");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4234278","Eve","https://a0.muscache.com/im/users/4234278/profile_pic/1374579859/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.","Eve has lived and worked in Sydney all her life and knows all the best places to eat out and what to see

Eve loves being with family and friends, traveling, music, theatre and reading

Eve and her partner Brian live in the main house and are friendly and welcoming. They have two daughters studying to be teachers at University. 



Eve and Brian do have two Maltese cross poodles (Ella and Willie). They're part of the family and are harmless, but they will seek you out and try to make friends with you
");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4234278","1349941"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4706929","Sam","https://a0.muscache.com/im/pictures/5c974e2d-c2f4-489d-ac37-7ce4180d0fe1.jpg?aki_policy=profile_small","Lives in Tamarama, Australia.Speaks English.Work: LET US HOST PTY LTD.Connected account.","I'm from Sydney, Australia and Merike is from Tallinn, Estonia. 

We spend most of the year travelling the world as my dream is to be the most travelled person in Australia.

We run a property management company, and are always looking for amazing places to stay at while overseas, so we live and breathe Airbnb.

Please feel free to contact us if looking for help with hosting your property!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4706929","10269529"),
("4706929","21297653"),
("4706929","21298728"),
("4706929","21732383"),
("4706929","26434699"),
("4706929","26615766"),
("4706929","28734321"),
("4706929","33881661"),
("4706929","35291830");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("95621162","Roezetta","https://a0.muscache.com/im/pictures/396d7e70-06be-4b23-85ed-07b461e992a0.jpg?aki_policy=profile_small","Lives in Northwood, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("95621162","15398542"),
("95621162","17577417");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
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

I speak fluent English, Cantonese (广东话), Mandarin (普通话), Bahasa Melayu, Bahasa Indonesia &amp; Tagalog.

If the dates you're after are available on my calendars, you may proceed to "INSTANT-BOOK" em'.

My calendars on AirBnb are always up to date, so if they're blocked and you can't select them, it pretty much means someone else has already booked em'.

Happy stays &amp; safe travels :)

View more properties HERE (JL3) &gt; https://www.airbnb.com.au/users/114384153/listings

OR HERE (JL3) &gt; https://www.airbnb.com.au/s/homes?host_id=114384153 

OR HERE (JL1) &gt; https://www.airbnb.com.au/s/homes?host_id=8530753

OR HERE (JLMY) &gt; https://www.airbnb.com.au/s/homes?host_id=177114776

OR HERE (JLMY2) &gt; https://www.airbnb.com.au/s/homes?host_id=217495299

OR HERE (JLMY3) &gt; https://www.airbnb.com.au/s/homes?host_id=228789871");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("114384153","25846107"),
("114384153","26825759"),
("114384153","27960586"),
("114384153","28678785"),
("114384153","28902613"),
("114384153","31194991"),
("114384153","31772450"),
("114384153","31772660"),
("114384153","32556579"),
("114384153","32617223");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20655229","Amanda","https://a0.muscache.com/im/pictures/user/28cb716d-cb8e-4946-9421-36b8e77587bf.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Português.","We are young and passionate about traveling the world, camping in our van, meditation and good vibes. When we travel we always try to find a place to call home so we are opening our beautiful house to share with you ❤️");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20655229","24337354"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51685133","Brett","https://a0.muscache.com/im/pictures/user/b95690bf-7c24-4599-a2da-98e96fc800fb.jpg?aki_policy=profile_small","Lives in Australia.","The owner of Glengarry Castle Hotel since 2004");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("51685133","27151413"),
("51685133","31868841"),
("51685133","31884205"),
("51685133","31942024"),
("51685133","33762653");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("188659639","Henrich","https://a0.muscache.com/im/pictures/user/7889cc40-ec0e-498e-948b-216bc52a8429.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English,Español,Polski,Čeština.","Hi, I'm Henrich and I was born in Slovakia, been living in Australia since 2016.

I &amp; my partner Jonathan have a spare room in our apartment that we decided to offer to travelers passing by.

We prefer short-term stays and offer the room for individuals or couples too. 

In a nutshell.. I work in hotel industry and am into photography and Jonathan is an acting tutor with a passion for AFL!

Talk to us in English, German, Slovak, Czech or Spanish!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("188659639","24954388"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("183028242","Sophie &amp; Sonny","https://a0.muscache.com/im/pictures/user/f79886f5-c89a-4610-8cdd-58b88a4f2ee6.jpg?aki_policy=profile_small","Lives in Sefton, Australia.","We are parents of two cheeky little boys. We enjoy spending time with them and take them everywhere whenever possible. We love to see more of the world and discover new experiences. Our favourite food is street food.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("183028242","24287277"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10305439","Monique","https://a0.muscache.com/im/pictures/220fca8e-7e7e-468a-97ae-9623b27f4cb6.jpg?aki_policy=profile_small","Speaks English.","Hi there, 
I have traveled all over the world using airbnb and I think it's a great way to meet new people and cultures. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("10305439","24562378"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("20707547","George","https://a0.muscache.com/im/users/20707547/profile_pic/1411090954/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("20707547","3994417"),
("20707547","4144932"),
("20707547","4145041"),
("20707547","4186298");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6764823","Reid","https://a0.muscache.com/im/users/6764823/profile_pic/1370498209/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Español.","I am a mid-late 30's gay male with spare room available at my flat.  I'm not an outrageous queen but don't mind if you are (or one of you or anyone else is!).  Straight, gay, asexual (lol), couples, friends, individuals all welcome.  

I work in people facing IT roles, where I talk to people about what they want to achieve and then translate that to the 'real' IT people who make it happen.  I really enjoy connecting peoples needs with solutions.  The best part of what I do is getting to form relationships with people and that really cool sense of satisfaction when you know you've made a positive impact for someone.  Anyway, enough geek speak!

On week days I generally get up 6ish for gym and work and/or head to the gym after work, so if you are home during the day, you'll have the house to yourself.  Weekends I may be out with friends, dinner, pubs, clubs (or recovering from these) depending what's on, but sometimes I like to chill at home.  I volunteer with a charity to feed homeless people on Saturday evenings.  It's surprisingly fun if you would like to check it out.  You're also welcome to join in socialising if you are at a loose end or have just moved here and want to make new friends.

Sometimes I do a bit of travel myself and may be away.  That's a bummer because I may not get to meet you, but on the plus side you will have the house to yourself.  I do have a fantastic co-host when I am away.  His name is Fred and he's great.  If you need to message for advice or help, he/his team or I will be ready to advise you and we are happy to do so.

My friends and I are super nice, friendly people so if you want some tips about Sydney, where to go, what to see etc, we're sweet to help you out.  At home, I'm totally happy to break out 5 minutes of small talk and leave you in peace if that's what you prefer.  

I've been on AirBnB since 2013 and have hosted more than 200 guests now.  Originaly, I decided to host instead of having house mates.  It's not a 'for profit' thing for me, just another way of splitting house costs.  

I've met so many awesome people through AirBnB, some of whom now live in Sydney and are close friends.  You may get to meet some of them :)
  
If you come stay, I hope you will feel as at home here as you would at your own place.  You're basically a house mate while you're here.  I would just ask you treat the place like you would your own, have respect for the neighbours in the building and take care of the owners investment in this beautiful property that we are so fortunate to stay in.  Nothing too stressful.  :)");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6764823","6340333"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("6248691","Lorraine","https://a0.muscache.com/im/pictures/user/9a3a4a0d-57be-49cc-9883-c97d1d60ec22.jpg?aki_policy=profile_small","Lives in Paddington, Australia.","Hello and welcome! 

Between this apartment and our home, we have been greeting and hosting guests from all over the world, for several years. We enjoy meeting people and sharing our much loved spaces.  
 
As an alternative to this apartment, if you are after a unique stay in an artistic home (either as a room or whole house), you can also find us here: https://www.airbnb.com.au/rooms/1759931?preview  (Check the 'Profile' on this link for other listings)

We hope you enjoy your time in the apartment.
Lorraine &amp; Arnie");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("6248691","1113059"),
("6248691","1759931"),
("6248691","2278444"),
("6248691","3795958"),
("6248691","13318845");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61734008","Alice","https://a0.muscache.com/im/pictures/user/1a51dc21-12f7-48e3-896d-be5e4caa7898.jpg?aki_policy=profile_small","Speaks English,Español,Italiano,Português.Work: Exhibition Manager at Informa Australia.Connected accounts.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("61734008","22019421"),
("61734008","29805402");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("177754030","Hanny","https://a0.muscache.com/im/pictures/user/7fefa3bc-ef8a-42ee-9584-36313d8966b4.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Bahasa Indonesia,English.","Couple lives in 3 bedroom unit. Husband works labour works. Wife works as admin office.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("177754030","23717562"),
("177754030","26239415");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("213451435","Anthea","https://a0.muscache.com/im/pictures/user/9a651280-1e94-46f2-9163-4ae946ad1434.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("213451435","28260418"),
("213451435","28330579");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("12779397","Emma","https://a0.muscache.com/im/pictures/user/54650b46-f6dd-4d88-8bbf-0d0bf32d3c3b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,中文.","Hello !! I am Emma 
I am a shop owner in Sydney 
 I sell plants and jewelry:)

I love to decorate my apartment and meeting new people.
more that happy to answer any questions that you may have.

Welcome to Sydney!!!! :)
All the best

Emma");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("12779397","28445942"),
("12779397","32827809");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61170945","Todd","https://a0.muscache.com/im/pictures/user/2baa8068-b15c-4187-a1b0-736c9d2e51ab.jpg?aki_policy=profile_small","Lives in Paddington, Australia.Work: Founder at Homeshare Experts.Connected accounts.","Professional Airbnb superhost who loves travelling.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("61170945","13982969"),
("61170945","27035015"),
("61170945","27438223"),
("61170945","27910907"),
("61170945","29696329"),
("61170945","30158955"),
("61170945","30325643"),
("61170945","33815335"),
("61170945","34735365"),
("61170945","35101442");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("161730392","Kiana And Family","https://a0.muscache.com/im/pictures/user/70a4a578-4792-4d03-a660-adc38abb835b.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","Family living in Sydney. Love Sydney, love travelling, love our daughter, Kiki. 
Our apartment was purchased recently for our daughter. We have popped this beautiful city pad on Air BnB for others to use and enjoy before she moves in!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("161730392","22482212"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("10217099","Jeremy","https://a0.muscache.com/im/users/10217099/profile_pic/1385257492/original.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Work: Teacher and Accommodation.","Hello

I'm a friendly, open and ethical guy who enjoys offering clean, quality accommodation to like minded people. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("10217099","1979812"),
("10217099","1979927"),
("10217099","1979960"),
("10217099","1979970"),
("10217099","2554326"),
("10217099","4008182");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("8169284","Amish","https://a0.muscache.com/im/pictures/10cc26ff-bea3-4593-b2e2-ccd98c9924be.jpg?aki_policy=profile_small","","I'm proud to be a SuperHost and love giving all my best to my guest. I really enjoy giving my guest the best experience and comfort possible.

Outside of Airbnb, im a consultant in the IT and Finance space. But apart from all that work stuff, I love to travel, try many different types of foods and love my TV shows/movies. Im also a bit of a nerd because I love my computer games.

I have been in Sydney for a while now, so happy to have a chat and give you my opinion on what are the coolest places around.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("8169284","4597470"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9951125","Sean","https://a0.muscache.com/im/pictures/user/53cc7866-7655-4f34-a3e9-7b3f01bec7fb.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,Español,Русский.Work: University of Sydney.","I am a lecturer in Finance at the University of Sydney, and have travelled to 39 countries so far. I love to rock climb, cycle, go to music festivals and drink good red wine. I enjoy cooking, good friends and good times. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("9951125","9538497"),
("9951125","31179162");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3600856","Angus","https://a0.muscache.com/im/pictures/user/0102a3e9-f154-4e54-8e16-7393077b6a87.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English,Français.Connected account.","I grew up in Sydney but have loved travelling around Australia and the world. Happy to give you some tips about fun places to hang out in our neighbourhood or anything else you want to know. I'm a relaxed kind of guy and hope to make your stay hassle-free and easy.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3600856","4755217"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("27286333","Julie","https://a0.muscache.com/im/pictures/455cdf06-3fff-4938-8fb3-a5c4fb36ca58.jpg?aki_policy=profile_small","Lives in Darlinghurst, Australia.Speaks English,Español,中文.Work: Scientist.","I'm an AirBnB and a share economy enthusiast. I eat, breathe and sleep Airbnb! I am scientist (protein chemistry) and I work as a certified Airbnb community expert and manage several Airbnb listings in fantastic Sydney locations.  I enjoy the Sydney lifestyle and fine foods and wine. I have a natural talent for hospitality and would love to host you in the very near future! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("27286333","9095683"),
("27286333","16546784"),
("27286333","16558523"),
("27286333","16605303"),
("27286333","18451689"),
("27286333","20482986"),
("27286333","30932186"),
("27286333","31392524"),
("27286333","31545719"),
("27286333","34826378");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4010521","Sally","https://a0.muscache.com/im/pictures/8c82426c-a3ff-4884-a9dc-e35f4ec10243.jpg?aki_policy=profile_small","Lives in Newtown, Australia.","I am an Australian who loves to make home an inviting, interesting and functional space to live in and be. Over many years we have lovingly restored and furnished our unique warehouse in Newtown. 

I am a collector at heart, with a keen eye for faded beauty and utility. Our warehouse includes a selection of some of the vintage treasures I have gathered along the way.

We love to travel and have recently returned from 2 years living in Bali. We have had very rewarding experiences with AirBnB, both as hosts and as guests. 

I look forward to making your stay as comfortable and enjoyable as possible, and to pointing you in the right direction to make the most of your time in our wonderful corner of Sydney’s Inner West");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4010521","9864676"),
("4010521","15663661"),
("4010521","27987632");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("78423405","Grace","https://a0.muscache.com/im/pictures/86d668e6-626b-4564-869a-471f5c9386cb.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("78423405","13584032"),
("78423405","22238750"),
("78423405","22854988"),
("78423405","23693641"),
("78423405","24643786");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("122624551","Michael","https://a0.muscache.com/im/pictures/user/727c4515-2af7-4279-8f3e-920389bd288b.jpg?aki_policy=profile_small","Lives in Australia.Speaks English,中文.Work: Self employed .","We're Michael and Cathy, we love the city of Sydney, the first time when we travelled this awesome city we found this was the place where we belong, then we settled in and enjoyed this city so much.

We love traveling, music, food and wine...there is nothing better than catching up with old and new friends.

We have been an Airbnb host since March 2018. There is absolutely nothing we enjoy more than welcoming people to this fabulous city and meeting new people.

We're super friendly and will bend over backwards to help you have the best stay possible.

Michael &amp; Cathy
fell in love with airbnb when I first try it, then I thought I should do something to sightseers or businessmen, make them obtain their best during their stay, I try to make my cozy home as comfortable and user friendly as possible, let my guests feel comfortable and enjoyable.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("122624551","23772409"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("2784819","Eve","https://a0.muscache.com/im/users/2784819/profile_pic/1346332361/original.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch.","My main interest is art, both its history and its practice, I am a painter and work from a studio in the back garden. My   other interests  include music, literature, walking etc.   My family background is Russian and I speak some Russian as well as German.
I am a friendly and relaxed person, as is my husband Richard and our house reflects this and our interests in art and history. He speaks some Spanish though is not fluent, as does our 21-year-old daughter who also lives in the house.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("2784819","4361264"),
("2784819","4371681");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("29716820","Shane","https://a0.muscache.com/im/pictures/368e1bd5-b7cc-4160-badb-e818bedc8e2e.jpg?aki_policy=profile_small","Lives in Newtown, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("29716820","9908068"),
("29716820","15076582"),
("29716820","18829560");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("124948923","Terry And Wendy","https://a0.muscache.com/im/pictures/user/444c9b81-d41c-4efe-b977-39b95d84af73.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("124948923","30694304"),
("124948923","30695373");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("23546487","Nick","https://a0.muscache.com/im/users/23546487/profile_pic/1415589275/original.jpg?aki_policy=profile_small","Lives in Gladesville, Australia.Work: Property consultant.","Originally from overseas, I am passionate about Sydney and all that it offers and love to share my favorite places  with friends and visitors.  I live with my family - my wife, two lovely kids aged 10 and 12. We enjoy good food, the outdoors and good company.   We love Air B&amp;B hosting and sharing our wonderful house and garden.  We look forward to meeting up with you and sharing our local knowledge and great things to do in Sydney.


");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("23546487","9202362"),
("23546487","9202537");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("1947076","Ani","https://a0.muscache.com/im/pictures/2020f875-dae6-4440-914f-0d1ab160fac0.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks English.Connected account.","Hello, 

I live in the heart of Sydney, Australia.

I love to travel and see the world and like to offer like-minded people a clean and comfortable place when travelling.  

I'm sure that whoever stays in my apartments in Potts Point, Bondi Beach or farm house in the Southern Highlands will have a lovely time. Feel free to read my reviews to get a better understanding of each of my three listings. 

Any questions, just ask!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("1947076","6216222"),
("1947076","8597752"),
("1947076","15072449");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("69670577","Taylor","https://a0.muscache.com/im/pictures/404ce4c2-52cf-4561-859f-382663c97cca.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("69670577","22109754"),
("69670577","23208027"),
("69670577","23441110");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("61212872","Alex","https://a0.muscache.com/im/pictures/d0d2f675-363c-4884-a7ad-54ea30f26d34.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("61212872","30405038"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("43387943","Sandra","https://a0.muscache.com/im/pictures/user/4a83387a-6808-4045-9ba2-459b9949b8c0.jpg?aki_policy=profile_small","Lives in Surry Hills, Australia.Speaks English,Español.","Young professional working in online and retail fashion. Love dogs, cooking, singing and wine. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("43387943","24526949"),
("43387943","30823740"),
("43387943","33499224");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("131580703","Bella","https://a0.muscache.com/im/pictures/user/9d9eebe7-fe14-4c58-b1bb-4a0f20fce7a4.jpg?aki_policy=profile_small","Lives in Rosebery, Australia.Speaks English,Français,Italiano,中文,日本語,한국어.Work: onestopbiz.","My name is Bella I’m living with my partner 
We had 6 bedrooms big house 
We are rent one of our bigger double room downstairs We living upstairs.


");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("131580703","24456644"),
("131580703","24655445"),
("131580703","27817004"),
("131580703","28545161"),
("131580703","28914123"),
("131580703","31040084"),
("131580703","31625149"),
("131580703","33715780"),
("131580703","34323109"),
("131580703","34477086");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("3455633","Christopher","https://a0.muscache.com/im/pictures/user/1304bb17-2f0c-43fd-8f7c-9e96905916ee.jpg?aki_policy=profile_small","Lives in Katoomba, Australia.","Im a professional Actor, Musician and AirB&amp;B host who resides in Leura in the Blue Mountains just outside of Sydney. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("3455633","1195758"),
("3455633","9205098"),
("3455633","22696774");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("250666874","Joe","https://a0.muscache.com/im/pictures/user/9870cba9-fd40-4737-b245-afa1a7dc7862.jpg?aki_policy=profile_small","","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("250666874","33285655"),
("250666874","33317544"),
("250666874","33318862"),
("250666874","33320309"),
("250666874","33324504"),
("250666874","34548389");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("73505172","Nicholas","https://a0.muscache.com/im/pictures/7cb02a0e-b2e9-4a4b-ac60-2e7c5730305a.jpg?aki_policy=profile_small","Lives in London, United Kingdom.Speaks English.Connected account.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("73505172","13162019"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("91034448","Darren","https://a0.muscache.com/im/pictures/c147d7e9-7aa1-47a9-b6d2-bc8637086a2e.jpg?aki_policy=profile_small","Lives in Carlingford, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("91034448","16999162"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("11026509","Edward","https://a0.muscache.com/im/users/11026509/profile_pic/1389561204/original.jpg?aki_policy=profile_small","Lives in Bondi Beach, Australia.Work: Furniture transport and installation.","Live and work in the Sydney area. Love the beach.

As your host, I will leave you to it. If you need me, I won't be far away.");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("11026509","2160836"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("87005986","Norman","https://a0.muscache.com/im/pictures/91bd31d3-57d8-4ff6-b88a-a9af402727ae.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Speaks Deutsch,English.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("87005986","16442255"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("174052553","Kathleen","https://a0.muscache.com/im/pictures/user/226c4da3-d3c6-4725-ad6f-ac63d89594c8.jpg?aki_policy=profile_small","Lives in Woronora, Australia.","Hi! Teacher who occasionally travels. We have an Airbnb- too - so very busy!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("174052553","23357643"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("9277614","Marlene","https://a0.muscache.com/im/pictures/user/50e935bd-04c9-4ce2-a8c2-5af1f08b64f1.jpg?aki_policy=profile_small","Lives in Sydney, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("9277614","1765417"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("4945327","Stephanie And Julie","https://a0.muscache.com/im/pictures/user/f2ff1b14-d090-4adb-a631-3231a64bbdca.jpg?aki_policy=profile_small","Lives in Sydney, Australia.Connected account.","Stephanie from Sydney Australia. I love travelling, and love hosting people from around the world. On my travels I have encountered people who explain the area and give us great advice to get involved in the culture - which is exactly what I aim to do!
My mum Julie also manages our property in Sydney, and (in my humble opinion) she is just the most lovely lady around! ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("4945327","4185909"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("14018952","Sarah","https://a0.muscache.com/im/pictures/1c27c88d-edc4-4f0c-a3a4-27b5914b9c9d.jpg?aki_policy=profile_small","Lives in Western Australia, Australia.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("14018952","5041030"),
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("191127377","Shirene","https://a0.muscache.com/im/pictures/user/6258e490-f03c-4946-9a86-2224c7c4200c.jpg?aki_policy=profile_small","Lives in Cherrybrook, Australia.Speaks English,中文.","I love music, reading, travelling, enjoy good food and meeting new friends. I am not a particularly sporty person but enjoy walking, I find it therapeutic. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("191127377","25301692"),
("191127377","27210748"),
("191127377","30027204"),
("191127377","33079616"),
("191127377","34791294");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("113040569","Jeb","https://a0.muscache.com/im/pictures/01bd2299-3dc4-4371-89be-13a8148a4107.jpg?aki_policy=profile_small","Lives in New York, NY.","");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("113040569","16923529"),
("113040569","17109941");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("51572260","Yvonne","https://a0.muscache.com/im/pictures/5b49882e-490b-4f82-988d-95ebc7b00dd4.jpg?aki_policy=profile_small","Lives in New South Wales, Australia.Speaks English,中文.","I just love travel!");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("51572260","16446679"),
("51572260","17738193"),
("51572260","19737649"),
("51572260","20447092"),
("51572260","28450654"),
("51572260","28853886"),
("51572260","31881228"),
("51572260","32374684"),
("51572260","34353759"),
("51572260","34525220");
INSERT INTO `host` (`id`, `name`, `picUrl`,`details`,`self_intro`) VALUES 
("49736625","Rae","https://a0.muscache.com/im/pictures/user/f3cca7e0-da3a-4717-99b9-cb9870b0f9a2.jpg?aki_policy=profile_small","Speaks English.Work: Rug Wholesaler.","Friendly and outgoing. Native Canadian (Cree) decent, born in Australia.  Very sociable, enjoy hosting and making sure my guests are looked after. ");
INSERT INTO `host_to_room` (`host_id`, `room_id`) VALUES 
("49736625","9613095"),
