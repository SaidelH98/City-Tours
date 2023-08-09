BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO city (city_name, city_desc, city_img) VALUES ('Rome', 'Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.', 'https://cdn.mos.cms.futurecdn.net/BiNbcY5fXy9Lra47jqHKGK.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Barcelona', 'Barcelona, the cosmopolitan capital of Spain’s Catalonia region, is known for its art and architecture. The fantastical Sagrada Família church and other modernist landmarks designed by Antoni Gaudí dot the city. Museu Picasso and Fundació Joan Miró feature modern art by their namesakes. City history museum MUHBA, includes several Roman archaeological sites.', 'https://a.cdn-hotels.com/gdcs/production172/d1185/1a0e1853-0ef0-4d17-b643-6bc98e49c867.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Zurich', 'The city of Zurich, a global center for banking and finance, lies at the north end of Lake Zurich in northern Switzerland. The picturesque lanes of the central Altstadt (Old Town), on either side of the Limmat River, reflect its pre-medieval history. Waterfront promenades like the Limmatquai follow the river toward the 17th-century Rathaus (town hall).', 'https://switzerlanding.com/wp-content/uploads/2022/12/uetliberg-winter.png');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Paris', 'Paris, France''s capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.', 'https://www.travelandleisure.com/thmb/SPUPzO88ZXq6P4Sm4mC5Xuinoik=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/eiffel-tower-paris-france-EIFFEL0217-6ccc3553e98946f18c893018d5b42bde.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Brussels', 'The City of Brussels is the largest municipality and historical centre of the Brussels-Capital Region, as well as the capital of the Flemish Region and Belgium. The City of Brussels is also the administrative centre of the European Union, as it hosts a number of principal EU institutions in its European Quarter.', 'https://agendabrussels2.imgix.net/83f32c11beb6a3ad9e8ae72d250f6a38d7049025.jpg');
INSERT INTO city (city_name, city_desc, city_img) VALUES ('Munich', 'Munich, Bavaria’s capital, is home to centuries-old buildings and numerous museums. The city is known for its annual Oktoberfest celebration and its beer halls, including the famed Hofbräuhaus, founded in 1589. In the Altstadt (Old Town), central Marienplatz square contains landmarks such as Neo-Gothic Neues Rathaus (town hall), with a popular glockenspiel show that chimes and reenacts stories from the 16th century.', 'https://palmenhaus.de/wp-content/uploads/2016/06/Fotolia_168397931_L-400x262.jpg');


INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('The Colosseum', 1, 'Italy', 'Museum', 'https://cdn.mos.cms.futurecdn.net/BiNbcY5fXy9Lra47jqHKGK.jpg', 'Packed with ancient history, the Colosseum is one of the most recognized landmarks and ruins in Rome. Dating back over 2,000 years it was once the ground for legendary gladiator contests that would entertain the masses.', 'Piazza del Colosseo, 1, 00184 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Roman Forum', 1, 'Italy', 'Museum', 'https://images.pexels.com/photos/17057107/pexels-photo-17057107/free-photo-of-view-of-the-roman-forum-in-rome-italy.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'The Roman Forum is a rectangular forum surrounded by the ruins of several important ancient government buildings at the center of the city of Rome. Citizens of the ancient city referred to this space, originally a marketplace, as the Forum Magnum, or simply the Forum.', 'Via della Salara Vecchia, 5/6, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Sistine Chapel', 1, 'Italy', 'Church', 'https://m.museivaticani.va/content/dam/museivaticani/immagini/collezioni/musei/cappella_sistina/00_00_Cappella_Sistina/_jcr_content/renditions/original.png', 'The Sistine Chapel is a chapel in the Apostolic Palace, the pope"s official residence in Vatican City. Originally known as the Cappella Magna, the chapel takes its name from Pope Sixtus IV, who had it built between 1473 and 1481.', '00120 Vatican City');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('St. Peter''s Basilica', 1, 'Italy', 'Church', 'https://cdn.getyourguide.com/img/tour/634d4d773519a.jpeg/148.jpg', 'The Papal Basilica of Saint Peter in the Vatican, or simply Saint Peter"s Basilica, is a church built in the Renaissance style located in Vatican City, the papal enclave that is within the city of Rome, Italy.', 'Piazza San Pietro, 00120 Città del Vaticano, Vatican City');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Piazza Navona', 1, 'Italy', 'Plaza', 'https://images.pexels.com/photos/12268449/pexels-photo-12268449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Piazza Navona is a public open space in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium. The ancient Romans went there to watch the agones, and hence it was known as "Circus Agonalis".', 'Piazza Navona, 00186 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Piazza del Popolo', 1, 'Italy', 'Plaza', 'https://www.italia.it/content/dam/tdh/en/destinations/lazio/roma/piazza-del-popolo/media/2480X1000_piazza_del_popolo_destination.jpg', 'Piazza del Popolo is a large urban square in Rome. The name in modern Italian literally means "People"s Square", but historically it derives from the poplars after which the church of Santa Maria del Popolo, in the northeast corner of the piazza, takes its name.', 'Piazza del Popolo, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Baths of Caracalla', 1, 'Italy', 'Museum', 'https://www.wantedinrome.com/i/preview/storage/uploads/2019/04/baths-of-caracalla-rome.jpg', 'The Baths of Caracalla in Rome, Italy, were the city"s second largest Roman public baths, or thermae, after the Baths of Diocletian. The baths were likely built between AD 212 and 216/217, during the reigns of emperors Septimius Severus and Caracalla.', 'Viale delle Terme di Caracalla, 00153 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Trevi Fountain', 1, 'Italy', 'Monument', 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_600,h_400,c_fit/ymt-web/2023/01/600x400-levi-fountain-rome-body.jpg', 'The Trevi Fountain is an 18th-century fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini in 1762 and several others.', 'Piazza di Trevi, 00187 Roma RM, Italy');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Spanish Steps', 1, 'Italy', 'Monument', 'https://images.unsplash.com/photo-1636804907035-8ae6360f1d4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80', 'The Spanish Steps in Rome, Italy, climb a steep slope between the Piazza di Spagna at the base and Piazza Trinità dei Monti, dominated by the Trinità dei Monti church, at the top.', 'Piazza di Spagna, 00187 Roma RM, Italy');


INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('La Sagrada Familia', 2, 'Spain', 'Church', 'https://media.istockphoto.com/id/1130443789/photo/sagrada-familia-basilica-in-barcelona.jpg?s=612x612&w=0&k=20&c=bw6WVHnaiwXxAFllDVujJanDQ3eayUt5ZQf8Ij75jVk=', 'The Basílica i Temple Expiatori de la Sagrada Família, shortened as the Sagrada Família, is an unfinished church in the Eixample district of Barcelona, Catalonia, Spain. It is the largest unfinished Catholic church in the world', 'C/ de Mallorca, 401, 08013 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Cathedral of Barcelona', 2, 'Spain', 'Church', 'https://a.cdn-hotels.com/gdcs/production172/d1185/1a0e1853-0ef0-4d17-b643-6bc98e49c867.jpg', 'The Cathedral of the Holy Cross and Saint Eulalia, also known as Barcelona Cathedral, is the Gothic cathedral and seat of the Archbishop of Barcelona, Catalonia, Spain. The cathedral was constructed from the thirteenth to fifteenth centuries, with the principal work done in the fourteenth century.', 'Pla de la Seu, s/n, 08002 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Picasso Museum', 2, 'Spain', 'Museum', 'https://www.travelforbliss.com/wp-content/uploads/2021/06/IMG_0966.jpg', 'The Museu Picasso is an art museum in Barcelona, in Catalonia, Spain. It houses an extensive collection of artworks by the twentieth-century Spanish artist Pablo Picasso, with a total of 4251 of his works.', 'C/ de Montcada, 15-23, 08003 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Museu Nacional d''Art de Catalunya', 2, 'Spain', 'Museum', 'https://cdn-imgix.headout.com/mircobrands-content/image/51ea3cf2a3306830b0005424dbc0e3bb-AdobeStock_467226755.jpeg', 'The Museu Nacional d''Art de Catalunya, abbreviated as MNAC, is a museum of Catalan visual art located in Barcelona, Catalonia, Spain.', 'Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Park Guell', 2, 'Spain', 'Park', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/73206731.jpg?k=1c528bf33d1226c704ed157b84b3b0d0255eceb92df62fc33e892c6c02793fc5&o=&hp=1', 'Park Güell is a privatized park system composed of gardens and architectural elements located on Carmel Hill, in Barcelona, Catalonia, Spain. Carmel Hill belongs to the mountain range of Collserola – the Parc del Carmel is located on the northern face.', '08024 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Ciutadella Park', 2, 'Spain', 'Park', 'https://media.cntraveler.com/photos/5a7df721b8ebbd42565cf7c9/16:9/w_2560,c_limit/Parc-de-la-Ciutadella__2018_GettyImages-896371664.jpg', 'The Parc de la Ciutadella is a park on the northeastern edge of Ciutat Vella, Barcelona, Catalonia, Spain. For decades following its creation in the mid-19th century, this park was the city''s only green space.', 'Passeig de Picasso, 21, 08003 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Spotify Camp Nou', 2, 'Spain', 'Stadium', 'https://www.fcbarcelona.com/photo-resources/2022/07/01/6e74c236-1470-4388-b199-53f5ba87fb36/_GP17665.jpg?width=1200&height=750', 'Camp Nou, branded as Spotify Camp Nou for sponsorship reasons, is the home of La Liga club FC Barcelona since its completion in 1957. With a current seating capacity of 99,354, it is the stadium with the largest capacity in Spain and Europe, and the third largest football stadium in the world.', 'C/ d''Arístides Maillol, 12, 08028 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Columbus Monument', 2, 'Spain', 'Monument', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMOZSb8QwyMRlVduMIYxKMD12winbDZWHXKA&usqp=CAU', 'The Columbus Monument is a 60 m tall monument to Christopher Columbus at the lower end of La Rambla, Barcelona, Catalonia, Spain. It was constructed for the Exposición Universal de Barcelona in honor of Columbus'' first voyage to the Americas.', 'Plaça Portal de la Pau, s/n, 08001 Barcelona, Spain');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Mercado de la Boqueria', 2, 'Spain', 'Plaza', 'https://suitelife.com/wp-content/uploads/2015/12/la-boqueria.jpg', 'The Mercat de Sant Josep de la Boqueria, usually simply referred to as La Boqueria, is a large public market in the Ciutat Vella district of Barcelona, Catalonia, Spain, and one of the city''s foremost tourist landmarks, with an entrance from La Rambla, not far from the Liceu, Barcelona''s opera house.', 'La Rambla, 91, 08001 Barcelona, Spain');


INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Grossmunster', 3, 'Switzerland', 'Church', 'https://storchen.ch/images/content/37349/image/rico-reutimann-xxar3uzyizy-unsplash_detail.jpg', 'The Grossmünster is a Romanesque-style Protestant church in Zürich, Switzerland. It is one of the four major churches in the city. Its congregation forms part of the Evangelical Reformed Church of the Canton of Zürich.', 'Zwinglipl. 7, 8001 Zürich, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Swiss National Museum', 3, 'Switzerland', 'Museum', 'https://images.divisare.com/images/f_auto,q_auto,w_600/v1540759332/e8b8swbdi36qr7pfce0c/christ-gantenbein-august-fischer-swiss-national-museum-zurich.jpg', 'The Swiss National Museum, part of the Musée Suisse Group, itself affiliated with the Federal Office of Culture, is located in the city of Zurich, Switzerland''s largest city, next to the Hauptbahnhof.', 'Museumstrasse 2, 8001 Zürich, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('FIFA Museum', 3, 'Switzerland', 'Museum', 'https://ik.imagekit.io/guidle/tr:h-500,c-at_least,dpr-2.625/e/18/10/e181090c06c3be66ec7e79516182b95978323535_743098576.jpg', 'The FIFA Museum is an association football museum operated by FIFA. The museum is located in Zürich, Switzerland, across town from the FIFA headquarters. It opened on 28 February 2016. The project, costing over SFr500 million, is currently under investigation for "suspected criminal mismanagement".', 'Seestrasse 27, 8002 Zürich, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Lindt Home of Chocolate', 3, 'Switzerland', 'Museum', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/00/fe/d8/lindt-home-of-chocolate.jpg?w=1200&h=-1&s=1', 'A towering chocolate fountain, museum exhibits on production & hands-on workshops with chocolatiers.', 'Schokoladenplatz 1, Seestrasse 204, 8802 Kilchberg, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Zurich Opera House', 3, 'Switzerland', 'Theater', 'https://d1qq9lwf5ow8iz.cloudfront.net/live-images-1/ImageDetail_dec1beb9-890b-473b-9d33-cdb2158176d5_Large', 'The Zürich Opera House is an opera house in the Swiss city of Zürich. Located at the Sechseläutenplatz, it has been the home of the Zürich Opera since 1891, and also houses the Bernhard-Theater Zürich. It is also home to the Zürich Ballet.', 'opera house Falkenstrasse 1, 8001 Zürich, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Uetliberg Mountain', 3, 'Switzerland', 'Park', 'https://switzerlanding.com/wp-content/uploads/2022/12/uetliberg-winter.png', 'The Uetliberg is a mountain in the Swiss plateau, part of the Albis chain, rising to 870 m. The mountain offers a panoramic view of the entire city of Zürich and the Lake of Zurich, and lies on the boundary between the city of Zürich and the municipalities of Stallikon and Uitikon.', 'Uetliberg 8143 Uetliberg');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Bahnhofstrasse', 3, 'Switzerland', 'Plaza', 'https://www.urtrips.com/wp-content/uploads/2022/10/Bahnhofstrasse-View.jpg', 'Bahnhofstrasse is Zürich''s main downtown street and one of the world''s most expensive and exclusive shopping avenues. In 2011, a study named the Bahnhofstrasse the most expensive street for retail property in Europe, and the third most expensive worldwide. In 2016, the street ranked ninth.', 'Bahnhofstrasse, Zurich, Switzerland');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Kunsthaus Zurich', 3, 'Switzerland', 'Museum', 'https://travel.usnews.com/images/museum_of_art_kunsthaus_zurich_YGIGzsP.jpg', 'The Kunsthaus Zürich is in terms of area the biggest art museum of Switzerland and houses one of the most important art collections in Switzerland, assembled over time by the local art association called Zürcher Kunstgesellschaft.', 'Heimpl. 1/5, 8001 Zürich, Switzerland');


INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Princes Park', 4, 'France', 'Stadium', 'https://lh3.googleusercontent.com/p/AF1QipOYKx0tbgIqHNFrYgif0IYtlBy16OfVzFiXAHsY=s680-w680-h510', 'Parc des Princes is an all-seater football stadium in Paris, France. It is located in the south-west of the French capital, inside the 16th arrondissement, near the Stade Jean-Bouin and Stade Roland Garros', '24 Rue du Commandant Guilbaud, 75016 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Sainte-Chapelle', 4, 'France', 'Church', 'https://francetravelblog.com/wp-content/uploads/2020/06/Is-Sainte-Chapelle-Worth-It-960x540.jpg', 'The Sainte-Chapelle is a royal chapel in the Gothic style, within the medieval Palais de la Cité, the residence of the Kings of France until the 14th century, on the Île de la Cité in the River Seine in Paris, France. Construction began sometime after 1238 and the chapel was consecrated on 26 April 1248.', '10 Bd du Palais, 75001 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Place de la Concorde', 4, 'France', 'Plaza', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Fountains_in_the_Place_de_la_Concorde_1%2C_Paris_2011.jpg', 'The Place de la Concorde is one of the major public squares in Paris, France. Measuring 7.6 ha in area, it is the largest square in the French capital. It is located in the city''s eighth arrondissement, at the eastern end of the Champs-Élysées.', '75008 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Eiffel Tower', 4, 'France', 'Monument', 'https://www.travelandleisure.com/thmb/SPUPzO88ZXq6P4Sm4mC5Xuinoik=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/eiffel-tower-paris-france-EIFFEL0217-6ccc3553e98946f18c893018d5b42bde.jpg', 'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed "La dame de fer", it was constructed from 1887 to 1889 as the centerpiece of the 1889 World''s Fair.', 'Champ de Mars, 5 Av. Anatole France, 75007 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Arc de Triomphe', 4, 'France', 'Monument', 'https://media.cntraveler.com/photos/5a93281d8087c02669a7dc07/16:9/w_960,c_limit/Arc%20de%20Triomphe_GettyImages-615063063.jpg', 'The Arc de Triomphe de l''Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l''Étoile—the étoile or "star" of the juncture formed by its twelve radiating avenues.', 'Pl. Charles de Gaulle, 75008 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Louvre Museum', 4, 'France', 'Museum', 'https://media.architecturaldigest.com/photos/5900cc370638dd3b70018b33/16:9/w_2560%2Cc_limit/Secrets%2520of%2520Louvre%25201.jpg', 'The Louvre, or the Louvre Museum is a national art museum in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city''s 1st arrondissement and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo.', '75001 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Musee de l''Orangerie', 4, 'France', 'Museum', 'https://images.musement.com/cover/0002/62/nympheas-monet-orangerie-jpg_header-161891.jpeg', 'The Musée de l''Orangerie is an art gallery of impressionist and post-impressionist paintings located in the west corner of the Tuileries Garden next to the Place de la Concorde in Paris.', 'Jardin des Tuileries, 75001 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Luxembourg Gardens', 4, 'France', 'Park', 'https://media.cntraveler.com/photos/5952f9ca9034d21207799151/16:9/w_960,c_limit/jardin-du-luxembourg-GettyImages-151514883.jpg', 'The Jardin du Luxembourg, known in English as the Luxembourg Garden, colloquially referred to as the Jardin du Sénat, is located in the 6th arrondissement of Paris, France. Creation of the garden began in 1612 when Marie de'' Medici, the widow of King Henry IV, constructed the Luxembourg Palace as her new residence.', '75006 Paris, France');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Palais Garnier', 4, 'France', 'Theater', 'https://a.cdn-hotels.com/gdcs/production32/d1431/191f1e7d-0e25-4a60-861a-4594c7ae67c9.jpg?impolicy=fcrop&w=800&h=533&q=medium', 'The Palais Garnier, also known as Opéra Garnier, is a 1,979-seat opera house at the Place de l''Opéra in the 9th arrondissement of Paris, France. It was built for the Paris Opera from 1861 to 1875 at the behest of Emperor Napoleon III.', 'Pl. de l''Opéra, 75009 Paris, France');



INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Royal Museums of Fine Arts of Belgium', 5, 'Belgium', 'Museum', 'https://static01.nyt.com/images/2022/09/23/arts/20antwerp-museum-01/20antwerp-museum-01-videoSixteenByNine3000.jpg', 'The Royal Museums of Fine Arts of Belgium are a group of art museums in Brussels, Belgium. They include six museums: the Oldmasters Museum, the Magritte Museum, the Fin-de-Siècle Museum, the Modern Museum, the Antoine Wiertz Museum and the Constantin Meunier Museum.', 'Rue de la Régence 3, 1000 Bruxelles, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Porte de Hal', 5, 'Belgium', 'Museum', 'https://www.hallegatemuseum.be/sites/default/files/styles/default_visual/public/2021-12/light15%20%28c%29kmkg-mrah.jpg?h=4a0b8d8b&itok=t85PpEoH', 'The Halle Gate is a former medieval city gate and the last vestige of the second walls of Brussels, Belgium. Built between 1381 and 1383, it was heavily restored in the 19th century in its current neo-Gothic style by the architect Henri Beyaert.', 'Porte de Hal, Bd du Midi 150, 1000 Bruxelles, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Church of Our Lady of Victories at the Sablon', 5, 'Belgium', 'Church', 'https://img.itinari.com/activity/images/original/ba217402-cd07-4cb1-9d10-f421c749d7a7-istock-502857057.jpg?ch=DPR&dpr=1&w=1200&h=800&s=5dc7f3b871b2bd937ee608a9c52e52f8', 'The Church of Our Blessed Lady of the Sablon is a Roman Catholic church located in the Sablon/Zavel district, in the historic centre of Brussels, Belgium. It is dedicated to Our Lady of the Sablon.', 'Rue des Sablons, 1000 Bruxelles, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Royal Gallery of Saint Hubert', 5, 'Belgium', 'Plaza', 'https://planetofhotels.com/guide/sites/default/files/styles/paragraph__hero_banner__hb_image__1880bp/public/hero_banner/Galeries-Royales-Saint-Hubert.jpg', 'The Royal Saint-Hubert Galleries is an ensemble of three glazed shopping arcades in central Brussels, Belgium. It consists of the King''s Gallery, the Queen''s Gallery and the Princes'' Gallery.', 'Galerie du Roi 5, 1000 Brussel, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Grand Place', 5, 'Belgium', 'Plaza', 'https://img.itinari.com/pages/images/original/fd3a2c1b-bccc-4273-845e-026f17130454-istock-cover-sorincolac.jpg?ch=DPR&dpr=2.625&w=1600&s=43b902e2cebacd3eb8a9cc7ce45b3894', 'The Grand-Place or Grote Markt is the central square of Brussels, Belgium. It is surrounded by opulent Baroque guildhalls of the former Guilds of Brussels and two larger edifices; the city''s Flamboyant Town Hall, and the neo-Gothic King''s House or Bread House building, containing the Brussels City Museum.', 'Grote Markt, 1000 Brussel, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Parc du Cinquantenaire', 5, 'Belgium', 'Park', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/37/8f/c4/cinquantenaire-park.jpg?w=1200&h=-1&s=1', 'The Parc du Cinquantenaire or Jubelpark is a large public, urban park of 30 ha in the easternmost part of the European Quarter in Brussels, Belgium.', '1000 Brussels, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('St Michael and St Gudula Cathedral', 5, 'Belgium', 'Church', 'https://www.civitatis.com/f/belgica/bruselas/guia/catedral-bruselas-m.jpg', 'The Cathedral of St. Michael and St. Gudula, usually shortened to the Cathedral of St. Gudula or St. Gudula by locals, is a medieval Roman Catholic cathedral in central Brussels, Belgium.', 'Pl. Sainte-Gudule, 1000 Bruxelles, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Atomium', 5, 'Belgium', 'Monument', 'https://agendabrussels2.imgix.net/83f32c11beb6a3ad9e8ae72d250f6a38d7049025.jpg', 'The Atomium is a landmark modernist building in Brussels, Belgium, originally constructed as the centrepiece of the 1958 Brussels World''s Fair.', 'Pl. de l''Atomium 1, 1020 Bruxelles, Belgium');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Manneken Pis', 5, 'Belgium', 'Monument', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/c0/6a/2a/img-20170129-122953-986.jpg?w=1200&h=-1&s=1', 'Manneken Pis is a landmark 55.5 cm bronze fountain sculpture in central Brussels, Belgium, depicting a puer mingens; a naked little boy urinating into the fountain''s basin.', '1000 Brussels, Belgium');



INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Nymphenburg Palace', 6, 'Germany', 'Monument', 'https://palmenhaus.de/wp-content/uploads/2016/06/Fotolia_168397931_L-400x262.jpg', 'The Nymphenburg Palace is a Baroque palace situated in Munich''s western district Neuhausen-Nymphenburg, in Bavaria, southern Germany. Combined with the adjacent Nymphenburg Palace Park it constitutes one of the premier royal palaces of Europe. Its frontal width of 632 m even surpasses Versailles Palace.', 'Schloss Nymphenburg 1, 80638 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Munich Residenz', 6, 'Germany', 'Monument', 'https://media.istockphoto.com/id/1347406501/photo/munich-germany.jpg?s=612x612&w=0&k=20&c=Teqw8ToSS3FQ8lY_PI86p8klqasoei2Vq888vbUUgmY=', 'The Residenz in central Munich is the former royal palace of the Wittelsbach monarchs of Bavaria. The Residenz is the largest city palace in Germany and is today open to visitors for its architecture, room decorations, and displays from the former royal collections.', 'Residenzstrasse 1, 80333 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Deutsches Museum', 6, 'Germany', 'Museum', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/59/13/07/deutsches-museum.jpg?w=1200&h=-1&s=1', 'The Deutsches Museum in Munich, Germany, is the world''s largest museum of science and technology, with about 28,000 exhibited objects from 50 fields of science and technology. It receives about 1.5 million visitors per year.', 'Museumsinsel 1, 80538 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('BMW Museum', 6, 'Germany', 'Museum', 'https://www.bmw-m.com/content/dam/bmw/marketBMW_M/common/topics/magazine-article-pool/2022/m-town-at-bmw-welt/m-town-at-bmw-welt-social.jpg', 'The BMW Museum is the corporate museum of BMW history and was established in 1973, shortly after the 1972 Summer Olympics opened. From 2004 to 2008, it was renovated in connection with the construction of the BMW Welt, directly opposite. The museum reopened on 21 June 2008.', 'Am Olympiapark 2, 80809 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Alte Pinakothek', 6, 'Germany', 'Museum', 'https://image.wmsm.co/63bd4f456db71b439029a5318147818e/og-image.jpg?quality=80&width=1200&height=630&aspect_ratio=1200%3A630', 'The Alte Pinakothek is an art museum located in the Kunstareal area in Munich, Germany. It is one of the oldest galleries in the world and houses a significant collection of Old Master paintings. The name Alte Pinakothek refers to the time period covered by the collection—from the fourteenth to the eighteenth century.', 'Barer Str. 27, 80333 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Asamkirche', 6, 'Germany', 'Church', 'https://media.istockphoto.com/id/1340058651/photo/asam-church-munich-bavaria-germany.jpg?s=612x612&w=0&k=20&c=rxkTLEqlVxC_0mhWMwZZnUvkJTGFj7r_Jx6W3Saj0Ck=', 'St. Johann Nepomuk, better known as the Asam Church, is a Baroque church in Munich, southern Germany. It was built from 1733 to 1746 by a pair of brothers, sculptor Egid Quirin Asam and painter Cosmas Damian Asam, as their private church.', 'Sendlinger Str. 32, 80331 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Olympiapark Munchen', 6, 'Germany', 'Park', 'https://www.munich.travel/var/ger_muc/storage/images/_aliases/image_gallery_main/3/9/5/8/78593-1-ger-DE/olympiapark-olympiaturm-75080341-500px-sanjin-kusan-3000.jpg', 'The Olympiapark in Munich, Germany, is an Olympic Park which was constructed for the 1972 Summer Olympics. Located in the Oberwiesenfeld neighborhood of Munich, the Park continues to serve as a venue for cultural, social, and religious events, such as events of worship. It includes a contemporary carillon.', 'Spiridon-Louis-Ring 21, 80809 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Allianz Arena', 6, 'Germany', 'Stadium', 'https://media.istockphoto.com/id/1080845594/photo/allianz-arena.jpg?s=612x612&w=0&k=20&c=NSMjm0HGLwco4KidC5QHaQhONx7GmS05k7NHcV0SJFc=', 'Allianz Arena is a football stadium in Munich, Bavaria, Germany, with a 70,000 seating capacity for international matches and 75,000 for domestic matches. Widely known for its exterior of inflated ETFE plastic panels, it is the first stadium in the world with a full colour changing exterior.', 'Werner-Heisenberg-Allee 25, 80939 Munchen, Germany');
INSERT INTO landmarks (name, city_id, country, venue_type, image, description, address) VALUES ('Marienplatz', 6, 'Germany', 'Plaza', 'https://www.introducingmunich.com/f/alemania/munich/guia/marienplatz-m.jpg', 'Marienplatz is a central square in the city centre of Munich, Germany. It has been the city''s main square since 1158.', 'Marienplatz, 80331 Munchen, Germany');


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
COMMIT TRANSACTION;
