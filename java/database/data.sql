BEGIN TRANSACTION;




INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO city (city_name, city_desc, city_img) VALUES ('Rome', 'Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.', 'https://cdn.mos.cms.futurecdn.net/BiNbcY5fXy9Lra47jqHKGK.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Barcelona', 'Barcelona, the cosmopolitan capital of Spain’s Catalonia region, is known for its art and architecture. The fantastical Sagrada Família church and other modernist landmarks designed by Antoni Gaudí dot the city. Museu Picasso and Fundació Joan Miró feature modern art by their namesakes. City history museum MUHBA, includes several Roman archaeological sites.', 'https://a.cdn-hotels.com/gdcs/production172/d1185/1a0e1853-0ef0-4d17-b643-6bc98e49c867.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Zurich', 'The city of Zurich, a global center for banking and finance, lies at the north end of Lake Zurich in northern Switzerland. The picturesque lanes of the central Altstadt (Old Town), on either side of the Limmat River, reflect its pre-medieval history. Waterfront promenades like the Limmatquai follow the river toward the 17th-century Rathaus (town hall).', 'https://switzerlanding.com/wp-content/uploads/2022/12/uetliberg-winter.png');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Paris', 'Paris, France''s capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.', 'https://www.travelandleisure.com/thmb/SPUPzO88ZXq6P4Sm4mC5Xuinoik=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/eiffel-tower-paris-france-EIFFEL0217-6ccc3553e98946f18c893018d5b42bde.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Brussels', 'The City of Brussels is the largest municipality and historical centre of the Brussels-Capital Region, as well as the capital of the Flemish Region and Belgium. The City of Brussels is also the administrative centre of the European Union, as it hosts a number of principal EU institutions in its European Quarter.', 'https://static01.nyt.com/images/2022/09/23/arts/20antwerp-museum-01/20antwerp-museum-01-videoSixteenByNine3000.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Munich', 'Munich, Bavaria’s capital, is home to centuries-old buildings and numerous museums. The city is known for its annual Oktoberfest celebration and its beer halls, including the famed Hofbräuhaus, founded in 1589. In the Altstadt (Old Town), central Marienplatz square contains landmarks such as Neo-Gothic Neues Rathaus (town hall), with a popular glockenspiel show that chimes and reenacts stories from the 16th century.', 'https://image.wmsm.co/63bd4f456db71b439029a5318147818e/og-image.jpg?quality=80&width=1200&height=630&aspect_ratio=1200%3A630');


INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('The Colosseum', 1, 'Italy', 'Museum', 'https://cdn.mos.cms.futurecdn.net/BiNbcY5fXy9Lra47jqHKGK.jpg', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11880.48959519981!2d12.473776903855356!3d41.89022469679919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61b6532013ad%3A0x28f1c82e908503c4!2sColosseum!5e0!3m2!1sen!2sus!4v1692204586088!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Roman Forum', 1, 'Italy', 'Museum', 'https://images.pexels.com/photos/17057107/pexels-photo-17057107/free-photo-of-view-of-the-roman-forum-in-rome-italy.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'The Roman Forum is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome. Citizens of the ancient city referred to this space, originally a marketplace, as the Forum Magnum, or simply the Forum.', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.01817262165!2d12.482750074907937!3d41.89246626451635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61b383a9cdef%3A0xfa914007c0ec7de6!2sRoman%20Forum!5e0!3m2!1sen!2sus!4v1692204693915!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Sistine Chapel', 1, 'Italy', 'Church', 'https://m.museivaticani.va/content/dam/museivaticani/immagini/collezioni/musei/cappella_sistina/00_00_Cappella_Sistina/_jcr_content/renditions/original.png', 'The Sistine Chapel is a chapel in the Apostolic Palace, the pope"s official residence in Vatican City. Originally known as the Cappella Magna, the chapel takes its name from Pope Sixtus IV, who had it built between 1473 and 1481.', '00120 Vatican City', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.5306144822202!2d12.45190857656238!3d41.90295076385711!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6065c523afdb%3A0xab16c8877fb53e22!2sSistine%20Chapel!5e0!3m2!1sen!2sus!4v1692204747444!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('St. Peter''s Basilica', 1, 'Italy', 'Church', 'https://cdn.getyourguide.com/img/tour/634d4d773519a.jpeg/148.jpg', 'The Papal Basilica of Saint Peter in the Vatican, or simply Saint Peter"s Basilica, is a church built in the Renaissance style located in Vatican City, the papal enclave that is within the city of Rome, Italy.', 'Piazza San Pietro, 00120 Città del Vaticano, Vatican City', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d742.3910117446771!2d12.456143319664248!3d41.90223189636741!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6067b0ad3535%3A0xb0be9b5b5aad7258!2sPiazza%20San%20Pietro%2C%2000120%20Citt%C3%A0%20del%20Vaticano%2C%20Vatican%20City!5e0!3m2!1sen!2sus!4v1692219208281!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Piazza Navona', 1, 'Italy', 'Plaza', 'https://images.pexels.com/photos/12268449/pexels-photo-12268449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Piazza Navona is a public open space in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium. The ancient Romans went there to watch the agones, and hence it was known as "Circus Agonalis".', 'Piazza Navona, 00186 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4994.473324817164!2d12.472008254888292!3d41.89862886426201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6083c19d1c3d%3A0xa35724562e82334a!2sPiazza%20Navona!5e0!3m2!1sen!2sus!4v1692204916346!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Piazza del Popolo', 1, 'Italy', 'Plaza', 'https://www.italia.it/content/dam/tdh/en/destinations/lazio/roma/piazza-del-popolo/media/2480X1000_piazza_del_popolo_destination.jpg', 'Piazza del Popolo is a large urban square in Rome. The name in modern Italian literally means "People"s Square", but historically it derives from the poplars after which the church of Santa Maria del Popolo, in the northeast corner of the piazza, takes its name.', 'Piazza del Popolo, 00187 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.169828609195!2d12.473782976562756!3d41.91070776337128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f60f8e5e81687%3A0x43ee9ffffdce4350!2sPiazza%20del%20Popolo!5e0!3m2!1sen!2sus!4v1692204946666!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Baths of Caracalla', 1, 'Italy', 'Museum', 'https://www.wantedinrome.com/i/preview/storage/uploads/2019/04/baths-of-caracalla-rome.jpg', 'The Baths of Caracalla in Rome, Italy, were the city"s second largest Roman public baths, or thermae, after the Baths of Diocletian. The baths were likely built between AD 212 and 216/217, during the reigns of emperors Septimius Severus and Caracalla.', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.6422850735757!2d12.489864476561525!3d41.87904216535435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61ce333e85d5%3A0x6a2b4006ea5b98dc!2sBaths%20of%20Caracalla!5e0!3m2!1sen!2sus!4v1692205031626!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Trevi Fountain', 1, 'Italy', 'Monument', 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_600,h_400,c_fit/ymt-web/2023/01/600x400-levi-fountain-rome-body.jpg', 'The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini in 1762 and several others.', 'Piazza di Trevi, 00187 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.6197892708074!2d12.48327295!3d41.901033299999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6053278340d5%3A0xf676f1e1cc02bbb6!2sTrevi%20Fountain!5e0!3m2!1sen!2sus!4v1692205100948!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Spanish Steps', 1, 'Italy', 'Monument', 'https://images.unsplash.com/photo-1636804907035-8ae6360f1d4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 'The Spanish Steps in Rome, Italy, climb a steep slope between the Piazza di Spagna at the base and Piazza Trinità dei Monti, dominated by the Trinità dei Monti church, at the top.', 'Piazza di Spagna, 00187 Roma RM, Italy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.389329831989!2d12.480179426562541!3d41.90598856366679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f60541678ae75%3A0x7fc0d4978aae690f!2sSpanish%20Steps!5e0!3m2!1sen!2sus!4v1692205176822!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');


INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('La Sagrada Familia', 2, 'Spain', 'Church', 'https://media.istockphoto.com/id/1130443789/photo/sagrada-familia-basilica-in-barcelona.jpg?s=612x612&w=0&k=20&c=bw6WVHnaiwXxAFllDVujJanDQ3eayUt5ZQf8Ij75jVk=', 'The Basílica i Temple Expiatori de la Sagrada Família, shortened as the Sagrada Família, is an unfinished church in the Eixample district of Barcelona, Catalonia, Spain. It is the largest unfinished Catholic church in the world', 'C/ de Mallorca, 401, 08013 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23948.123141803615!2d2.1554651512450946!3d41.384612354706306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2dcd83dfb93%3A0x9bd8aac21bc3c950!2sLa%20Sagrada%20Familia!5e0!3m2!1sen!2sus!4v1692204915258!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Cathedral of Barcelona', 2, 'Spain', 'Church', 'https://a.cdn-hotels.com/gdcs/production172/d1185/1a0e1853-0ef0-4d17-b643-6bc98e49c867.jpg', 'The Cathedral of the Holy Cross and Saint Eulalia, also known as Barcelona Cathedral, is the Gothic cathedral and seat of the Archbishop of Barcelona, Catalonia, Spain. The cathedral was constructed from the thirteenth to fifteenth centuries, with the principal work done in the fourteenth century.', 'Pla de la Seu, s/n, 08002 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.545148766749!2d2.1736241764769657!3d41.383965996206975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2f996716c83%3A0x16f6112475e15883!2sCathedral%20of%20Barcelona!5e0!3m2!1sen!2sus!4v1692204944283!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Picasso Museum', 2, 'Spain', 'Museum', 'https://www.travelforbliss.com/wp-content/uploads/2021/06/IMG_0966.jpg', 'The Museu Picasso is an art museum in Barcelona, in Catalonia, Spain. It houses an extensive collection of artworks by the twentieth-century Spanish artist Pablo Picasso, with a total of 4251 of his works.', 'C/ de Montcada, 15-23, 08003 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.484905096014!2d2.17837227647701!3d41.38527459612562!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2fe99bce26b%3A0x27011e710700cc63!2sPicasso%20Museum!5e0!3m2!1sen!2sus!4v1692204984368!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Museu Nacional d''Art de Catalunya', 2, 'Spain', 'Museum', 'https://cdn-imgix.headout.com/mircobrands-content/image/51ea3cf2a3306830b0005424dbc0e3bb-AdobeStock_467226755.jpeg', 'The Museu Nacional d''Art de Catalunya, abbreviated as MNAC, is a museum of Catalan visual art located in Barcelona, Catalonia, Spain.', 'Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2994.244613225789!2d2.150784576571171!3d41.36876989714909!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a39a6f90695f%3A0xdaefe54e0f1210ee!2sMontju%C3%AFc%20National%20Palace!5e0!3m2!1sen!2sus!4v1692227954352!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Park Guell', 2, 'Spain', 'Park', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/73206731.jpg?k=1c528bf33d1226c704ed157b84b3b0d0255eceb92df62fc33e892c6c02793fc5&o=&hp=1', 'Park Güell is a privatized park system composed of gardens and architectural elements located on Carmel Hill, in Barcelona, Catalonia, Spain. Carmel Hill belongs to the mountain range of Collserola – the Parc del Carmel is located on the northern face.', '08024 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2992.1391115902165!2d2.150119576478135!3d41.41449879431247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2ae52d441ab%3A0x899a0ba01aaace58!2sPark%20G%C3%BCell!5e0!3m2!1sen!2sus!4v1692205045648!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Ciutadella Park', 2, 'Spain', 'Park', 'https://media.cntraveler.com/photos/5a7df721b8ebbd42565cf7c9/16:9/w_2560,c_limit/Parc-de-la-Ciutadella__2018_GettyImages-896371664.jpg', 'The Parc de la Ciutadella is a park on the northeastern edge of Ciutat Vella, Barcelona, Catalonia, Spain. For decades following its creation in the mid-19th century, this park was the city''s only green space.', 'Passeig de Picasso, 21, 08003 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.353584503219!2d2.183440276477128!3d41.3881269959486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2fd439609e1%3A0x42386118e65a3d70!2sCiutadella%20Park!5e0!3m2!1sen!2sus!4v1692205096382!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Spotify Camp Nou', 2, 'Spain', 'Stadium', 'https://www.fcbarcelona.com/photo-resources/2022/07/01/6e74c236-1470-4388-b199-53f5ba87fb36/_GP17665.jpg?width=1200&height=750', 'Camp Nou, branded as Spotify Camp Nou for sponsorship reasons, is the home of La Liga club FC Barcelona since its completion in 1957. With a current seating capacity of 99,354, it is the stadium with the largest capacity in Spain and Europe, and the third largest football stadium in the world.', 'C/ d''Arístides Maillol, 12, 08028 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.6862912792885!2d2.120244876476865!3d41.38089999639681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a498f576297baf%3A0x44f65330fe1b04b9!2sSpotify%20Camp%20Nou!5e0!3m2!1sen!2sus!4v1692205122255!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Columbus Monument', 2, 'Spain', 'Monument', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMOZSb8QwyMRlVduMIYxKMD12winbDZWHXKA&usqp=CAU', 'The Columbus Monument is a 60 m tall monument to Christopher Columbus at the lower end of La Rambla, Barcelona, Catalonia, Spain. It was constructed for the Exposición Universal de Barcelona in honor of Columbus'' first voyage to the Americas.', 'Plaça Portal de la Pau, s/n, 08001 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.920464898744!2d2.1751856764766844!3d41.37581269671245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a256d7bd004b%3A0x2adc0acddfeb6cb7!2sColumbus%20Monument!5e0!3m2!1sen!2sus!4v1692205151832!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Mercado de la Boqueria', 2, 'Spain', 'Plaza', 'https://suitelife.com/wp-content/uploads/2015/12/la-boqueria.jpg', 'The Mercat de Sant Josep de la Boqueria, usually simply referred to as La Boqueria, is a large public market in the Ciutat Vella district of Barcelona, Catalonia, Spain, and one of the city''s foremost tourist landmarks, with an entrance from La Rambla, not far from the Liceu, Barcelona''s opera house.', 'La Rambla, 91, 08001 Barcelona, Spain', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.647443417309!2d2.169010376476885!3d41.3817438963445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a4a2f7b51e5a01%3A0x860ac654dc73add5!2sMercado%20de%20La%20Boqueria!5e0!3m2!1sen!2sus!4v1692205188470!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');


INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Grossmunster', 3, 'Switzerland', 'Church', 'https://9968c6ef49dc043599a5-e151928c3d69a5a4a2d07a8bf3efa90a.ssl.cf2.rackcdn.com/287358-6.jpg', 'The Grossmünster is a Romanesque-style Protestant church in Zurich, Switzerland. It is one of the four major churches in the city. Its congregation forms part of the Evangelical Reformed Church of the Canton of Zurich.', 'Zwinglipl. 7, 8001 Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2702.14457356219!2d8.54147907678247!3d47.370096704278616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479aa0aa49df6165%3A0x491a251494535f10!2sGrossm%C3%BCnster!5e0!3m2!1sen!2sus!4v1692205295894!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Swiss National Museum', 3, 'Switzerland', 'Museum', 'https://image-tc.galaxy.tf/wijpeg-e7um2ngjvkxc7x3ysxayxksg1/landesmuseum-3_standard.jpg?crop=38%2C0%2C587%2C440', 'The Swiss National Museum, part of the Musee Suisse Group, itself affiliated with the Federal Office of Culture, is located in the city of Zurich, Switzerland''s largest city, next to the Hauptbahnhof.', 'Museumstrasse 2, 8001 Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2701.6828923905305!2d8.537967876782853!3d47.379107303658756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47900a091c10852d%3A0xff1df55a58200ecc!2sSwiss%20National%20Museum!5e0!3m2!1sen!2sus!4v1692205326840!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('FIFA Museum', 3, 'Switzerland', 'Museum', 'https://ik.imagekit.io/guidle/tr:h-500,c-at_least,dpr-2.625/e/18/10/e181090c06c3be66ec7e79516182b95978323535_743098576.jpg', 'The FIFA Museum is an association football museum operated by FIFA. The museum is located in Zurich, Switzerland, across town from the FIFA headquarters. It opened on 28 February 2016. The project, costing over SFr500 million, is currently under investigation for "suspected criminal mismanagement".', 'Seestrasse 27, 8002 Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2702.490808514342!2d8.529128376782188!3d47.36333840474374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479009f96ac0ffb3%3A0x153dd44f32fec7ed!2sFIFA%20Museum!5e0!3m2!1sen!2sus!4v1692205367384!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Lindt Home of Chocolate', 3, 'Switzerland', 'Museum', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/00/fe/d8/lindt-home-of-chocolate.jpg?w=1200&h=-1&s=1', 'A towering chocolate fountain, museum exhibits on production & hands-on workshops with chocolatiers.', 'Schokoladenplatz 1, Seestrasse 204, 8802 Kilchberg, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2704.8107740759947!2d8.549044176780265!3d47.31803510785933!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479aa747616a67d5%3A0x5add0a12342aa884!2sLindt%20Home%20of%20Chocolate!5e0!3m2!1sen!2sus!4v1692205401833!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Zurich Opera House', 3, 'Switzerland', 'Theater', 'https://d1qq9lwf5ow8iz.cloudfront.net/live-images-1/ImageDetail_dec1beb9-890b-473b-9d33-cdb2158176d5_Large', 'The Zürich Opera House is an opera house in the Swiss city of Zurich. Located at the Sechselautenplatz, it has been the home of the Zurich Opera since 1891, and also houses the Bernhard-Theater Zurich. It is also home to the Zurich Ballet.', 'opera house Falkenstrasse 1, 8001 Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2702.39079907782!2d8.544150376782245!3d47.365290604609385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479aa75364ad8de7%3A0x514ab43055717896!2sZ%C3%BCrich%20Opera%20House!5e0!3m2!1sen!2sus!4v1692205442418!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Uetliberg Mountain', 3, 'Switzerland', 'Park', 'https://switzerlanding.com/wp-content/uploads/2022/12/uetliberg-winter.png', 'The Uetliberg is a mountain in the Swiss plateau, part of the Albis chain, rising to 870 m. The mountain offers a panoramic view of the entire city of Zurich and the Lake of Zurich, and lies on the boundary between the city of Zurich and the municipalities of Stallikon and Uitikon.', 'Uetliberg 8143 Uetliberg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21625.586248162315!2d8.47145047090279!3d47.349526681102134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479009a1f28b55cd%3A0xf8709cfdfee0b920!2sUetliberg!5e0!3m2!1sen!2sus!4v1692205491745!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Bahnhofstrasse', 3, 'Switzerland', 'Plaza', 'https://www.urtrips.com/wp-content/uploads/2022/10/Bahnhofstrasse-View.jpg', 'Bahnhofstrasse is Zürich''s main downtown street and one of the world''s most expensive and exclusive shopping avenues. In 2011, a study named the Bahnhofstrasse the most expensive street for retail property in Europe, and the third most expensive worldwide. In 2016, the street ranked ninth.', 'Bahnhofstrasse, Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2702.0678038323604!2d8.53602887678254!3d47.37159510417564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47900a072cbc7295%3A0xce1f68e4ec56fc65!2sBahnhofstrasse%2C%208001%20Z%C3%BCrich%2C%20Switzerland!5e0!3m2!1sen!2sus!4v1692205617395!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Kunsthaus Zurich', 3, 'Switzerland', 'Museum', 'https://travel.usnews.com/images/museum_of_art_kunsthaus_zurich_YGIGzsP.jpg', 'The Kunsthaus Zürich is in terms of area the biggest art museum of Switzerland and houses one of the most important art collections in Switzerland, assembled over time by the local art association called Zurcher Kunstgesellschaft.', 'Heimpl. 1/5, 8001 Zurich, Switzerland', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2702.106465594399!2d8.546259876782537!3d47.37084050422765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479aa0ac119a5dc3%3A0xd9cdb23ca2e00ba3!2sKunsthaus%20Z%C3%BCrich!5e0!3m2!1sen!2sus!4v1692205635544!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');


INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Princes Park', 4, 'France', 'Stadium', 'https://lh3.googleusercontent.com/p/AF1QipOYKx0tbgIqHNFrYgif0IYtlBy16OfVzFiXAHsY=s680-w680-h510', 'Parc des Princes is an all-seater football stadium in Paris, France. It is located in the south-west of the French capital, inside the 16th arrondissement, near the Stade Jean-Bouin and Stade Roland Garros', '24 Rue du Commandant Guilbaud, 75016 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.8794001883543!2d2.248177492000642!3d48.84143902798343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e67ac09948a18d%3A0xdd2450406cef2c5c!2sPrinces%20Park!5e0!3m2!1sen!2sus!4v1692205321086!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Sainte-Chapelle', 4, 'France', 'Church', 'https://francetravelblog.com/wp-content/uploads/2020/06/Is-Sainte-Chapelle-Worth-It-960x540.jpg', 'The Sainte-Chapelle is a royal chapel in the Gothic style, within the medieval Palais de la Cité, the residence of the Kings of France until the 14th century, on the Île de la Cité in the River Seine in Paris, France. Construction began sometime after 1238 and the chapel was consecrated on 26 April 1248.', '10 Bd du Palais, 75001 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.148504864862!2d2.3423859767886035!3d48.85537850091806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1fd8767d47%3A0x33f441f9dc242768!2sSainte-Chapelle!5e0!3m2!1sen!2sus!4v1692205350145!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Place de la Concorde', 4, 'France', 'Plaza', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Fountains_in_the_Place_de_la_Concorde_1%2C_Paris_2011.jpg', 'The Place de la Concorde is one of the major public squares in Paris, France. Measuring 7.6 ha in area, it is the largest square in the French capital. It is located in the city''s eighth arrondissement, at the eastern end of the Champs-Élysées.', '75008 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10498.442884660919!2d2.3021812871581937!3d48.8656331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fcd61ae0a01%3A0x18030de10e25ab2c!2sPlace%20de%20la%20Concorde!5e0!3m2!1sen!2sus!4v1692205376948!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Eiffel Tower', 4, 'France', 'Monument', 'https://www.travelandleisure.com/thmb/SPUPzO88ZXq6P4Sm4mC5Xuinoik=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/eiffel-tower-paris-france-EIFFEL0217-6ccc3553e98946f18c893018d5b42bde.jpg', 'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed "La dame de fer", it was constructed from 1887 to 1889 as the centerpiece of the 1889 World''s Fair.', 'Champ de Mars, 5 Av. Anatole France, 75007 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.9914410253436!2d2.2919063767887256!3d48.85837360070728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2964e34e2d%3A0x8ddca9ee380ef7e0!2sEiffel%20Tower!5e0!3m2!1sen!2sus!4v1692205396494!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Arc de Triomphe', 4, 'France', 'Monument', 'https://media.cntraveler.com/photos/5a93281d8087c02669a7dc07/16:9/w_960,c_limit/Arc%20de%20Triomphe_GettyImages-615063063.jpg', 'The Arc de Triomphe de l''Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l''Étoile—the étoile or "star" of the juncture formed by its twelve radiating avenues.', 'Pl. Charles de Gaulle, 75008 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.1826146829235!2d2.292452576789417!3d48.87379519962185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fec70fb1d8f%3A0xd9b5676e112e643d!2sArc%20de%20Triomphe!5e0!3m2!1sen!2sus!4v1692205449777!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Louvre Museum', 4, 'France', 'Museum', 'https://media.architecturaldigest.com/photos/5900cc370638dd3b70018b33/16:9/w_2560%2Cc_limit/Secrets%2520of%2520Louvre%25201.jpg', 'The Louvre, or the Louvre Museum is a national art museum in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city''s 1st arrondissement and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo.', '75001 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.873917698694!2d2.335069076788839!3d48.86061460054963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671d877937b0f%3A0xb975fcfa192f84d4!2sLouvre%20Museum!5e0!3m2!1sen!2sus!4v1692205487172!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Musee de l''Orangerie', 4, 'France', 'Museum', 'https://images.musement.com/cover/0002/62/nympheas-monet-orangerie-jpg_header-161891.jpeg', 'The Musée de l''Orangerie is an art gallery of impressionist and post-impressionist paintings located in the west corner of the Tuileries Garden next to the Place de la Concorde in Paris.', 'Jardin des Tuileries, 75001 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.7228515855586!2d2.3249193768720597!3d48.86349510034665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e2c30000001%3A0xc219db09e1bfefc7!2sTuileries%20Garden!5e0!3m2!1sen!2sus!4v1692228092357!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Luxembourg Gardens', 4, 'France', 'Park', 'https://media.cntraveler.com/photos/5952f9ca9034d21207799151/16:9/w_960,c_limit/jardin-du-luxembourg-GettyImages-151514883.jpg', 'The Jardin du Luxembourg, known in English as the Luxembourg Garden, colloquially referred to as the Jardin du Sénat, is located in the 6th arrondissement of Paris, France. Creation of the garden began in 1612 when Marie de'' Medici, the widow of King Henry IV, constructed the Luxembourg Palace as her new residence.', '75006 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.6284618856243!2d2.3345855767881805!3d48.84622520156203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671db36de687b%3A0x791dd61b089f98b!2sLuxembourg%20Gardens!5e0!3m2!1sen!2sus!4v1692205535797!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Palais Garnier', 4, 'France', 'Theater', 'https://a.cdn-hotels.com/gdcs/production32/d1431/191f1e7d-0e25-4a60-861a-4594c7ae67c9.jpg?impolicy=fcrop&w=800&h=533&q=medium', 'The Palais Garnier, also known as Opéra Garnier, is a 1,979-seat opera house at the Place de l''Opéra in the 9th arrondissement of Paris, France. It was built for the Paris Opera from 1861 to 1875 at the behest of Emperor Napoleon III.', 'Pl. de l''Opéra, 75009 Paris, France', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.278184166168!2d2.329026476789347!3d48.87197319975014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e30d4668339%3A0xa9abf21c286d0767!2sPalais%20Garnier!5e0!3m2!1sen!2sus!4v1692205556943!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');



INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Royal Museums of Fine Arts of Belgium', 5, 'Belgium', 'Museum', 'https://static01.nyt.com/images/2022/09/23/arts/20antwerp-museum-01/20antwerp-museum-01-videoSixteenByNine3000.jpg', 'The Royal Museums of Fine Arts of Belgium are a group of art museums in Brussels, Belgium. They include six museums: the Oldmasters Museum, the Magritte Museum, the Fin-de-Siècle Museum, the Modern Museum, the Antoine Wiertz Museum and the Constantin Meunier Museum.', 'Rue de la Régence 3, 1000 Bruxelles, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.4352837856245!2d4.355604376934433!3d50.84162325912118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4875b01966b%3A0x3337c76a9a44475c!2sRoyal%20Museums%20of%20Fine%20Arts%20of%20Belgium!5e0!3m2!1sen!2sus!4v1692205725168!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Porte de Hal', 5, 'Belgium', 'Museum', 'https://www.hallegatemuseum.be/sites/default/files/styles/default_visual/public/2021-12/light15%20%28c%29kmkg-mrah.jpg?h=4a0b8d8b&itok=t85PpEoH', 'The Halle Gate is a former medieval city gate and the last vestige of the second walls of Brussels, Belgium. Built between 1381 and 1383, it was heavily restored in the 19th century in its current neo-Gothic style by the architect Henri Beyaert.', 'Porte de Hal, Bd du Midi 150, 1000 Bruxelles, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3563.6905502132263!2d4.343974250104011!3d50.83283550350398!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c46f301ea1b5%3A0x279fb6c2c4cbafaa!2sPorte%20de%20Hal!5e0!3m2!1sen!2sus!4v1692205819132!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Church of Our Lady of Victories at the Sablon', 5, 'Belgium', 'Church', 'https://img.itinari.com/activity/images/original/ba217402-cd07-4cb1-9d10-f421c749d7a7-istock-502857057.jpg?ch=DPR&dpr=1&w=1200&h=800&s=5dc7f3b871b2bd937ee608a9c52e52f8', 'The Church of Our Blessed Lady of the Sablon is a Roman Catholic church located in the Sablon/Zavel district, in the historic centre of Brussels, Belgium. It is dedicated to Our Lady of the Sablon.', 'Rue des Sablons, 1000 Bruxelles, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.4993759930344!2d4.3536776769343675!3d50.84043625920715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c47d9940094f%3A0x7da1559642889bdd!2sChurch%20of%20Our%20Lady%20of%20Victories%20at%20the%20Sablon!5e0!3m2!1sen!2sus!4v1692205855689!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Royal Gallery of Saint Hubert', 5, 'Belgium', 'Plaza', 'https://planetofhotels.com/guide/sites/default/files/styles/paragraph__hero_banner__hb_image__1880bp/public/hero_banner/Galeries-Royales-Saint-Hubert.jpg', 'The Royal Saint-Hubert Galleries is an ensemble of three glazed shopping arcades in central Brussels, Belgium. It consists of the King''s Gallery, the Queen''s Gallery and the Princes'' Gallery.', 'Galerie du Roi 5, 1000 Brussel, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.0862781533165!2d4.352675676934705!3d50.84808655865332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c47f6ec755bb%3A0x131e072ac2a7d730!2sRoyal%20Gallery%20of%20Saint%20Hubert!5e0!3m2!1sen!2sus!4v1692205917711!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Grand Place', 5, 'Belgium', 'Plaza', 'https://img.itinari.com/pages/images/original/fd3a2c1b-bccc-4273-845e-026f17130454-istock-cover-sorincolac.jpg?ch=DPR&dpr=2.625&w=1600&s=43b902e2cebacd3eb8a9cc7ce45b3894', 'The Grand-Place or Grote Markt is the central square of Brussels, Belgium. It is surrounded by opulent Baroque guildhalls of the former Guilds of Brussels and two larger edifices; the city''s Flamboyant Town Hall, and the neo-Gothic King''s House or Bread House building, containing the Brussels City Museum.', 'Grote Markt, 1000 Brussel, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.1563625743515!2d4.352435600000007!3d50.8467887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c47f4614f1f1%3A0xb03c355d8fe2cfb6!2sGrand%20Place!5e0!3m2!1sen!2sus!4v1692205978636!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Parc du Cinquantenaire', 5, 'Belgium', 'Park', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/37/8f/c4/cinquantenaire-park.jpg?w=1200&h=-1&s=1', 'The Parc du Cinquantenaire or Jubelpark is a large public, urban park of 30 ha in the easternmost part of the European Quarter in Brussels, Belgium.', '1000 Brussels, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11985.120061725152!2d4.3814584017839895!3d50.839292654047576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c4a429725b5f%3A0xaf02f3faf1c7325a!2sParc%20du%20Cinquantenaire!5e0!3m2!1sen!2sus!4v1692206031465!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('St Michael and St Gudula Cathedral', 5, 'Belgium', 'Church', 'https://www.civitatis.com/f/belgica/bruselas/guia/catedral-bruselas-m.jpg', 'The Cathedral of St. Michael and St. Gudula, usually shortened to the Cathedral of St. Gudula or St. Gudula by locals, is a medieval Roman Catholic cathedral in central Brussels, Belgium.', 'Pl. Sainte-Gudule, 1000 Bruxelles, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.098865657297!2d4.357535176934697!3d50.84785345867003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c37fff7836bd%3A0x84857a9ed38423cd!2sSt%20Michael%20and%20St%20Gudula%20Cathedral%2C%20Brussels!5e0!3m2!1sen!2sus!4v1692206095758!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Atomium', 5, 'Belgium', 'Monument', 'https://cdn.getyourguide.com/img/location/56f138d3802e4.jpeg/68.jpg', 'The Atomium is a landmark modernist building in Brussels, Belgium, originally constructed as the centrepiece of the 1958 Brussels World''s Fair.', 'Pl. de l''Atomium 1, 1020 Bruxelles, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2516.558637496161!2d4.3415547000000005!3d50.8948787!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c3ac00000001%3A0x5293071d68a63709!2sAtomium!5e0!3m2!1sen!2sus!4v1692206162664!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Manneken Pis', 5, 'Belgium', 'Monument', 'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/5c/3b.jpg', 'Manneken Pis is a landmark 55.5 cm bronze fountain sculpture in central Brussels, Belgium, depicting a puer mingens; a naked little boy urinating into the fountain''s basin.', '1000 Brussels, Belgium', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2519.2533283172847!2d4.349988999999991!3d50.84499300000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c479195e3dd1%3A0x17b840a620b0c11f!2sManneken%20Pis!5e0!3m2!1sen!2sus!4v1692206212338!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');



INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Nymphenburg Palace', 6, 'Germany', 'Monument', 'https://palmenhaus.de/wp-content/uploads/2016/06/Fotolia_168397931_L-400x262.jpg', 'The Nymphenburg Palace is a Baroque palace situated in Munich''s western district Neuhausen-Nymphenburg, in Bavaria, southern Germany. Combined with the adjacent Nymphenburg Palace Park it constitutes one of the premier royal palaces of Europe. Its frontal width of 632 m even surpasses Versailles Palace.', 'Schloss Nymphenburg 1, 80638 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2661.508970687011!2d11.500739376757618!3d48.15827104971984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e77cc7fa2682d%3A0x274c5616a51e6d66!2sNymphenburg%20Palace!5e0!3m2!1sen!2sus!4v1692205618895!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Munich Residenz', 6, 'Germany', 'Monument', 'https://media.istockphoto.com/id/1347406501/photo/munich-germany.jpg?s=612x612&w=0&k=20&c=Teqw8ToSS3FQ8lY_PI86p8klqasoei2Vq888vbUUgmY=', 'The Residenz in central Munich is the former royal palace of the Wittelsbach monarchs of Bavaria. The Residenz is the largest city palace in Germany and is today open to visitors for its architecture, room decorations, and displays from the former royal collections.', 'Residenzstrasse 1, 80333 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.363271656792!2d11.576911076756904!3d48.14180135086673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e758c0d7f65ad%3A0xde69d521804afb0f!2sMunich%20Residenz!5e0!3m2!1sen!2sus!4v1692205640696!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Deutsches Museum', 6, 'Germany', 'Museum', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/59/13/07/deutsches-museum.jpg?w=1200&h=-1&s=1', 'The Deutsches Museum in Munich, Germany, is the world''s largest museum of science and technology, with about 28,000 exhibited objects from 50 fields of science and technology. It receives about 1.5 million visitors per year.', 'Museumsinsel 1, 80538 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.9818057660486!2d11.580877276756402!3d48.12987425169693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479ddf63139a50d3%3A0x7a513e5862fc9652!2sDeutsches%20Museum!5e0!3m2!1sen!2sus!4v1692205670707!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('BMW Museum', 6, 'Germany', 'Museum', 'https://www.bmw-m.com/content/dam/bmw/marketBMW_M/common/topics/magazine-article-pool/2022/m-town-at-bmw-welt/m-town-at-bmw-welt-social.jpg', 'The BMW Museum is the corporate museum of BMW history and was established in 1973, shortly after the 1972 Summer Olympics opened. From 2004 to 2008, it was renovated in connection with the construction of the BMW Welt, directly opposite. The museum reopened on 21 June 2008.', 'Am Olympiapark 2, 80809 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2660.545058972561!2d11.555264676758469!3d48.176848798425794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e767c569b4b6b%3A0x95c6ccbd78126988!2sBMW%20Museum!5e0!3m2!1sen!2sus!4v1692205740251!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Alte Pinakothek', 6, 'Germany', 'Museum', 'https://image.wmsm.co/63bd4f456db71b439029a5318147818e/og-image.jpg?quality=80&width=1200&height=630&aspect_ratio=1200%3A630', 'The Alte Pinakothek is an art museum located in the Kunstareal area in Munich, Germany. It is one of the oldest galleries in the world and houses a significant collection of Old Master paintings. The name Alte Pinakothek refers to the time period covered by the collection—from the fourteenth to the eighteenth century.', 'Barer Str. 27, 80333 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.026473125139!2d11.567409776757206!3d48.14829485041454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e75ee8cc069d7%3A0x8158244f94d1c0b7!2sAlte%20Pinakothek!5e0!3m2!1sen!2sus!4v1692205775077!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Asamkirche', 6, 'Germany', 'Church', 'https://img.atlasobscura.com/WRJjqBUFdYMTxUWJugumHGnm2NLYszs9CecbF1azzwM/rt:fit/h:390/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy82Mjk5/MGIzNS1iMmFmLTRh/ZDAtODU4MS1mM2Qy/ZTRjMDM2YjBiODk4/MTc0YjZhYzc5YTc5/MjVfNDExRUY5RTEt/MEU3Qi00QUY1LThF/NzEtQkNDQTE1M0ZE/NTZCLmpwZWc.jpg', 'St. Johann Nepomuk, better known as the Asam Church, is a Baroque church in Munich, southern Germany. It was built from 1733 to 1746 by a pair of brothers, sculptor Egid Quirin Asam and painter Cosmas Damian Asam, as their private church.', 'Sendlinger Str. 32, 80331 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.7074829542644!2d11.567066276756632!3d48.13516425132873!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479ddf5f63fba3c9%3A0xa5ebd6eabef33b40!2sAsamkirche!5e0!3m2!1sen!2sus!4v1692205805722!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Olympiapark Munchen', 6, 'Germany', 'Park', 'https://www.urtrips.com/wp-content/uploads/2022/03/olympia-park-munich1.jpg', 'The Olympiapark in Munich, Germany, is an Olympic Park which was constructed for the 1972 Summer Olympics. Located in the Oberwiesenfeld neighborhood of Munich, the Park continues to serve as a venue for cultural, social, and religious events, such as events of worship. It includes a contemporary carillon.', 'Spiridon-Louis-Ring 21, 80809 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2660.616704003521!2d11.549222076758333!3d48.17546814852206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e7663383eb533%3A0xb139a4810a41dd4b!2sOlympiapark%20M%C3%BCnchen!5e0!3m2!1sen!2sus!4v1692205829511!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Allianz Arena', 6, 'Germany', 'Stadium', 'https://media.istockphoto.com/id/1080845594/photo/allianz-arena.jpg?s=612x612&w=0&k=20&c=NSMjm0HGLwco4KidC5QHaQhONx7GmS05k7NHcV0SJFc=', 'Allianz Arena is a football stadium in Munich, Bavaria, Germany, with a 70,000 seating capacity for international matches and 75,000 for domestic matches. Widely known for its exterior of inflated ETFE plastic panels, it is the first stadium in the world with a full colour changing exterior.', 'Werner-Heisenberg-Allee 25, 80939 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2658.367346752027!2d11.62213667676031!3d48.218800645502625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e7385128a251f%3A0xed4d60428e32c423!2sAllianz%20Arena!5e0!3m2!1sen!2sus!4v1692205847406!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');
INSERT INTO landmarks (landmark_name, city_id, country, venue_type, image, description, address, map) VALUES ('Marienplatz', 6, 'Germany', 'Plaza', 'https://www.introducingmunich.com/f/alemania/munich/guia/marienplatz-m.jpg', 'Marienplatz is a central square in the city centre of Munich, Germany. It has been the city''s main square since 1158.', 'Marienplatz, 80331 Munchen, Germany', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.5917056938815!2d11.572873576756692!3d48.1373967511732!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47a84e248d37632d%3A0xdead51b35f0e0bb3!2sMarienplatz!5e0!3m2!1sen!2sus!4v1692205877470!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade');






INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Sunday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (1, 'Saturday', '9', '19');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Sunday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (2, 'Saturday', '9', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Sunday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Monday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Tuesday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Wednesday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Thursday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Friday', '9', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (3, 'Saturday', '9', '16');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Monday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Tuesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Wednesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Thursday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Friday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (4, 'Saturday', '7', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (5, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Sunday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Monday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Tuesday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Wednesday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Thursday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Friday', '9', '21');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (6, 'Saturday', '9', '21');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Sunday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Monday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Tuesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Friday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (7, 'Saturday', '9', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (8, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (9, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Sunday', '11', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Wednesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Thursday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Friday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (10, 'Saturday', '9', '19');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Sunday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Monday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Tuesday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Wednesday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Thursday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Friday', '8', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (11, 'Saturday', '8', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Sunday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Tuesday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Wednesday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Thursday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Friday', '9', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Saturday', '9', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (12, 'Sunday', '10', '15');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Tuesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Wednesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Thursday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Friday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (13, 'Saturday', '10', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Sunday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Monday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Tuesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Wednesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Friday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (14, 'Saturday', '10', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Sunday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Monday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Tuesday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Wednesday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Thursday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Friday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (15, 'Saturday', '10', '22');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Sunday', '10', '15');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Monday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Tuesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Wednesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Friday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (16, 'Saturday', '10', '15');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Sunday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Monday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Tuesday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Wednesday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Thursday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Friday', '9', '14');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (17, 'Saturday', '9', '14');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Monday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Wednesday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Thursday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Friday', '8', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (18, 'Saturday', '8', '20');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Sunday', '13', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Monday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Wednesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (19, 'Saturday', '10', '18');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (20, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Sunday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Wednesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (21, 'Saturday', '10', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Sunday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Monday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Tuesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Wednesday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Thursday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Friday', '10', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (22, 'Saturday', '10', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Monday', '12', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Tuesday', '12', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Wednesday', '12', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Thursday', '12', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Friday', '12', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (23, 'Saturday', '12', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (24, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (25, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Sunday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Wednesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Thursday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (26, 'Saturday', '10', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Monday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Thursday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (27, 'Saturday', '10', '17');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Sunday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Monday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Tuesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Friday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (28, 'Saturday', '9', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (29, 'Saturday', '0', '24');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Sunday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Monday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Tuesday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Wednesday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Thursday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Friday', '10', '23');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (30, 'Saturday', '10', '23');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Sunday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Monday', '14', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Tuesday', '11', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Wednesday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Thursday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Friday', '10', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (31, 'Saturday', '10', '22');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Sunday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Monday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Wednesday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Thursday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Friday', '9', '22');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (32, 'Saturday', '9', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Sunday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Monday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Wednesday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Thursday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Friday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (33, 'Saturday', '9', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Sunday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Monday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Tuesday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Wednesday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Thursday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Friday', '8', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (34, 'Saturday', '8', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Monday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Thursday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (35, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Sunday', '11', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Thursday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (36, 'Saturday', '11', '18');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Monday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (37, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Sunday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Monday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Wednesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (38, 'Saturday', '9', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (39, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (40, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Tuesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Friday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (41, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Sunday', '14', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Monday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Tuesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Wednesday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Thursday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Friday', '7', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (42, 'Saturday', '7', '15');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Sunday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Monday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Wednesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (43, 'Saturday', '10', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Thursday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (44, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Sunday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Monday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Tuesday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Wednesday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Thursday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Friday', '10', '16');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (45, 'Saturday', '10', '16');

INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Sunday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Monday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Tuesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Wednesday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Thursday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Friday', '10', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (46, 'Saturday', '10', '17');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Sunday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Monday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Tuesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Wednesday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Thursday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Friday', '9', '17');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (47, 'Saturday', '9', '17');



INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Sunday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Wednesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (48, 'Saturday', '10', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Sunday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Tuesday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Wednesday', '10', '20');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Thursday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Friday', '10', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (49, 'Saturday', '10', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (50, 'Sunday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (50, 'Monday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (50, 'Tuesday', '9', '19');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (50, 'Saturday', '9', '19');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (51, 'Saturday', '0', '24');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Sunday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Monday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Tuesday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Wednesday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Thursday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Friday', '9', '18');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (52, 'Saturday', '9', '18');


INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Sunday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Monday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Tuesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Wednesday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Thursday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Friday', '0', '24');
INSERT INTO schedule (landmark_id, day_of_operation, open_time, close_time) VALUES (53, 'Saturday', '0', '24');

INSERT INTO itinerary (user_id, name, starting_point, date) VALUES (1, 'Rome Itinerary', 'Via Milano, 42, 00184 Roma RM, Italy', '2023-08-21');

INSERT INTO itinerary_landmarks(itinerary_id, landmark_id, itinerary_order) VALUES (1, 1, 1);
INSERT INTO itinerary_landmarks(itinerary_id, landmark_id, itinerary_order) VALUES (1, 5, 3);
INSERT INTO itinerary_landmarks(itinerary_id, landmark_id, itinerary_order) VALUES (1, 7, 4);
INSERT INTO itinerary_landmarks(itinerary_id, landmark_id, itinerary_order) VALUES (1, 2, 5);
INSERT INTO itinerary_landmarks(itinerary_id, landmark_id, itinerary_order) VALUES (1, 9, 2);

INSERT INTO rating (user_id, landmark_id, thumbs_up) VALUES (1, 1, true);
INSERT INTO rating (user_id, landmark_id, thumbs_up) VALUES (1, 3, false);
INSERT INTO rating (user_id, landmark_id, thumbs_up) VALUES (1, 2, true);

COMMIT TRANSACTION;
