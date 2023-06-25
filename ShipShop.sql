Drop Database if exists SHIPSHOP;
CREATE DATABASE SHIPSHOP;
SHOW DATABASES;
use SHIPSHOP;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS Orders;  
DROP TABLE IF EXISTS cart_items;
DROP TABLE IF EXISTS Cart;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Shipping_Agent;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Admin;

 create TABLE Admin
(
    id int NOT NULL UNIQUE,
    FirstName varchar(45) NOT NULL,
    MiddleName varchar(45),
    LastName varchar(45),
    AdminPassword varchar(25) NOT NULL,
    primary key(id)
);

desc Admin;
insert into Admin VALUES(1000,"Kartik","","Gupta","xyz1234");
insert into Admin VALUES(1001,"Harsh","Kumar","Pal","xyz1999");
SELECT * FROM Admin;


create TABLE Customer
( 
    id int NOT NULL UNIQUE,
    FirstName varchar(45) NOT NULL,
    MiddleName varchar(45),
    LastName varchar(45),
    Email varchar(45) NOT NULL UNIQUE,
    Address varchar(250) NOT NULL,
    Phone varchar(45) NOT NULL UNIQUE,
    LoginPassword varchar(25) NOT NULL,
    A_id int NOT NULL,
    foreign key(A_id) REFERENCES Admin(id),
    primary key(id)
 );

desc Customer;
INSERT INTO Customer VALUE(2000,"Harsh","Kumar","Pal","harsh21047@gmail.com","Dwarka New Delhi",9958600000,"abc1997", 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2001, 'Wyndham', 'Rodd', 'Muncer', 'rmuncer0@europa.eu', '4855 Karstens Junction', '7574915349', '7MzklB3Movorder_items', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2002, 'Gavin', 'Eziechiele', 'Brick', 'ebrick1@cbslocal.com', '75 Southridge Street', '4786862192', 'sy4gMPq0Jst', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2003, 'Lind', 'Andras', 'Guillard', 'aguillard2@bbc.co.uk', '03332 Mariners Cove Drive', '1516781876', 'rcRWtKbQEQAE', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2004, 'Jenifer', 'Levon', 'Reubbens', 'lreubbens3@freewebs.com', '5 Ludington Lane', '9273227118', 'elrRGfGIE', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2005, 'Cyndy', 'Gabriello', 'Pagin', 'gpagin4@imdb.com', '6 Talmadge Drive', '8031177622', 'oc31z11', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2006, 'Gweneth', 'Lavina', 'Crisford', 'lcrisford5@newsvine.com', '1 Merry Terrace', '6145226762', '2pXdKBUD5us8', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2007, 'Faunie', 'Demott', 'Rupp', 'drupp6@businesswire.com', '5 Roth Drive', '3235384051', 'mjqj7Q', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2008, 'Dolley', 'Saloma', 'Hartwell', 'shartwell7@samsung.com', '6545 Myrtle Park', '7814105398', '5DmQBf5k3dXJ', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2009, 'Boot', 'Arturo', 'Pumphrey', 'apumphrey8@theguardian.com', '41 Utah Road', '3928909562', 'cXUwLHu0s3', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2010, 'Marin', 'Charmain', 'Paulusch', 'cpaulusch9@nationalgeographic.com', '3804 Victoria Pass', '4304078619', '2LHwr5d', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2011, 'Jenna', 'Filbert', 'Tidball', 'ftidballa@ovh.net', '9 Nancy Hill', '3879709209', 'Wmdk4Se', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2012, 'Courtenay', 'Juana', 'Brackenbury', 'jbrackenburyb@unblog.fr', '82438 Thackeray Terrace', '6731404600', '5G9bUj1Ti43A', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2013, 'Roxine', 'Paige', 'Gilleson', 'pgillesonc@si.edu', '5245 Talmadge Road', '6195296154', 'eUcdMzT6l', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2014, 'Luce', 'Bondie', 'Phidgin', 'bphidgind@apache.org', '90671 Nancy Lane', '7741408666', 'J4WDKyXd2vU', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2015, 'Albertine', 'Lorenzo', 'Perrington', 'lperringtone@gizmodo.com', '9 Kedzie Terrace', '2689323881', 'LmaR89', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2016, 'Homer', 'Blancha', 'Farryn', 'bfarrynf@intel.com', '31 Trailsway Drive', '7212456608', 'z5CPzrd5iiId', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2017, 'Anselma', 'Mirella', 'Altoft', 'maltoftg@army.mil', '8 International Point', '8389613517', 'YH3PcfaxOx', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2018, 'Jdavie', 'Moore', 'Kingswood', 'mkingswoodh@youtu.be', '5363 Southridge Drive', '8406106194', '9PmN5tyuoRTU', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2019, 'Jocko', 'Renaldo', 'Greedier', 'rgreedieri@google.es', '09990 Southridge Crossing', '2568906271', '6XWns5yD5', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2020, 'Pall', 'Michele', 'Lilleman', 'mlillemanj@usatoday.com', '3 South Avenue', '9028415661', 'ltp0fx2I4', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2021, 'Sarita', 'Dwayne', 'Hurlestone', 'dhurlestonek@icio.us', '52815 Pond Plaza', '6753347903', 'Py6ieJ7i0L', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2022, 'Rayna', 'Jandy', 'Haselup', 'jhaselupl@nbcnews.com', '218 Ohio Center', '4018945088', 'zu25QS', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2023, 'Tabbitha', 'Aileen', 'Walak', 'awalakm@ustream.tv', '2 Cody Junction', '3808062874', '6GxEi7gAOl', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2024, 'Lindie', 'Ira', 'Brickham', 'ibrickhamn@techcrunch.com', '91991 Oak Valley Park', '8149481779', '53jpATDez9', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2025, 'Midge', 'Sunny', 'Bottrill', 'sbottrillo@aol.com', '53191 Columbus Place', '7178308367', 'yKKddeggRq', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2026, 'Glynnis', 'Reena', 'Charlick', 'rcharlickp@nsw.gov.au', '67899 Ruskin Alley', '5854376226', 'BzrGC3b', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2027, 'Dana', 'Josefina', 'Ashling', 'jashlingq@joomla.org', '4 West Point', '8103106941', 'WjD0dY06as', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2028, 'Ninon', 'Atlante', 'Bortolozzi', 'abortolozzir@bing.com', '484 Miller Avenue', '9091855546', 'TGj7bO', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2029, 'Barney', 'Faith', 'Caseborne', 'fcasebornes@accuweather.com', '5 Kenwood Point', '6435419533', 'aRzFXr', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2030, 'Kynthia', 'Evanne', 'Ramsay', 'eramsayt@wiley.com', '99 Hermina Way', '4475607066', 'jSeeXL8L2k', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2031, 'Keir', 'Alanah', 'Old', 'aoldu@liveinternet.ru', '2 Mosinee Avenue', '4722298520', 'I8zkl36gGt', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2032, 'Belvia', 'Gratia', 'Manterfield', 'gmanterfieldv@mac.com', '786 Mayer Drive', '2969151418', 'eYUvWkM', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2033, 'Clare', 'Marty', 'Brezlaw', 'mbrezlaww@ow.ly', '2 Division Hill', '9605417892', 'qRh2mlxAuqo', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2034, 'Ethelyn', 'Kath', 'Kob', 'kkobx@netvibes.com', '0 Morning Parkway', '2485506870', 'InAwlXiu6', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2035, 'Jessi', 'Winna', 'Arthy', 'warthyy@twitpic.com', '55873 Dawn Plaza', '2268796704', 'DB9GOHKPk', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2036, 'Cull', 'Gustaf', 'Stilling', 'gstillingz@photobucket.com', '6 Amoth Road', '6103724897', 'bBlxzN', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2037, 'Ogdan', 'Letisha', 'Synke', 'lsynke10@fc2.com', '04428 Meadow Valley Road', '2887855624', 'HVAekW2a', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2038, 'Hakim', 'Lynea', 'Prydden', 'lprydden11@miibeian.gov.cn', '1 New Castle Trail', '3447379399', 'kw819V', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2039, 'Anderea', 'Teddy', 'Siuda', 'tsiuda12@nymag.com', '81 Oriole Parkway', '8385053161', 'rYsaZzIF', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2040, 'Briny', 'Reamonn', 'Saltrese', 'rsaltrese13@multiply.com', '23959 Oneill Plaza', '1624592350', 'nGtEqxV', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2041, 'Clarey', 'Zebadiah', 'Cammomile', 'zcammomile14@xinhuanet.com', '29937 Mallard Park', '4116454405', 'ImIC039P', 1001);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2042, 'Katherina', 'Decca', 'Lecointe', 'dlecointe15@ucoz.ru', '7793 Kings Trail', '3637855614', 'Qj6T1s9uYB39', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2043, 'Thorstein', 'Gayla', 'Dicey', 'gdicey16@apache.org', '20 Mitchell Parkway', '1936276182', 'nGEid7U3', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2044, 'Lurline', 'Phyllida', 'Spittle', 'pspittle17@imdb.com', '1226 Rusk Terrace', '2912219426', 'cDEN3TBH', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2045, 'Gerrie', 'Drusilla', 'Rugg', 'drugg18@mashable.com', '882 Oxford Trail', '5769628022', 'XYdBYo7vZ', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2046, 'Jorie', 'Amelita', 'Finnie', 'afinnie19@census.gov', '35246 Hauk Way', '2686449103', 'NYhqbg0Zr9', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2047, 'Josiah', 'Ginnie', 'Le Clercq', 'gleclercq1a@google.com.au', '06 Westport Parkway', '5832903966', 'VX5bMiqljnPp', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2048, 'Fin', 'Huey', 'Somerset', 'hsomerset1b@princeton.edu', '3 Utah Hill', '3714934067', 'jopTa5op1zgH', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2049, 'Charin', 'Jeni', 'Flobert', 'jflobert1c@mediafire.com', '8422 Independence Trail', '2799389227', '5Cc7ieQQ8uh', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2050, 'Melisa', 'Jo-anne', 'Zanotti', 'jzanotti1d@bravesites.com', '2305 Del Mar Point', '2704996231', 'esKfIEo', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2051, 'Afton', 'Coriss', 'Freddi', 'cfreddi1e@meetup.com', '195 Shopko Drive', '9659852626', 'u36bTan5Qlqt', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2052, 'Milka', 'Althea', 'Missenden', 'amissenden1f@infoseek.co.jp', '3278 Miller Alley', '3909964080', 'guouidBvS', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2053, 'Marty', 'Kamilah', 'Falcus', 'kfalcus1g@wix.com', '88370 Gerald Way', '5284817308', '8ooTwk6cV', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2054, 'Corie', 'Ezri', 'Stoddard', 'estoddard1h@seattletimes.com', '057 Kipling Parkway', '8177599597', 'peNJrY43q', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2055, 'Cherry', 'Shelia', 'Drakeley', 'sdrakeley1i@so-net.ne.jp', '2 Sycamore Center', '8979759982', 'VhLQPwZs2K5q', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2056, 'Lonni', 'Ethelda', 'McCafferky', 'emccafferky1j@ibm.com', '34843 Schurz Park', '9805668654', 'xyq8XRMOx', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2057, 'Jeremias', 'Emmott', 'Wolfer', 'ewolfer1k@ucsd.edu', '4 Westridge Park', '4344784316', 'At4K2Z0', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2058, 'Moria', 'Erastus', 'Whittingham', 'ewhittingham1l@mlb.com', '8132 Oriole Crossing', '5158751878', 'Lff9pjCg8', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2059, 'Leodora', 'Davey', 'Jiroutek', 'djiroutek1m@theguardian.com', '503 Center Junction', '4024074297', 'ALDfiOEITtC', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2060, 'Harv', 'Demetra', 'Glassborow', 'dglassborow1n@paginegialle.it', '728 Kim Alley', '5538267445', 'f4fo7LWs', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2061, 'Elizabeth', 'Nonnah', 'Sitford', 'nsitford1o@businesswire.com', '3 Starling Alley', '5414542344', 'iAS4qGyqhC', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2062, 'Kerianne', 'Rogers', 'Bittlestone', 'rbittlestone1p@shinystat.com', '3000 Blaine Trail', '2077757526', 'rkW4131', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2063, 'Lindsay', 'Vinny', 'Jerrard', 'vjerrard1q@hhs.gov', '2954 Cascade Alley', '6934571948', 'hHcKdwMiKPB', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2064, 'Saleem', 'Ignacius', 'Stitle', 'istitle1r@elegantthemes.com', '5608 Mifflin Park', '9388000051', 'aE4zBD', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2065, 'Daveen', 'Ertha', 'Persse', 'epersse1s@si.edu', '37 Scofield Drive', '7322779909', '5zbe5x4Q', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2066, 'Sterling', 'Godard', 'Licas', 'glicas1t@craigslist.org', '0334 Westerfield Point', '2946342114', '9JLZn4hOv', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2067, 'Joya', 'Winnie', 'Ison', 'wison1u@netvibes.com', '13523 Drewry Hill', '8054328482', 'pVx17q14S', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2068, 'Kendal', 'Lana', 'Rennick', 'lrennick1v@feedburner.com', '67 Bartillon Place', '1856036185', '5WtKKotEiwqE', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2069, 'Sallyanne', 'Margot', 'Sugden', 'msugden1w@dion.ne.jp', '6 4th Point', '4974391658', 'sBFaoweAZ', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2070, 'Jacki', 'Aldo', 'Paolo', 'apaolo1x@ca.gov', '419 Loeprich Lane', '2693004461', 'totDhE24Qd', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2071, 'Kym', 'Stefania', 'Eric', 'seric1y@mtv.com', '95682 Little Fleur Center', '2137901881', 'SyNPKty', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2072, 'Marylee', 'Lyn', 'Nellis', 'lnellis1z@dagondesign.com', '608 Dwight Park', '2934939798', 'qvzmTic95', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2073, 'Ches', 'Samson', 'Mordecai', 'smordecai20@google.com.au', '3 Elmside Plaza', '7345230565', 'lXmEF62d3', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2074, 'Moishe', 'Turner', 'Madeley', 'tmadeley21@ca.gov', '0256 Lukken Terrace', '3692890661', 'zUcIGNETsh', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2075, 'Pedro', 'Maxie', 'Olford', 'molford22@sciencedirect.com', '445 Sommers Crossing', '8692178052', 'WFtEv3vtfY', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2076, 'Cathleen', 'Cheslie', 'McCrackan', 'cmccrackan23@4shared.com', '9 Clarendon Terrace', '9121323487', 'QiItTD63JRQP', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2077, 'Shannah', 'Salvador', 'Bushe', 'sbushe24@youku.com', '09819 Canary Pass', '9642441026', '6PA86m', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2078, 'Sigismondo', 'Felipa', 'Siuda', 'fsiuda25@princeton.edu', '46346 Oneill Plaza', '1239481996', 'dYakHp', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2079, 'Mack', 'Othilia', 'Dyde', 'odyde26@wiley.com', '42 High Crossing Trail', '9956942375', 'jXBCBQwe', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2080, 'Steward', 'Bella', 'Pigford', 'bpigford27@shareasale.com', '37230 Jenna Crossing', '5027321410', 'teRDYOzq4Yq', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2081, 'Gawain', 'Galina', 'Tweede', 'gtweede28@google.ru', '73544 Ridgeway Drive', '8092711178', 'mhFEXjhtR6i', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2082, 'Tucker', 'Mimi', 'Cantera', 'mcantera29@ibm.com', '0 Spohn Drive', '4002159681', 'z0ELbdsmurC', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2083, 'Latrina', 'Matthieu', 'Wandrack', 'mwandrack2a@liveinternet.ru', '313 Village Court', '3554434572', 'bsibHcYa', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2084, 'Gerianne', 'Thia', 'Weale', 'tweale2b@omniture.com', '947 Havey Junction', '9023864322', 'UTQ4yfBQ', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2085, 'Tymon', 'Kacey', 'Keates', 'kkeates2c@gov.uk', '60826 Fordem Court', '2258391454', 'pPT60wtS9WpX', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2086, 'Germain', 'Ruthanne', 'Jira', 'rjira2d@wp.com', '21380 Portage Trail', '4338205719', 'XPgtQTBJWdJ', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2087, 'Beryl', 'Shana', 'Vannini', 'svannini2e@cafepress.com', '4 Havey Point', '1804519345', 'S9WXchmSLMHs', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2088, 'Winne', 'Audry', 'Tuckey', 'atuckey2f@google.com.hk', '03 Becker Circle', '7207165976', 'lMGLDWEGKnt', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2089, 'Pyotr', 'Kaitlyn', 'Eliasson', 'keliasson2g@smh.com.au', '207 Butterfield Pass', '1187144396', 'k3ifoSceiJli', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2090, 'Wendall', 'Noami', 'Altofts', 'naltofts2h@taobao.com', '1 Nevada Plaza', '7558796067', '7iPL6AFSnz', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2091, 'Aimee', 'Tedmund', 'McGenis', 'tmcgenis2i@tumblr.com', '046 Helena Drive', '1859961741', '1tOznvSUpX', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2092, 'Wilfred', 'Rosalia', 'Jewster', 'rjewster2j@chronoengine.com', '5 Heffernan Alley', '8436053514', 'nclUpprzRb', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2093, 'Gussy', 'Oswald', 'Hufton', 'ohufton2k@phpbb.com', '9480 Kenwood Crossing', '9495679378', 'S3BbxG8h3HA', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2094, 'Rudiger', 'Celesta', 'Breakey', 'cbreakey2l@feedburner.com', '5066 5th Center', '7148340486', 'Gfz5z0A8HcEh', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2095, 'Darb', 'Verge', 'Bredee', 'vbredee2m@youtube.com', '76140 Lotheville Place', '3104412729', 'nNsEesUwV', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2096, 'Tiffanie', 'Remington', 'Cosgriff', 'rcosgriff2n@google.cn', '08497 Glacier Hill Road', '9301422226', '5ET1ZF1hpJB', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2097, 'Bradney', 'Othilie', 'Duncombe', 'oduncombe2o@twitpic.com', '743 Mariners Cove Park', '9845504703', '0BEadYq5mTX', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2098, 'Lind', 'Becca', 'Philipeaux', 'bphilipeaux2p@constantcontact.com', '8237 Marquette Circle', '3886642511', 'JLonROSZ6Y', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2099, 'Anatol', 'Randi', 'Muehle', 'rmuehle2q@blogtalkradio.com', '4 Anzinger Parkway', '6588805451', '2z12dYKgiW', 1000);
insert into Customer (id, FirstName, MiddleName, LastName, Email, Address, Phone, LoginPassword, A_id) values (2100, 'Amy', 'Simonne', 'Sabine', 'ssabine2r@amazon.co.jp', '52666 Canary Way', '3556968115', 'MTXbhMVtb9', 1000);


SELECT * FROM Customer;


create TABLE Shipping_Agent
(
    id int primary key UNIQUE,
    FirstName varchar(45) NOT NULL,
    MiddleName varchar(45),
    LastName varchar(45) ,
    A_id int NOT NULL,
    foreign key(A_id) REFERENCES Admin(id),
    Rating FLOAT(3,2) NOT NULL CHECK(Rating>0.00 AND Rating<5.00)
    
);

desc Shipping_Agent;
INSERT INTO Shipping_Agent VALUE(4000,"Akhil","","Yadav",1000,3.00);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4001, 'Zola', 'Adrien', 'Deinert', 1000, 2.54);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4002, 'Antone', 'Giulio', 'McClurg', 1000, 2.96);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4003, 'Asher', 'Lexi', 'McMeanma', 1000, 2.96);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4004, 'Garreth', 'Isabelita', 'McCuis', 1000, 2.29);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4005, 'Emmi', 'Carolyn', 'Autie', 1000, 4.79);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4006, 'Faye', 'Ernestus', 'Deverose', 1000, 3.99);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4007, 'Aloise', 'Shelba', 'Cristofor', 1000, 4.41);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4008, 'Dillon', 'Eydie', 'Jago', 1000, 4.14);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4009, 'Mareah', 'Mathew', 'English', 1000, 2.81);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4010, 'Rudiger', 'Melantha', 'Thorbon', 1000, 4.75);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4011, 'Lynn', 'Buck', 'Coyte', 1000, 3.08);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4012, 'Ediva', 'Althea', 'Taber', 1000, 2.88);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4013, 'Jocelyne', 'Danya', 'Bellows', 1000, 2.15);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4014, 'Sarena', 'Bennie', 'Sipson', 1000, 2.91);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4015, 'Bearnard', 'Marjie', 'Pinnock', 1000, 1.43);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4016, 'Dicky', 'Minta', 'Derricoat', 1000, 4.66);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4017, 'Ignace', 'Annabell', 'Pacitti', 1000, 2.65);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4018, 'Stevy', 'Fleur', 'Grigorio', 1000, 3.5);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4019, 'Dallas', 'Oswald', 'Tooher', 1000, 3.12);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4020, 'Alecia', 'Carolyne', 'St. John', 1000, 1.57);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4021, 'Merrel', 'Isidora', 'Starford', 1000, 3.44);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4022, 'Ellis', 'Elayne', 'Wickmann', 1000, 2.21);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4023, 'Dorette', 'Elfrida', 'Fearnyough', 1000, 1.19);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4024, 'Chanda', 'Filmore', 'Catterall', 1000, 3.52);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4025, 'Francois', 'Kassey', 'Elgood', 1000, 1.52);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4026, 'Eben', 'Thomas', 'Aspinal', 1000, 3.48);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4027, 'Jammal', 'Constantine', 'Whodcoat', 1000, 1.11);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4028, 'Tabbie', 'Binny', 'Yusupov', 1000, 1.36);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4029, 'Jesus', 'Colette', 'Spink', 1000, 1.17);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4030, 'Tymon', 'Betta', 'Boldecke', 1000, 1.89);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4031, 'Hilario', 'Stanislas', 'Kitchingman', 1000, 2.28);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4032, 'Teddy', 'Silvie', 'McKitterick', 1000, 1.24);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4033, 'Adolf', 'Rosalynd', 'Sickling', 1000, 2.13);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4034, 'Brinna', 'Betty', 'Butland', 1000, 1.53);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4035, 'Cash', 'Shea', 'Chate', 1000, 3.85);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4036, 'Sherlocke', 'Jemie', 'ducarme', 1000, 1.25);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4037, 'Marice', 'Anette', 'Corrison', 1000, 1.53);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4038, 'Deni', 'Noelyn', 'Soans', 1000, 4.71);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4039, 'Allissa', 'Neal', 'Matzen', 1000, 3.48);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4040, 'Alvan', 'Carissa', 'I''anson', 1000, 2.72);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4041, 'Kristian', 'Margaret', 'Paoli', 1000, 3.21);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4042, 'Lenette', 'Ian', 'Voak', 1000, 1.34);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4043, 'Allister', 'Meir', 'Joddins', 1000, 3.78);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4044, 'Starlene', 'Inga', 'Gilfoy', 1000, 1.15);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4045, 'Marcus', 'Chrissy', 'Levey', 1000, 4.01);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4046, 'Odessa', 'Neron', 'Schulkins', 1000, 2.84);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4047, 'Clio', 'Stanton', 'Newns', 1000, 4.21);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4048, 'Hephzibah', 'Keenan', 'Redmond', 1000, 3.64);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4049, 'Roderick', 'Maegan', 'Primett', 1000, 2.6);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4050, 'Ricardo', 'Evvy', 'Wreath', 1000, 1.32);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4051, 'Sandra', 'Ardelia', 'Ivantyev', 1000, 4.97);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4052, 'Lucien', 'Carrol', 'Crummy', 1000, 2.34);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4053, 'Patsy', 'Arlinda', 'Shambroke', 1000, 3.72);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4054, 'Bridie', 'Cathryn', 'Bezzant', 1000, 3.61);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4055, 'Marlena', 'Bobbee', 'Bartlet', 1000, 3.67);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4056, 'Penni', 'Tova', 'Hirth', 1000, 1.21);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4057, 'Melva', 'Keir', 'Rollin', 1000, 1.58);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4058, 'Aggi', 'Giusto', 'Greenhead', 1000, 1.92);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4059, 'Cordy', 'Mic', 'Capun', 1000, 2.39);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4060, 'Chancey', 'Drucy', 'McGrudder', 1000, 2.38);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4061, 'Linell', 'Findley', 'Lillecrap', 1000, 4.34);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4062, 'Gerri', 'Corissa', 'Chatt', 1000, 2.61);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4063, 'Dee dee', 'Marietta', 'Tottle', 1000, 1.32);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4064, 'Saxe', 'Bourke', 'Yitzowitz', 1000, 1.31);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4065, 'Tucky', 'Kingsly', 'Verry', 1000, 2.31);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4066, 'Eldin', 'Dionisio', 'Philippon', 1000, 4.48);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4067, 'Elisabeth', 'Godard', 'Routley', 1000, 1.39);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4068, 'Starlin', 'Kassi', 'de Quesne', 1000, 4.14);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4069, 'Jud', 'Agathe', 'Tough', 1000, 1.54);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4070, 'Patrice', 'Grazia', 'Livingstone', 1000, 4.33);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4071, 'Torin', 'Sib', 'MacCrackan', 1000, 4.32);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4072, 'Kathi', 'Tansy', 'Abrahmer', 1000, 3.3);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4073, 'Dollie', 'Kettie', 'Tarburn', 1000, 3.51);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4074, 'Emalee', 'Renata', 'Raymond', 1000, 1.06);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4075, 'Rosaleen', 'Shay', 'Radeliffe', 1000, 4.74);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4076, 'Weylin', 'Nissie', 'Harsnipe', 1000, 3.43);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4077, 'Claudia', 'Penni', 'Suddaby', 1000, 2.09);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4078, 'Gracie', 'Melvyn', 'Bardill', 1000, 2.82);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4079, 'Fiona', 'Taddeusz', 'Penvarne', 1000, 2.83);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4080, 'Brit', 'Lamont', 'Dun', 1000, 3.52);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4081, 'Rafaellle', 'Alix', 'Engall', 1000, 2.17);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4082, 'Colline', 'Burton', 'Nickolls', 1000, 1.52);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4083, 'Phoebe', 'Pietrek', 'Scandrick', 1000, 1.34);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4084, 'Natividad', 'Missy', 'Kilalea', 1000, 1.79);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4085, 'Ike', 'Worthy', 'Moyles', 1000, 1.77);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4086, 'Kandace', 'Heindrick', 'Teacy', 1000, 2.52);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4087, 'Meredith', 'Tamarra', 'Rozenzweig', 1000, 3.44);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4088, 'Alayne', 'Jayne', 'Madle', 1000, 3.28);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4089, 'Hamilton', 'Reggi', 'Stoppe', 1000, 3.44);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4090, 'Carin', 'Hurleigh', 'Dyball', 1000, 3.28);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4091, 'Nataline', 'Marrissa', 'Hamments', 1000, 3.11);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4092, 'Garvin', 'Charyl', 'Pinckney', 1000, 4.03);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4093, 'Ashley', 'Mose', 'Lademann', 1000, 1.12);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4094, 'Cherida', 'Annie', 'Baseley', 1000, 3.41);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4095, 'Sonnnie', 'Banky', 'Arthur', 1000, 2.57);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4096, 'Laurena', 'Sherill', 'Dawnay', 1000, 4.79);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4097, 'Dexter', 'Shana', 'Durbyn', 1000, 4.64);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4098, 'Ham', 'Dennie', 'Keat', 1000, 2.75);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4099, 'Robert', 'Lawry', 'Renshell', 1000, 4.99);
insert into Shipping_Agent (id, FirstName, MiddleName, LastName, A_id, Rating) values (4100, 'Celka', 'Ricki', 'Corbin', 1000, 1.64);


SELECT * FROM Shipping_Agent;


create TABLE Category
(
    id int NOT NULL UNIQUE,
    Name varchar(45) NOT NULL,
    A_id int NOT NULL,
    primary key(id),
    foreign key(A_id) REFERENCES Admin(id)
);


desc Category;
INSERT INTO Category VALUE(3000,"Clothing",1000);
INSERT INTO Category VALUE(3001,"Grocery",1000);
INSERT INTO Category VALUE(3002,"Footwear",1000);
INSERT INTO Category VALUE(3003,"Electronics",1000);
INSERT INTO Category VALUE(3004,"Furniture",1000);
INSERT INTO Category VALUE(3005,"Toys",1000);
INSERT INTO Category VALUE(3006,"Personal care",1000);
INSERT INTO Category VALUE(3007,"Sports",1000);

SELECT * FROM Category;


create TABLE Product
(
    id int NOT NULL primary key,
    Name varchar(45) NOT NULL,
    Price int NOT NULL CHECK(Price>0),
    Stock int NOT NULL CHECK(Stock>0),
    A_id int NOT NULL,
    Cat_id int NOT NULL,
    foreign key(A_id) REFERENCES Admin(id),
    foreign key(Cat_id) REFERENCES Category(id) on DELETE CASCADE
);


desc Product;
INSERT INTO Product VALUE(6000,"T-shirt",799,64,1000,3000);
INSERT INTO Product VALUE(6001,"Jeans",999,32,1000,3000);
INSERT INTO Product VALUE(6002,"Track pants",499,20,1000,3000);
INSERT INTO Product VALUE(6003,"Casual Shirts",899,15,1000,3000);

INSERT INTO Product VALUE(6004,"Urad Dal",79,74,1000,3001);
INSERT INTO Product VALUE(6005,"Wheat Atta",99,53,1000,3001);
INSERT INTO Product VALUE(6006,"Maida",47,28,1000,3001);
INSERT INTO Product VALUE(6007,"Besan",88,47,1000,3001);

INSERT INTO Product VALUE(6008,"Sport Shoes",3499,70,1000,3002);
INSERT INTO Product VALUE(6009,"Casual Shoes",2000,99,1000,3002);
INSERT INTO Product VALUE(6010,"Sandals",700,79,1000,3002);
INSERT INTO Product VALUE(6011,"Formal Shoes",4000,74,1000,3002);

INSERT INTO Product VALUE(6012,"Earphones",1500,83,1000,3003);
INSERT INTO Product VALUE(6013,"Phones",7999,68,1000,3003);
INSERT INTO Product VALUE(6014,"Tablet",9999,88,1000,3003);
INSERT INTO Product VALUE(6015,"Printers",8999,97,1000,3003);

INSERT INTO Product VALUE(6016,"Dining Sets",27999,99,1000,3004);
INSERT INTO Product VALUE(6017,"TV Units",45999,89,1000,3004);
INSERT INTO Product VALUE(6018,"Bed",44999,79,1000,3004);
INSERT INTO Product VALUE(6019,"Sofa Sets",34999,69,1000,3004);

INSERT INTO Product VALUE(6020,"Soft Toys",780,82,1000,3005);
INSERT INTO Product VALUE(6021,"Puzzles",620,62,1000,3005);
INSERT INTO Product VALUE(6022,"Board Games",700,52,1000,3005);
INSERT INTO Product VALUE(6023,"Baby Toys",124,42,1000,3005);

INSERT INTO Product VALUE(6024,"Eye MakeUp",799,94,1000,3006);
INSERT INTO Product VALUE(6025,"Face MakeUp",799,22,1000,3006);
INSERT INTO Product VALUE(6026,"Face Washes",799,37,1000,3006);
INSERT INTO Product VALUE(6027,"Beard Oil",799,11,1000,3006);

INSERT INTO Product VALUE(6028,"Bat",2499,94,1000,3007);
INSERT INTO Product VALUE(6029,"Football",999,22,1000,3007);
INSERT INTO Product VALUE(6030,"Raquet",1599,37,1000,3007);
INSERT INTO Product VALUE(6031,"Basket Ball",799,11,1000,3007);

SELECT * FROM Product;



create TABLE Cart
(
     C_id int NOT NULL,
     foreign key(C_id) REFERENCES Customer(id) on DELETE CASCADE,
     primary key(C_id)
     
);

create TABLE cart_items
(

    cart_id int NOT NULL,
    p_id int NOT NULL,
    Quantity int NOT NULL CHECK(Quantity>0),
    Primary key(cart_id , P_id, Quantity), 
    foreign key(cart_id)
    REFERENCES Cart(C_id) on DELETE CASCADE,
    foreign key(p_id)
    REFERENCES Product(id) on DELETE CASCADE
);

desc Cart;
INSERT INTO Cart VALUE(2000);
insert into Cart (C_id) values (2001);
insert into Cart (C_id) values (2002);
insert into Cart (C_id) values (2003);
insert into Cart (C_id) values (2004);
insert into Cart (C_id) values (2005);
insert into Cart (C_id) values (2006);
insert into Cart (C_id) values (2007);
insert into Cart (C_id) values (2008);
insert into Cart (C_id) values (2009);
insert into Cart (C_id) values (2010);
insert into Cart (C_id) values (2011);
insert into Cart (C_id) values (2012);
insert into Cart (C_id) values (2013);
insert into Cart (C_id) values (2014);
insert into Cart (C_id) values (2015);
insert into Cart (C_id) values (2016);
insert into Cart (C_id) values (2017);
insert into Cart (C_id) values (2018);
insert into Cart (C_id) values (2019);
insert into Cart (C_id) values (2020);
insert into Cart (C_id) values (2021);
insert into Cart (C_id) values (2022);
insert into Cart (C_id) values (2023);
insert into Cart (C_id) values (2024);
insert into Cart (C_id) values (2025);
insert into Cart (C_id) values (2026);
insert into Cart (C_id) values (2027);
insert into Cart (C_id) values (2028);
insert into Cart (C_id) values (2029);
insert into Cart (C_id) values (2030);
insert into Cart (C_id) values (2031);
insert into Cart (C_id) values (2032);
insert into Cart (C_id) values (2033);
insert into Cart (C_id) values (2034);
insert into Cart (C_id) values (2035);
insert into Cart (C_id) values (2036);
insert into Cart (C_id) values (2037);
insert into Cart (C_id) values (2038);
insert into Cart (C_id) values (2039);
insert into Cart (C_id) values (2040);
insert into Cart (C_id) values (2041);
insert into Cart (C_id) values (2042);
insert into Cart (C_id) values (2043);
insert into Cart (C_id) values (2044);
insert into Cart (C_id) values (2045);
insert into Cart (C_id) values (2046);
insert into Cart (C_id) values (2047);
insert into Cart (C_id) values (2048);
insert into Cart (C_id) values (2049);
insert into Cart (C_id) values (2050);
insert into Cart (C_id) values (2051);
insert into Cart (C_id) values (2052);
insert into Cart (C_id) values (2053);
insert into Cart (C_id) values (2054);
insert into Cart (C_id) values (2055);
insert into Cart (C_id) values (2056);
insert into Cart (C_id) values (2057);
insert into Cart (C_id) values (2058);
insert into Cart (C_id) values (2059);
insert into Cart (C_id) values (2060);
insert into Cart (C_id) values (2061);
insert into Cart (C_id) values (2062);
insert into Cart (C_id) values (2063);
insert into Cart (C_id) values (2064);
insert into Cart (C_id) values (2065);
insert into Cart (C_id) values (2066);
insert into Cart (C_id) values (2067);
insert into Cart (C_id) values (2068);
insert into Cart (C_id) values (2069);
insert into Cart (C_id) values (2070);
insert into Cart (C_id) values (2071);
insert into Cart (C_id) values (2072);
insert into Cart (C_id) values (2073);
insert into Cart (C_id) values (2074);
insert into Cart (C_id) values (2075);
insert into Cart (C_id) values (2076);
insert into Cart (C_id) values (2077);
insert into Cart (C_id) values (2078);
insert into Cart (C_id) values (2079);
insert into Cart (C_id) values (2080);
insert into Cart (C_id) values (2081);
insert into Cart (C_id) values (2082);
insert into Cart (C_id) values (2083);
insert into Cart (C_id) values (2084);
insert into Cart (C_id) values (2085);
insert into Cart (C_id) values (2086);
insert into Cart (C_id) values (2087);
insert into Cart (C_id) values (2088);
insert into Cart (C_id) values (2089);
insert into Cart (C_id) values (2090);
insert into Cart (C_id) values (2091);
insert into Cart (C_id) values (2092);
insert into Cart (C_id) values (2093);
insert into Cart (C_id) values (2094);
insert into Cart (C_id) values (2095);
insert into Cart (C_id) values (2096);
insert into Cart (C_id) values (2097);
insert into Cart (C_id) values (2098);
insert into Cart (C_id) values (2099);
insert into Cart (C_id) values (2100);

SELECT * FROM Cart;



desc cart_items;
INSERT INTO cart_items VALUE(2000,6000,2);
insert into cart_items (cart_id, p_id, Quantity) values (2001, 6011, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2002, 6023, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2003, 6008, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2004, 6003, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2005, 6014, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2006, 6027, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2007, 6024, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2008, 6016, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2009, 6031, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2010, 6005, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2011, 6022, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2012, 6005, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2013, 6004, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2014, 6022, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2015, 6017, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2016, 6027, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2017, 6009, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2018, 6009, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2019, 6004, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2020, 6021, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2021, 6031, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2022, 6023, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2023, 6020, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2024, 6021, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2025, 6026, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2026, 6004, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2027, 6017, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2028, 6021, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2029, 6012, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2030, 6013, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2031, 6029, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2032, 6008, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2033, 6012, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2034, 6028, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2035, 6023, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2036, 6025, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2037, 6028, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2038, 6010, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2039, 6024, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2040, 6013, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2041, 6024, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2042, 6017, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2043, 6015, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2044, 6017, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2045, 6024, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2046, 6007, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2047, 6014, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2048, 6028, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2049, 6024, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2050, 6018, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2051, 6031, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2052, 6001, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2053, 6000, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2054, 6007, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2055, 6014, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2056, 6018, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2057, 6023, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2058, 6025, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2059, 6028, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2060, 6018, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2061, 6015, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2062, 6011, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2063, 6016, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2064, 6012, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2065, 6030, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2066, 6019, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2067, 6022, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2068, 6007, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2069, 6000, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2070, 6010, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2071, 6004, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2072, 6016, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2073, 6017, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2074, 6006, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2075, 6009, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2076, 6016, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2077, 6008, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2078, 6026, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2079, 6014, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2080, 6017, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2081, 6022, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2082, 6000, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2083, 6020, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2084, 6031, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2085, 6023, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2086, 6017, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2087, 6019, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2088, 6019, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2089, 6025, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2090, 6029, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2091, 6001, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2092, 6000, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2093, 6031, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2094, 6021, 5);
insert into cart_items (cart_id, p_id, Quantity) values (2095, 6010, 1);
insert into cart_items (cart_id, p_id, Quantity) values (2096, 6030, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2097, 6028, 4);
insert into cart_items (cart_id, p_id, Quantity) values (2098, 6021, 3);
insert into cart_items (cart_id, p_id, Quantity) values (2099, 6011, 2);
insert into cart_items (cart_id, p_id, Quantity) values (2100, 6002, 1);

SELECT * FROM cart_items;



  
create TABLE Orders
(
    id int NOT NULL UNIQUE,
    Address varchar(300) NOT NULL,
    Total int NOT NULL CHECK(Total>0),
    Discount int NOT NULL CHECK(Discount>=0),
    S_id int NOT NULL,
    foreign key(S_id) REFERENCES Shipping_Agent(id),
    Delivery_Time int NOT NULL,
    Mode_of_Payment varchar(15) NOT NULL,
    A_id int NOT NULL,
    foreign key(A_id) REFERENCES Admin(id),
    C_id int NOT NULL,
    foreign key(C_id) REFERENCES Customer(id) on DELETE CASCADE,
    primary key(id)
    
);


create TABLE order_items
(
    order_id int NOT NULL,
    p_id int NOT NULL,
    Quantity int NOT NULL CHECK(Quantity>0),
    Primary key(order_id , P_id, Quantity), 
    foreign key(order_id)
    REFERENCES Orders(id) on DELETE CASCADE,
    foreign key(p_id)
    REFERENCES Product(id) 
    
);


desc Orders;
INSERT INTO Orders VALUE(5000,"Karol Bagh New Delhi",5200,800,4000,4,"Credit Card", 1000, 2000);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5001, '2nd Floor', 1712, 113, 4001, 1, 'Credit Card', 1000, 2001);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5002, 'Room 890', 1531, 273, 4002, 0, 'Credit Card', 1000, 2002);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5003, 'PO Box 14374', 4013, 304, 4003, 1, 'COD', 1000, 2003);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5004, 'Suite 58', 1848, 360, 4004, 0, 'Credit Card', 1000, 2004);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5005, 'Suite 3', 3868, 158, 4005, 1, 'Credit Card', 1000, 2005);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5006, 'Suite 45', 4890, 268, 4006, 0, 'COD', 1000, 2006);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5007, 'Apt 434', 4232, 392, 4007, 1, 'Credit Card', 1000, 2007);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5008, '13th Floor', 2204, 219, 4008, 0, 'Credit Card', 1000, 2008);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5009, 'PO Box 80397', 3425, 375, 4009, 1, 'COD', 1000, 2009);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5010, 'PO Box 84190', 1980, 101, 4010, 0, 'Credit Card', 1000, 2010);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5011, 'PO Box 54900', 1279, 260, 4011, 1, 'Credit Card', 1000, 2011);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5012, 'Room 96', 3473, 196, 4012, 0, 'COD', 1000, 2012);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5013, 'PO Box 83475', 3537, 251, 4013, 1, 'Credit Card', 1000, 2013);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5014, '15th Floor', 4264, 114, 4014, 0, 'Credit Card', 1000, 2014);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5015, 'Room 904', 3878, 267, 4015, 1, 'COD', 1000, 2015);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5016, 'Room 1275', 2847, 280, 4016, 0, 'Credit Card', 1000, 2016);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5017, '6th Floor', 5077, 350, 4017, 1, 'Credit Card', 1000, 2017);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5018, 'Room 1657', 3584, 286, 4018, 0, 'COD', 1000, 2018);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5019, 'PO Box 40230', 4894, 309, 4019, 1, 'Credit Card', 1000, 2019);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5020, 'Suite 90', 4212, 128, 4020, 0, 'Credit Card', 1000, 2020);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5021, '4th Floor', 1249, 239, 4021, 1, 'COD', 1000, 2021);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5022, 'Apt 419', 4117, 322, 4022, 0, 'Credit Card', 1000, 2022);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5023, 'Room 254', 3463, 163, 4023, 1, 'Credit Card', 1000, 2023);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5024, 'Apt 596', 2665, 317, 4024, 0, 'COD', 1000, 2024);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5025, '19th Floor', 3629, 143, 4025, 1, 'Credit Card', 1000, 2025);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5026, 'Suite 3', 1795, 365, 4026, 0, 'Credit Card', 1000, 2026);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5027, 'PO Box 76785', 3077, 217, 4027, 1, 'COD', 1000, 2027);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5028, '16th Floor', 1364, 394, 4028, 0, 'Credit Card', 1000, 2028);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5029, '3rd Floor', 4506, 387, 4029, 1, 'Credit Card', 1000, 2029);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5030, 'PO Box 21689', 3213, 310, 4030, 0, 'COD', 1000, 2030);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5031, '17th Floor', 2495, 279, 4031, 1, 'Credit Card', 1000, 2031);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5032, '12th Floor', 4250, 328, 4032, 0, 'Credit Card', 1000, 2032);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5033, 'Room 1171', 2366, 139, 4033, 1, 'COD', 1000, 2033);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5034, '14th Floor', 2781, 230, 4034, 0, 'Credit Card', 1000, 2034);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5035, 'Room 254', 1661, 272, 4035, 1, 'Credit Card', 1000, 2035);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5036, '2nd Floor', 3840, 123, 4036, 0, 'COD', 1000, 2036);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5037, 'PO Box 75659', 805, 214, 4037, 1, 'Credit Card', 1000, 2037);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5038, 'Room 1963', 5218, 137, 4038, 0, 'Credit Card', 1000, 2038);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5039, '2nd Floor', 5006, 328, 4039, 1, 'COD', 1000, 2039);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5040, 'Suite 79', 2312, 240, 4040, 0, 'Credit Card', 1000, 2040);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5041, 'Apt 1622', 2371, 292, 4041, 1, 'Credit Card', 1000, 2041);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5042, '18th Floor', 2343, 120, 4042, 0, 'COD', 1000, 2042);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5043, 'Suite 49', 5088, 177, 4043, 1, 'Credit Card', 1000, 2043);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5044, 'PO Box 57945', 2066, 315, 4044, 0, 'Credit Card', 1000, 2044);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5045, 'PO Box 80803', 2982, 266, 4045, 1, 'COD', 1000, 2045);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5046, 'PO Box 59630', 5278, 137, 4046, 0, 'Credit Card', 1000, 2046);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5047, 'Apt 296', 4410, 112, 4047, 1, 'Credit Card', 1000, 2047);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5048, 'Room 854', 5178, 200, 4048, 0, 'COD', 1000, 2048);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5049, 'Room 1882', 5062, 230, 4049, 1, 'Credit Card', 1000, 2049);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5050, '13th Floor', 4910, 214, 4050, 0, 'Credit Card', 1000, 2050);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5051, 'Suite 52', 4477, 179, 4051, 1, 'COD', 1000, 2051);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5052, 'Apt 1165', 4670, 223, 4052, 0, 'Credit Card', 1000, 2052);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5053, 'PO Box 19969', 3366, 219, 4053, 1, 'Credit Card', 1000, 2053);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5054, 'Suite 97', 1388, 285, 4054, 0, 'COD', 1000, 2054);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5055, 'PO Box 37060', 2147, 130, 4055, 1, 'Credit Card', 1000, 2055);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5056, '5th Floor', 2019, 333, 4056, 0, 'Credit Card', 1000, 2056);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5057, 'Suite 40', 2731, 331, 4057, 1, 'COD', 1000, 2057);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5058, 'Room 1751', 3019, 280, 4058, 0, 'Credit Card', 1000, 2058);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5059, 'Room 973', 1288, 310, 4059, 1, 'Credit Card', 1000, 2059);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5060, 'Suite 81', 3035, 356, 4060, 0, 'COD', 1000, 2060);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5061, 'Suite 95', 1836, 127, 4061, 1, 'Credit Card', 1000, 2061);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5062, 'PO Box 29240', 3914, 193, 4062, 0, 'Credit Card', 1000, 2062);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5063, 'Suite 69', 3734, 265, 4063, 1, 'COD', 1000, 2063);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5064, 'Room 929', 1376, 102, 4064, 0, 'Credit Card', 1000, 2064);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5065, 'Suite 8', 3225, 191, 4065, 1, 'Credit Card', 1000, 2065);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5066, '12th Floor', 3938, 229, 4066, 0, 'COD', 1000, 2066);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5067, 'Apt 1904', 4454, 159, 4067, 1, 'Credit Card', 1000, 2067);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5068, 'Room 871', 4252, 398, 4068, 0, 'Credit Card', 1000, 2068);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5069, 'Apt 444', 1402, 160, 4069, 1, 'COD', 1000, 2069);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5070, 'PO Box 36045', 4621, 163, 4070, 0, 'Credit Card', 1000, 2070);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5071, '16th Floor', 5018, 291, 4071, 1, 'Credit Card', 1000, 2071);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5072, '2nd Floor', 4954, 366, 4072, 0, 'COD', 1000, 2072);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5073, '1st Floor', 3641, 184, 4073, 1, 'Credit Card', 1000, 2073);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5074, 'Apt 1391', 3943, 340, 4074, 0, 'Credit Card', 1000, 2074);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5075, '17th Floor', 2507, 132, 4075, 1, 'COD', 1000, 2075);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5076, 'PO Box 53377', 3986, 252, 4076, 0, 'Credit Card', 1000, 2076);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5077, 'Apt 410', 2858, 210, 4077, 1, 'Credit Card', 1000, 2077);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5078, 'Apt 1104', 1259, 266, 4078, 0, 'COD', 1000, 2078);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5079, 'Apt 900', 3404, 370, 4079, 1, 'Credit Card', 1000, 2079);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5080, 'PO Box 61981', 3943, 141, 4080, 0, 'Credit Card', 1000, 2080);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5081, 'PO Box 46012', 1973, 358, 4081, 1, 'COD', 1000, 2081);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5082, 'Apt 1467', 2723, 235, 4082, 0, 'Credit Card', 1000, 2082);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5083, '14th Floor', 1247, 141, 4083, 1, 'Credit Card', 1000, 2083);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5084, 'Room 1243', 1778, 398, 4084, 0, 'COD', 1000, 2084);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5085, 'Room 1279', 1739, 126, 4085, 1, 'Credit Card', 1000, 2085);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5086, 'Room 357', 2474, 325, 4086, 0, 'Credit Card', 1000, 2086);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5087, 'Suite 78', 1231, 325, 4087, 1, 'COD', 1000, 2087);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5088, 'Room 1820', 1180, 246, 4088, 0, 'Credit Card', 1000, 2088);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5089, 'Room 1755', 3980, 182, 4089, 1, 'Credit Card', 1000, 2089);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5090, 'Suite 1', 4160, 237, 4090, 0, 'COD', 1000, 2090);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5091, '9th Floor', 1221, 223, 4091, 1, 'Credit Card', 1000, 2091);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5092, 'Apt 212', 1921, 164, 4092, 0, 'Credit Card', 1000, 2092);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5093, 'PO Box 37883', 3362, 356, 4093, 1, 'COD', 1000, 2093);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5094, '3rd Floor', 4890, 193, 4094, 0, 'Credit Card', 1000, 2094);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5095, 'Room 374', 3430, 353, 4095, 1, 'Credit Card', 1000, 2095);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5096, 'Suite 60', 1737, 221, 4096, 0, 'COD', 1000, 2096);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5097, 'Apt 1652', 1180, 314, 4097, 1, 'Credit Card', 1000, 2097);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5098, 'PO Box 68479', 2601, 353, 4098, 0, 'Credit Card', 1000, 2098);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5099, 'Suite 14', 4712, 155, 4099, 1, 'COD', 1000, 2099);
insert into Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) values (5100, 'Apt 578', 2863, 121, 4100, 0, 'Credit Card', 1000, 2100);

SELECT * FROM Orders;


desc order_items;
insert into order_items (order_id, p_id, Quantity) values (5000, 6007, 2);
insert into order_items (order_id, p_id, Quantity) values (5001, 6004, 4);
insert into order_items (order_id, p_id, Quantity) values (5002, 6016, 3);
insert into order_items (order_id, p_id, Quantity) values (5003, 6015, 3);
insert into order_items (order_id, p_id, Quantity) values (5004, 6005, 3);
insert into order_items (order_id, p_id, Quantity) values (5005, 6030, 1);
insert into order_items (order_id, p_id, Quantity) values (5006, 6022, 2);
insert into order_items (order_id, p_id, Quantity) values (5007, 6029, 5);
insert into order_items (order_id, p_id, Quantity) values (5008, 6031, 3);
insert into order_items (order_id, p_id, Quantity) values (5009, 6031, 4);
insert into order_items (order_id, p_id, Quantity) values (5010, 6026, 1);
insert into order_items (order_id, p_id, Quantity) values (5011, 6028, 2);
insert into order_items (order_id, p_id, Quantity) values (5012, 6025, 2);
insert into order_items (order_id, p_id, Quantity) values (5013, 6006, 1);
insert into order_items (order_id, p_id, Quantity) values (5014, 6028, 4);
insert into order_items (order_id, p_id, Quantity) values (5015, 6000, 1);
insert into order_items (order_id, p_id, Quantity) values (5016, 6023, 1);
insert into order_items (order_id, p_id, Quantity) values (5017, 6004, 5);
insert into order_items (order_id, p_id, Quantity) values (5018, 6009, 4);
insert into order_items (order_id, p_id, Quantity) values (5019, 6007, 5);
insert into order_items (order_id, p_id, Quantity) values (5020, 6006, 1);
insert into order_items (order_id, p_id, Quantity) values (5021, 6013, 4);
insert into order_items (order_id, p_id, Quantity) values (5022, 6023, 4);
insert into order_items (order_id, p_id, Quantity) values (5023, 6003, 3);
insert into order_items (order_id, p_id, Quantity) values (5024, 6028, 5);
insert into order_items (order_id, p_id, Quantity) values (5025, 6025, 3);
insert into order_items (order_id, p_id, Quantity) values (5026, 6026, 4);
insert into order_items (order_id, p_id, Quantity) values (5027, 6007, 2);
insert into order_items (order_id, p_id, Quantity) values (5028, 6008, 1);
insert into order_items (order_id, p_id, Quantity) values (5029, 6006, 4);
insert into order_items (order_id, p_id, Quantity) values (5030, 6000, 3);
insert into order_items (order_id, p_id, Quantity) values (5031, 6024, 4);
insert into order_items (order_id, p_id, Quantity) values (5032, 6029, 4);
insert into order_items (order_id, p_id, Quantity) values (5033, 6024, 4);
insert into order_items (order_id, p_id, Quantity) values (5034, 6004, 4);
insert into order_items (order_id, p_id, Quantity) values (5035, 6005, 1);
insert into order_items (order_id, p_id, Quantity) values (5036, 6027, 3);
insert into order_items (order_id, p_id, Quantity) values (5037, 6015, 1);
insert into order_items (order_id, p_id, Quantity) values (5038, 6015, 4);
insert into order_items (order_id, p_id, Quantity) values (5039, 6006, 5);
insert into order_items (order_id, p_id, Quantity) values (5040, 6014, 1);
insert into order_items (order_id, p_id, Quantity) values (5041, 6025, 5);
insert into order_items (order_id, p_id, Quantity) values (5042, 6012, 4);
insert into order_items (order_id, p_id, Quantity) values (5043, 6003, 3);
insert into order_items (order_id, p_id, Quantity) values (5044, 6020, 5);
insert into order_items (order_id, p_id, Quantity) values (5045, 6018, 1);
insert into order_items (order_id, p_id, Quantity) values (5046, 6001, 5);
insert into order_items (order_id, p_id, Quantity) values (5047, 6022, 3);
insert into order_items (order_id, p_id, Quantity) values (5048, 6009, 4);
insert into order_items (order_id, p_id, Quantity) values (5049, 6029, 1);
insert into order_items (order_id, p_id, Quantity) values (5050, 6024, 5);
insert into order_items (order_id, p_id, Quantity) values (5051, 6020, 4);
insert into order_items (order_id, p_id, Quantity) values (5052, 6016, 1);
insert into order_items (order_id, p_id, Quantity) values (5053, 6002, 2);
insert into order_items (order_id, p_id, Quantity) values (5054, 6022, 1);
insert into order_items (order_id, p_id, Quantity) values (5055, 6029, 1);
insert into order_items (order_id, p_id, Quantity) values (5056, 6029, 4);
insert into order_items (order_id, p_id, Quantity) values (5057, 6030, 2);
insert into order_items (order_id, p_id, Quantity) values (5058, 6004, 1);
insert into order_items (order_id, p_id, Quantity) values (5059, 6015, 3);
insert into order_items (order_id, p_id, Quantity) values (5060, 6023, 2);
insert into order_items (order_id, p_id, Quantity) values (5061, 6019, 3);
insert into order_items (order_id, p_id, Quantity) values (5062, 6030, 4);
insert into order_items (order_id, p_id, Quantity) values (5063, 6023, 2);
insert into order_items (order_id, p_id, Quantity) values (5064, 6029, 5);
insert into order_items (order_id, p_id, Quantity) values (5065, 6006, 2);
insert into order_items (order_id, p_id, Quantity) values (5066, 6005, 5);
insert into order_items (order_id, p_id, Quantity) values (5067, 6025, 4);
insert into order_items (order_id, p_id, Quantity) values (5068, 6024, 2);
insert into order_items (order_id, p_id, Quantity) values (5069, 6014, 2);
insert into order_items (order_id, p_id, Quantity) values (5070, 6029, 1);
insert into order_items (order_id, p_id, Quantity) values (5071, 6003, 2);
insert into order_items (order_id, p_id, Quantity) values (5072, 6013, 1);
insert into order_items (order_id, p_id, Quantity) values (5073, 6029, 1);
insert into order_items (order_id, p_id, Quantity) values (5074, 6012, 5);
insert into order_items (order_id, p_id, Quantity) values (5075, 6017, 2);
insert into order_items (order_id, p_id, Quantity) values (5076, 6006, 5);
insert into order_items (order_id, p_id, Quantity) values (5077, 6005, 1);
insert into order_items (order_id, p_id, Quantity) values (5078, 6019, 4);
insert into order_items (order_id, p_id, Quantity) values (5079, 6024, 2);
insert into order_items (order_id, p_id, Quantity) values (5080, 6006, 3);
insert into order_items (order_id, p_id, Quantity) values (5081, 6022, 1);
insert into order_items (order_id, p_id, Quantity) values (5082, 6002, 1);
insert into order_items (order_id, p_id, Quantity) values (5083, 6016, 4);
insert into order_items (order_id, p_id, Quantity) values (5084, 6017, 5);
insert into order_items (order_id, p_id, Quantity) values (5085, 6013, 1);
insert into order_items (order_id, p_id, Quantity) values (5086, 6021, 5);
insert into order_items (order_id, p_id, Quantity) values (5087, 6010, 3);
insert into order_items (order_id, p_id, Quantity) values (5088, 6016, 5);
insert into order_items (order_id, p_id, Quantity) values (5089, 6011, 5);
insert into order_items (order_id, p_id, Quantity) values (5090, 6021, 5);
insert into order_items (order_id, p_id, Quantity) values (5091, 6009, 1);
insert into order_items (order_id, p_id, Quantity) values (5092, 6021, 1);
insert into order_items (order_id, p_id, Quantity) values (5093, 6014, 2);
insert into order_items (order_id, p_id, Quantity) values (5094, 6031, 3);
insert into order_items (order_id, p_id, Quantity) values (5095, 6004, 1);
insert into order_items (order_id, p_id, Quantity) values (5096, 6004, 3);
insert into order_items (order_id, p_id, Quantity) values (5097, 6006, 2);
insert into order_items (order_id, p_id, Quantity) values (5098, 6013, 2);
insert into order_items (order_id, p_id, Quantity) values (5099, 6024, 1);
insert into order_items (order_id, p_id, Quantity) values (5100, 6001, 4);

SELECT * FROM order_items;



CREATE INDEX idx_customers_phone ON Customer(Phone);

CREATE INDEX idx_customers_email_id ON Customer(Email);

CREATE INDEX idx_orders_product_id ON Order_items(p_id);

CREATE INDEX idx_product_product_name ON Product(Name);

CREATE INDEX idx_cart_product_id ON Cart(p_id);

CREATE INDEX idx_cart_customer_id ON Cart(c_id);


use ShipShop;




DROP VIEW IF EXISTS order_summary;
CREATE VIEW order_summary AS
SELECT o.id AS order_id, c.FirstName AS customer_name, SUM(oi.Quantity * p.Price) AS total_amount
FROM Orders o
JOIN Customer c ON o.C_id = c.id
JOIN order_items oi ON o.id = oi.order_id
JOIN Product p ON oi.p_id = p.id
GROUP BY o.id, c.FirstName, c.LastName;

SELECT * FROM order_summary;



GRANT SELECT ON ShipShop.* TO 'root'@'localhost';

