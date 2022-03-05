--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY autoincrement,
  artikelcode VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  adviesprijs NUMERIC (10, 2),
  gewicht VARCHAR (255),
  voorraad_id INTEGER,
  Productgroep_id Integer
);

  CREATE TABLE winkels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  winkelcode varchar(15),
  name VARCHAR(255),
  filiaal TEXT
);

  CREATE TABLE artikel_winkel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id varchar(15),
  winkel_id varchar(15)
);

  CREATE TABLE voorraad (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  artikel_winkel_id INTEGER,
  voorraad TEXT
);

  CREATE TABLE productgroepen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

  
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into productgroepen (name) values ('Gitaar');
insert into productgroepen (name) values ('Piano');
insert into productgroepen (name) values ('Koptelefoon');
insert into productgroepen (name) values ('Drumstel');

  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id) values ('Yamaha P-125 digitale piano + draagtas', 'De P-125 is Yamaha''s opvolger voor de succesvolle P-115, maar nu met nog meer functies en dus mogelijkheden. In de piano vind je 24 standaardklanken, waaronder de samples van een Yamaha CF III-concertvleugel. Daarnaast kun je genieten van wel 20 bas- en drumtracks, uiteenlopend van stevige rock tot ballads en swingende Latin. Zo heb je gelijk een sfeervolle begeleiding bij je spel. Voor het spelen zelf maak je gebruik van het klavier met 88 Graded Hammer Standard-toetsen. Hierbij heb je toetsaanslag, vergelijkbaar met een vleugel, inclusief zwaardere aanslag in het laag en lichtere aanslag in het hoog. Dat alles is verwerkt in een compacte, stijlvolle behuizing, met overzichtelijke bediening. Deze piano is uitgevoerd in het zwart. Het betreft hier alleen de piano, een bijpassend onderstel en tri-pedaal zijn los verkrijgbaar.', '100435', 849.99, 969.99, '16 kg',1);
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id) values ('Ibanez Guitar', 'Ibanez brengt met de GRX40 uit de Gio Series een elektrische gitaar die zich uitstekend leent voor beginners die het instrument willen ontdekken. Dit model heeft namelijk een zogeheten HSS-elementconfiguratie. Dit houdt in dat er zowel een humbucker en twee single-coil elementen in de populieren body zitten. Hierdoor krijg je een breed scala aan mogelijke klanken tot je beschikking; van stevige rock tot en met warme cleantonen. Daarnaast kun je de tone- en volumeregelaars gebruiken voor extra nuance en kun je met de tremolo allerlei vibrato-effecten toevoegen.', '077030122-3', 150, 160, '3.9 kg',1);
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id) values ('Fender Guitar', 'Ibanez Fender Guitar, elektrisch', '445924201-X', 350, 400, '15 kg',1);
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Devine PRO Koptelefoon', 'Bluetooth headphone', '693155505-7', 40, 60, '1.1');
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Yamaha Stage shellset Pure White Drum', 'Volledig drumstel', '686928463-6', 780, 900, '50 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Fazley elektrische basgitaar rood', 'Basgitaar Rood', '492662523-7', 80, 110, '5 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('LaPaz C30BK klassieke gitaar zwart + statief + accessoires', 'LaPaz biedt met de C30 een uitstekende optie voor iedereen die kennis wil maken met de klassieke gitaar. Bovendien maak je met deze vriendelijk geprijsde nylon-snarige gitaar direct een goede start. Dit model is namelijk opgebouwd uit een sparrenhouten bovenblad met zij- en achterkanten van lindehout (basswood). Hierdoor kun je rekenen op een gebalanceerde klank met voldoende helderheid en een warme basisklank. Er is gekozen voor een zijdeglans afwerking voor zowel de body en de hals. Dit ziet er niet alleen bijzonder chic uit, het draagt ook bij aan een hoger speelcomfort. Deze versie in 4/4-formaat is geschikt voor kinderen en volwassenen vanaf 12 jaar oud. Inclusief statief, voetenbankje, clip-on tuner en een capo.', '492662523-7', 120, 130, '3.9 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Medeli GRAND510 Black digitale vleugel', 'De Medeli GRAND510 is een baby grand piano, wat betekent dat deze digitale piano met zijn vleugelbehuizing zeer geschikt is voor thuisgebruik. Dit K8 triple sensor keyboard geeft je bovendien de klank en feel van een grand piano. Zo komt het getrouwe speelgevoel door de 88 toetsen met hammer action. Door de sensoren wordt de release op 3 plekken vastgelegd, wat ervoor zorgt dat muziekstukken in verschillende tempos correct worden doorgegeven. Gecombineerd met de polyfonie van 256 kun je er vanuit gaan dat je alles wat op de toetsen losgaat ook daadwerkelijk terugkrijgt.', '492662523-7', 80, 110, '115 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Pioneer DDJ-400 + controller flightbag', 'De Pioneer DDJ-400 is al snel uitgegroeid tot één van de meest populaire controllers van dit moment. Het is de ideale tweekanaals controller om te leren draaien met zijn tutorial-functie. Hij was al compact en handzaam maar nu wordt hij geleverd inclusief de DJC-B/WEGO3+BAG. Dat is een zeer handige en stevige controller flightbag, speciaal ontworpen om passend te zijn voor de DDJ-400. Hij heeft een schouderband, waardoor het makkelijk is je controller van A naar B te vervoeren. Tevens beschermt hij de controller tegen stootschade en stof.', '845987458', 349, 360, '4.2 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Fenton SBS60 Bluetooth-speaker met LED-verlichting', 'De Fenton SBS60 is een 50W actieve fullrange 2 x 4 inch speaker. Zijn kleurige LED-strips, die om de grill van de speakers heen lopen, lichten op met de muziek die je er op afspeelt. Hij heeft een Aux- en een microfoon-ingang. Maar je kunt ook direct MP3', '4925485', 80, 110, '10 kg');

insert into winkels (winkelcode,name) values ('ROT', 'Rotterdam');
insert into winkels (winkelcode,name) values ('UTR','Utrecht');
insert into winkels (winkelcode,name) values ('AMS', 'Amsterdam');
insert into winkels (winkelcode,name) values ('LIM','Limburg');

insert into artikel_winkel (product_id, winkel_id) values (1,1);
insert into artikel_winkel (product_id, winkel_id) values (1,2);
insert into artikel_winkel (product_id, winkel_id) values (1,3);
insert into artikel_winkel (product_id, winkel_id) values (1,4);
insert into artikel_winkel (product_id, winkel_id) values (2,1);
insert into artikel_winkel (product_id, winkel_id) values (2,2);
insert into artikel_winkel (product_id, winkel_id) values (2,4);
insert into artikel_winkel (product_id, winkel_id) values (3,2);
insert into artikel_winkel (product_id, winkel_id) values (3,1);

  
insert into voorraad (artikel_winkel_id ,name) values (1,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (2,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (3,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (4,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (5,'Laatste items');
