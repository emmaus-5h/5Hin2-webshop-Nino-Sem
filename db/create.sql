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
  voorraad_id INTEGER
);

  CREATE TABLE winkels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  winkelcode varchar(15),
  name VARCHAR(255),
  filiaal TEXT
);

  CREATE TABLE artikel_winkel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  artikelcode varchar(15),
  winkelcode varchar(15)
  );

  CREATE TABLE voorraad (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  artikel_winkel_id INTEGER,
  voorraad TEXT
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, artikelcode, price, adviesprijs) values ('Piano Yamaha P-127', 'Yamaha P-125 is de opvolger van de succesvolle Yamaha P-115, deze piano komt met nieuwe functies zoals drumtracks, vleugelklanken en nog meer.', '100435', 849.99, 950);
insert into products (name, description, artikelcode, price, adviesprijs) values ('Ibanez Guitar', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 150, 230);
insert into products (name, description, artikelcode, price, adviesprijs) values ('Fender Guitar', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 350, 400);
insert into products (name, description, artikelcode, price, adviesprijs) values ('Devine PRO Koptelefoon', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 40, 60);
insert into products (name, description, artikelcode, price, adviesprijs) values ('Yamaha Stage shellset Pure White Drum', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 780, 900);
insert into products (name, description, artikelcode, price, adviesprijs) values ('Fazley elektrische basgitaar rood', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 80, 110);

insert into winkels (winkelcode,name) values ('ROT', 'Rotterdam');
insert into winkels (winkelcode,name) values ('UTR','Utrecht');
insert into winkels (winkelcode,name) values ('AMS', 'Amsterdam');
insert into winkels (winkelcode,name) values ('GR', 'Groningen');
insert into winkels (winkelcode,name) values ('LIM','Limburg');

insert into artikel_winkel (artikelcode, winkelcode) values ('100435','ROT');
insert into artikel_winkel (artikelcode, winkelcode) values ('100435','UTR');
insert into artikel_winkel (artikelcode, winkelcode) values ('077030122-3','AMS');
insert into artikel_winkel (artikelcode, winkelcode) values ('077030122-3', 'LIM');

  
insert into voorraad (artikel_winkel_id ,name) values (1,'ja');
insert into voorraad (artikel_winkel_id ,name) values (2,'nee');
insert into voorraad (artikel_winkel_id ,name) values (3,'binnekort');
insert into voorraad (artikel_winkel_id ,name) values (4,'binnekort');
