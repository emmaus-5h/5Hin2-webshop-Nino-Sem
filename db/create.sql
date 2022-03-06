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
  afmetingen TEXT,
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

insert into productgroepen (name) values ('Snaarinstrument');
insert into productgroepen (name) values ('Toetsinstrument');
insert into productgroepen (name) values ('Koptelefoon');
insert into productgroepen (name) values ('Slagwerkinstrument');
insert into productgroepen (name) values ('Speaker');
insert into productgroepen (name) values ('Voor snaarinstrument');
insert into productgroepen (name) values ('Voor Drumstel');
insert into productgroepen (name) values ('Voor Bladmuziek');

  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Yamaha P-125 digitale piano + draagtas', 'De P-125 is Yamaha''s opvolger voor de succesvolle P-115, maar nu met nog meer functies en dus mogelijkheden. In de piano vind je 24 standaardklanken, waaronder de samples van een Yamaha CF III-concertvleugel. Daarnaast kun je genieten van wel 20 bas- en drumtracks, uiteenlopend van stevige rock tot ballads en swingende Latin. Zo heb je gelijk een sfeervolle begeleiding bij je spel. Voor het spelen zelf maak je gebruik van het klavier met 88 Graded Hammer Standard-toetsen. Hierbij heb je toetsaanslag, vergelijkbaar met een vleugel, inclusief zwaardere aanslag in het laag en lichtere aanslag in het hoog. Dat alles is verwerkt in een compacte, stijlvolle behuizing, met overzichtelijke bediening. Deze piano is uitgevoerd in het zwart. Het betreft hier alleen de piano, een bijpassend onderstel en tri-pedaal zijn los verkrijgbaar.', '100435', 849.99, 969.99, '16 kg',2, "150cm x 45cm x 30x");
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Ibanez Guitar', 'Ibanez brengt met de GRX40 uit de Gio Series een elektrische gitaar die zich uitstekend leent voor beginners die het instrument willen ontdekken. Dit model heeft namelijk een zogeheten HSS-elementconfiguratie. Dit houdt in dat er zowel een humbucker en twee single-coil elementen in de populieren body zitten. Hierdoor krijg je een breed scala aan mogelijke klanken tot je beschikking; van stevige rock tot en met warme cleantonen. Daarnaast kun je de tone- en volumeregelaars gebruiken voor extra nuance en kun je met de tremolo allerlei vibrato-effecten toevoegen.', '077030122-3', 150, 160, '3.9 kg',1, "160cm x 54cm x 16cm");
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Fender Player Stratocaster Capri MN', 'De Fender Player Stratocaster is de spirituele opvolger van de Standard Series. Dit houdt in dat je een echte Fender kunt bemachtigen voor een vriendelijke prijs. Er zijn een aantal verbeterpunten uitgevoerd ten opzichte van zijn oudere broers. Zo is deze Player Strat voorzien van nieuw ontworpen alnico Player Series Single-Coils, voor een brede range aan authentieke Fender sounds. Daarnaast krijg je ook beschikking over een moderne 2-punts tremolo. Het 50’s spaghetti logo op de kop maakt het plaatje compleet.', '445924201-X', 350, 400, '15 kg',1, "107,5 x 38,5 x 11,5 cm" );
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Devine PRO Koptelefoon', 'De Devine PRO 5000 mag er zeker zijn. Visueel is het een bijzonder aantrekkelijke hoofdtelefoon, met extra grote over-ear oorkussens voorzien van gouden accenten. De drivers zijn 50 (!) millimeter groot en maken dat je alles hoort; van diepe bassen tot gedefinieerde hoge klanken. De extra grote oorkussens zijn erg licht en zitten behoorlijk comfortabel over je oren. Het ontwerp van de hoofdband maakt dat de koptelefoon licht en comfortabel rust op het hoofd, waarbij het ontwerp zichzelf nauwkeurig aanpast om de contouren van je hoofd.', '693155505-7', 40, 60, '1.1', 3, "n.v.t.");
  
insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Yamaha Stage shellset Pure White Drum', 'Deze Mapex Saturn Evolution Birch Stage Classic shellset is voorzien van een moderne configuratie, die precies tussen een ‘fusion’ en een ‘rock’ setup in zit. Zo heb je twee hangende toms van 10x7-inch en 12x8-inch, terwijl de floortom 16x14-inch is. De bassdrum is 22x16-inch. Deze configuratie is daarmee erg geschikt voor de drummer die een goed gebalanceerd en allround geluid zoekt. De ketels zijn gemaakt van twee houtsoorten: berkenhout en walnotenhout, die samen zorgen voor een droog en punchy geluid. Als kers op de taart, is deze ketelset voorzien van een zeer fraaie Polar White Lacquer afwerking - want het oog wil uiteraard ook wat.', '686928463-6', 780, 900, '50 kg', 4, "77 x 61 x 49 cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Fazley elektrische basgitaar rood', 'De Fazley FPB118 is een elektrische basgitaar met een direct herkenbaar geluid en uiterlijk. De lindehouten P-stijl body is namelijk voorzien van een passief splitcoil element. Hierdoor kun je rekenen op die karakteristieke diepe lage basklanken. Deze Fazley bas wordt gekenmerkt door een uitstekende prijs-kwaliteitverhouding, waardoor dit model een goede keuze is voor beginners of bassisten met een klein budget. Ook gevorderde muzikanten hebben aan de FPB118BK een fijn bespeelbaar (back-up) instrument voor een prettige prijs. De esdoornhouten hals met zijn donkere toets is namelijk voorzien van een comfortabel C-profiel voor een vertrouwd speelgemak.', '492662523-7', 80, 110, '5 kg', 1, "122,5 x 43,5 x 8,5 cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('LaPaz C30BK klassieke gitaar zwart + statief + accessoires', 'LaPaz biedt met de C30 een uitstekende optie voor iedereen die kennis wil maken met de klassieke gitaar. Bovendien maak je met deze vriendelijk geprijsde nylon-snarige gitaar direct een goede start. Dit model is namelijk opgebouwd uit een sparrenhouten bovenblad met zij- en achterkanten van lindehout (basswood). Hierdoor kun je rekenen op een gebalanceerde klank met voldoende helderheid en een warme basisklank. Er is gekozen voor een zijdeglans afwerking voor zowel de body en de hals. Dit ziet er niet alleen bijzonder chic uit, het draagt ook bij aan een hoger speelcomfort. Deze versie in 4/4-formaat is geschikt voor kinderen en volwassenen vanaf 12 jaar oud. Inclusief statief, voetenbankje, clip-on tuner en een capo.', '492662523-7', 120, 130, '3.9 kg', 1, "98,0 x 45,0 x 12,5 cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Medeli GRAND510 Black digitale vleugel', 'De Medeli GRAND510 is een baby grand piano, wat betekent dat deze digitale piano met zijn vleugelbehuizing zeer geschikt is voor thuisgebruik. Dit K8 triple sensor keyboard geeft je bovendien de klank en feel van een grand piano. Zo komt het getrouwe speelgevoel door de 88 toetsen met hammer action. Door de sensoren wordt de release op 3 plekken vastgelegd, wat ervoor zorgt dat muziekstukken in verschillende tempos correct worden doorgegeven. Gecombineerd met de polyfonie van 256 kun je er vanuit gaan dat je alles wat op de toetsen losgaat ook daadwerkelijk terugkrijgt.', '492662523-7', 80, 110, '115 kg', 2, "153cm x 100cm x 100cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Pioneer DDJ-400 + controller flightbag', 'De Pioneer DDJ-400 is al snel uitgegroeid tot één van de meest populaire controllers van dit moment. Het is de ideale tweekanaals controller om te leren draaien met zijn tutorial-functie. Hij was al compact en handzaam maar nu wordt hij geleverd inclusief de DJC-B/WEGO3+BAG. Dat is een zeer handige en stevige controller flightbag, speciaal ontworpen om passend te zijn voor de DDJ-400. Hij heeft een schouderband, waardoor het makkelijk is je controller van A naar B te vervoeren. Tevens beschermt hij de controller tegen stootschade en stof.', '845987458', 349, 360, '4.2 kg', 2, "58cm x 34cm x 13cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Fenton SBS60 Bluetooth-speaker met LED-verlichting', 'Altijd even overal heerlijk genieten van je favoriete muziek, het kan met de Fenton SBS60 Bluetooth speaker. Een mooi vormgegeven compacte speaker die voorzien is van twee 4" full range speakers. Voor een mooie look is de SBS60 voorzien van twee LED strips die hem een stoer uiterlijk geven. Indien gewenst kunnen de LED strips uitgeschakeld worden. Voor het afspelen van muziek via de SBS60 kan gekozen worden uit Bluetooth, de ingebouwde mp3 speler (USB stick of Micro SD kaart) of voor de AUX ingang. Voor deze laatste wordt een kabel meegeleved zodat je je telefoon, tablet of laptop eenvoudig kunt verbinden. Uiteraard ontbreekt ook een oplaadkabel niet zodat je een eventuele lege accu eenvoudig via een USB aansluiting weer op kunt laden.', '4925485', 42.99, 49.99, '10 kg', 5, "13cm x 15cm x 30cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Dunlop Max Grip Jazz III Carbon Fiber plectrums (6 stuks)', 'Dunlop combineert de populaire en klassieke Jazz III-vorm met de innovatieve Max Grip technologie. Bij deze set heb je de beschikking over zes robuuste plectrums in de moderne ogende afwerking met de naam Carbon Fiber. Met deze plectra heb je naast extreme duurzaamheid de mogelijkheid om je gitaarspel bijzonder snel en uiterst secuur uit te voeren. In interviews heeft gitarist Mick Thomson van Slipknot laten weten zeer gecharmeerd te zijn van dit type plectrum.', '845874', 3.90, 8.99, '5 gr', 6, "n.v.t.");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Simo 5A drumstokken met houten tip', 'Deze Simo stokken zijn gemaakt van hickory en doen zeker niet onder voor stokken van grote merken. De balans is uitstekend en ze liggen prettig in de hand. Wat betreft diameter, lengte en taper komen deze drumstokken overeen met standaard 5A stokken. De houten tip levert een fraaie, warme, volle attack - met name op bekkens. Fazley levert met deze 5A stokken een prima set met een meer dan uitstekende prijs-kwaliteitsverhouding!', '548587', 4.65, 5.79, '97 gr', 7, "40cm x 3cm x 1,5cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Simo HH 2038 capo voor klassieke gitaar', 'Voor de gitaristen die op een Spaanse of klassieke gitaar spelen en die wel eens een capodaster willen gebruiken, komt Simo met deze vlakke HH 2038 capo voor dit type nylonsnarige akoestische gitaar. Door de stevige veer is hij gemakkelijk te plaatsen en de solide constructie zorgt dat hij goed op zijn plek blijft zitten. Niet alleen de snaren hebben overigens profijt van een siliconen demper, maar ook aan de achterkant van de hals heeft deze kapodastro een beschermlaag van ditzelfde materiaal. Doordat de eerdergenoemde demper vlak is, is deze Simo capo overigens alleen met een platte toets te gebruiken.', '548587', 8.50, 9.99, '60 gr', 6, "n.v.t.");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Innox ISA 01 MKII muziekstandaard met geperforeerd blad', 'De eerste Innox ISA 01 muziekstandaard stond als een huis en liep als een trein. Maar zoals dat met alles gaat: vroeg of laat zie je dingen die beter kunnen, en dan breng je een nieuwe versie uit. De Innox ISA 01 MKII is die nieuwe versie. In deze MK2 krijg je een handige aandraaiknop om het lessenaarblad vast te zetten; een uitkomst voor mobiel gebruik! Verder is de MK2 over de gehele linie gewoon net even wat degelijker, het is simpelweg een beter statief geworden. Voor de rest nog steeds de vertrouwde aanblik van het geperforeerde blad. Voor thuis en onderweg is dit kortom een oerdegelijk product dat je als muzikant eigenlijk gewoon moet hebben.', '548587', 39.99, 46.99, '3 kg', 8, "max. hoogte 109cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Simo DDK-120 elektronisch drumstel', 'Simo heeft met de DDK-120 een mooi elektronisch drumstel gemaakt waar menig drummer jaren van kan genieten. Het drumstel heeft vijf trommels en drie bekkens. De drumpads van de snare en toms hebben een diameter van 10 inch en zijn voorzien van twee triggers (dual zone). De hihat, crash en ride hebben een diameter van 12 inch en zijn eveneens voorzien van dual zone triggers. De bekkens hebben daarnaast ook nog een choke-functie. Je kunt dus een bekken aanslaan en het vervolgens weer dempen met je hand. Het geheel wordt geleverd inclusief rack en drummodule, dus je kunt direct aan de slag! Dit drumstel is geschikt voor alle leeftijden. ', '5478963', 449, 459, '32 kg', 4, "93,5cm x 76,5cm x 31,0cm");

insert into products (name, description, artikelcode, price, adviesprijs, gewicht, productgroep_id, afmetingen) values ('Fender Legacy Vintage Monogram Strap gitaarband', 'Fender brengt met deze Legacy Vintage Monogram Strap een getrouwe replica uit van een van de bekendste gitaarbanden van het iconische Amerikaanse gitaarmerk. Naast de traditionele kleurencombinatie is er gekozen voor het “straight signature” logo dat dateert uit de gouden jaren van Fender. Deze stijlvolle draagband is opgebouwd uit een polyester basis met een comfortabele onderzijde van synthetisch leer. In combinatie met de leren eindstukken en de kunstmatig verouderde metalen hardware levert dit een betrouwbare gitaarband vol Fender DNA!', '148962', 42, 46, '200 g', 6, "verstelbaar tussen 80cm en 140 cm");

  
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
insert into artikel_winkel (product_id, winkel_id) values (2,3);
insert into artikel_winkel (product_id, winkel_id) values (2,4);
insert into artikel_winkel (product_id, winkel_id) values (3,1);
insert into artikel_winkel (product_id, winkel_id) values (3,2);
insert into artikel_winkel (product_id, winkel_id) values (3,3);
insert into artikel_winkel (product_id, winkel_id) values (3,4);
insert into artikel_winkel (product_id, winkel_id) values (4,1);
insert into artikel_winkel (product_id, winkel_id) values (4,2);
insert into artikel_winkel (product_id, winkel_id) values (4,3);
insert into artikel_winkel (product_id, winkel_id) values (4,4);
insert into artikel_winkel (product_id, winkel_id) values (5,1);
insert into artikel_winkel (product_id, winkel_id) values (5,2);
insert into artikel_winkel (product_id, winkel_id) values (5,3);
insert into artikel_winkel (product_id, winkel_id) values (5,4);
insert into artikel_winkel (product_id, winkel_id) values (6,1);
insert into artikel_winkel (product_id, winkel_id) values (6,2);
insert into artikel_winkel (product_id, winkel_id) values (6,3);
insert into artikel_winkel (product_id, winkel_id) values (6,4);
insert into artikel_winkel (product_id, winkel_id) values (7,1);
insert into artikel_winkel (product_id, winkel_id) values (7,2);
insert into artikel_winkel (product_id, winkel_id) values (7,3);
insert into artikel_winkel (product_id, winkel_id) values (7,4);
insert into artikel_winkel (product_id, winkel_id) values (8,1);
insert into artikel_winkel (product_id, winkel_id) values (8,2);
insert into artikel_winkel (product_id, winkel_id) values (8,3);
insert into artikel_winkel (product_id, winkel_id) values (8,4);
insert into artikel_winkel (product_id, winkel_id) values (9,1);
insert into artikel_winkel (product_id, winkel_id) values (9,2);
insert into artikel_winkel (product_id, winkel_id) values (9,3);
insert into artikel_winkel (product_id, winkel_id) values (9,4);
insert into artikel_winkel (product_id, winkel_id) values (10,1);
insert into artikel_winkel (product_id, winkel_id) values (10,2);
insert into artikel_winkel (product_id, winkel_id) values (10,3);
insert into artikel_winkel (product_id, winkel_id) values (10,4);
insert into artikel_winkel (product_id, winkel_id) values (11,1);
insert into artikel_winkel (product_id, winkel_id) values (11,2);
insert into artikel_winkel (product_id, winkel_id) values (11,3);
insert into artikel_winkel (product_id, winkel_id) values (11,4);
insert into artikel_winkel (product_id, winkel_id) values (12,1);
insert into artikel_winkel (product_id, winkel_id) values (12,2);
insert into artikel_winkel (product_id, winkel_id) values (12,3);
insert into artikel_winkel (product_id, winkel_id) values (12,4);
insert into artikel_winkel (product_id, winkel_id) values (13,1);
insert into artikel_winkel (product_id, winkel_id) values (13,2);
insert into artikel_winkel (product_id, winkel_id) values (13,3);
insert into artikel_winkel (product_id, winkel_id) values (13,4);
insert into artikel_winkel (product_id, winkel_id) values (14,1);
insert into artikel_winkel (product_id, winkel_id) values (14,2);
insert into artikel_winkel (product_id, winkel_id) values (14,3);
insert into artikel_winkel (product_id, winkel_id) values (14,4);
insert into artikel_winkel (product_id, winkel_id) values (15,1);
insert into artikel_winkel (product_id, winkel_id) values (15,2);
insert into artikel_winkel (product_id, winkel_id) values (15,3);
insert into artikel_winkel (product_id, winkel_id) values (15,4);
insert into artikel_winkel (product_id, winkel_id) values (16,1);
insert into artikel_winkel (product_id, winkel_id) values (16,2);
insert into artikel_winkel (product_id, winkel_id) values (16,3);
insert into artikel_winkel (product_id, winkel_id) values (16,4);

  
insert into voorraad (artikel_winkel_id ,name) values (1,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (2,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (3,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (4,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (5,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (6,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (7,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (8,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (9,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (10,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (11,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (12,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (13,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (14,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (15,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (16,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (17,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (18,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (19,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (20,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (21,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (22,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (23,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (24,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (25,'Ja'); 
insert into voorraad (artikel_winkel_id ,name) values (26,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (27,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (28,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (29,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (30,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (31,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (32,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (33,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (34,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (35,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (36,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (37,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (38,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (39,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (40,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (41,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (42,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (43,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (44,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (45,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (46,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (47,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (48,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (49,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (50,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (51,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (52,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (53,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (54,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (55,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (56,'Laatste items');
insert into voorraad (artikel_winkel_id ,name) values (57,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (58,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (59,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (60,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (57,'Ja');
insert into voorraad (artikel_winkel_id ,name) values (58,'Binnenkort');
insert into voorraad (artikel_winkel_id ,name) values (59,'Nee');
insert into voorraad (artikel_winkel_id ,name) values (60,'Laatste items');



