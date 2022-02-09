--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  adviesprijs NUMERIC,
  op voorraad TEXT
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, adviesprijs) values ('Yamaha P-125 digitale piano zwart
', 'piano', '816905633-0', 799, 899);
insert into products (name, description, code, price, adviesprijs) values ('Ibanez Walnut Flat elektrische gitaar
', 'gitaar', '077030122-3', 11, 15);

insert into products (name, description, code, price, adviesprijs) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13, 15);
insert into products (name, description, code, price, adviesprijs) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 16);
insert into products (name, description, code, price, adviesprijs) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 18);
insert into products (name, description, code, price, adviesprijs) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 20);

