CREATE DATABASE XBOX_DB;

USE XBOX_DB;

CREATE TABLE USERS (
   id int auto_increment primary key,
   username VARCHAR(50) NOT NULL,
   password VARCHAR(255) NOT NULL,
   email VARCHAR(100) NOT NULL,
   UNIQUE(username)
);

INSERT INTO xbox_db.users (username,password,email) VALUES ('semper','123456','semper@gmail.com');
INSERT INTO xbox_db.users (username,password,email) VALUES ('tincho','123456','tincho@gmail.com');
INSERT INTO xbox_db.users (username,password,email) VALUES ('pedro','123456','pedro@gmail.com');
INSERT INTO xbox_db.users (username,password,email) VALUES ('pablo','123456','pablo@gmail.com');
INSERT INTO xbox_db.users (username,password,email) VALUES ('juan','123456','juan@gmail.com');

SELECT * FROM XBOX_DB.USERS;

 CREATE TABLE catalogo (
   id INT auto_increment primary key,
   nombre VARCHAR(50) NOT NULL,
   precio DOUBLE,
   descargas INT UNSIGNED, 
   urlDownload VARCHAR(255) NOT NULL,
   urlImg VARCHAR(255) NOT NULL,
   UNIQUE(nombre)
);

SELECT * FROM XBOX_DB.CATALOGO;


SELECT * FROM XBOX_DB.catalogo;

INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Fallout 4',4.8,85,'https://www.xbox.com/es-AR/games/store/fallout-4/C3KLDKZBHNCZ/0001','../assets/fallout.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Call Of Duty - Modern Warfare 3',3.8,55,'https://www.xbox.com/es-ar/games/store/call-of-duty-modern-warfare-iii-lote-multigeneracion/9nb54xtf084m','../assets/callOfDuty.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Assassins Creed Shadows',2.4,70,'https://www.xbox.com/es-AR/games/store/p/9N9P758CH65M','../assets/AssassinsCreedShadows.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Star Wars Out Laws',2.9,65,'https://www.xbox.com/es-AR/games/star-wars-outlaws','../assets/StarWars_Outlaws.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Immortals Of Aveum',4.5,45,'https://www.xbox.com/es-AR/games/store/Immortals-of-Aveum/9NSD4HTWM8HT','../assets/ImmortalsOfAveum.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Microsoft Solitaire Collection',3.0,75,'https://www.xbox.com/es-AR/games/store/microsoft-solitaire-collection/9wzdncrfhwd2','../assets/MicrosoftSolitaireCollection.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Manor Lords',3.3,60,'https://www.xbox.com/es-AR/games/store/manor-lords/9p5f966564fs','../assets/ManorLords.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Warhammer 40000: Space Marine 2',1.5,95,'https://www.xbox.com/es-AR/games/warhammer','../assets/Warhammer40000SpaceMarine2.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('DRAGON BALL Xenoverse 2',2.7,80,'https://www.xbox.com/es-AR/games/store/dragon-ball-xenoverse-2/bx03760d0qgn','../assets/DRAGONBALLXenoverse2.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('World of Warcraft: Cataclysm Classic',4.2,50,'https://wowclassic.blizzard.com/en-us/?utm_source=xbox&utm_campaign=xbox+placement','../assets/WorldofWarcraftCataclysmClassic.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('EA SPORTS College Football 25',4.8,85,'https://www.xbox.com/es-AR/games/store/ea-sports-college-football-25/9PDWR1VW0Z4R','../assets/EASPORTSCollegeFootball25.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Diablo® IV: Season 4 Loot Reborn',3.8,55,'https://www.xbox.com/es-AR/games/diablo-iv#whatsnew','../assets/DiabloIVLootReborn.jpg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Max: The Curse of Brotherhood',2.4,70,'https://www.xbox.com/es-AR/games/store/max-the-curse-of-brotherhood/C0SFCF4PBRSZ/0001','../assets/MaxTheCurseofBrotherhood.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Assassins Creed Revelations',2.9,65,'https://www.xbox.com/es-AR/games/store/assassins-creed-revelations/BX2JJ48F0CKR/0001','../assets/gallery-img1.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('HELLBLADE II',4.5,45,'https://www.xbox.com/es-ar/games/store/senuas-saga-hellblade-ii/9pmbb7nghv95','../assets/senuaSaga.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('STARW WARS - Jedi Survivor',3.0,75,'https://www.xbox.com/es-AR/games/store/star-wars-jedi-survivor/9PGC82V0DXFS/0010','../assets/starwarsJediSurvivor.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('GOONS - LEYENDS & MAYHEM',3.3,60,'https://www.xbox.com/es-AR/games/store/goons-legends-mayhem/9P24MSSJB8F9/0010','../assets/slider-img.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('HALO 5 GUARDIANS',1.5,95,'https://www.xbox.com/es-ar/games/store/halo-5-guardians/brrc2bp0g9p0','../assets/halo5guardiansback.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('ELDEN RING - Shadow of the Erdtree',2.7,80,'https://www.xbox.com/es-AR/games/store/elden-ring-shadow-of-the-erdtree-edition/9PMHP6JSXGDH/0010','../assets/eldenRing.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Final Fantasy XIV Online',4.2,50,'https://www.xbox.com/es-AR/games/store/final-fantasy-xiv-online-free-trial/9NGN7D8GJN02/0010','../assets/finalFantasyXIV.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('World Of Warcraft - Shadowlands',4.8,85,'https://worldofwarcraft.blizzard.com/es-es/news/23840670/%C2%A1regresa-a-wow-y-consigue-shadowlands-gratis','../assets/worldOfWarcraft.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Fornite',3.8,55,'https://www.xbox.com/es-AR/games/store/fortnite/BT5P2X999VH2/0001','../assets/gallery-img3.png');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('HITMAN World of Assassination 1',2.4,70,'https://www.xbox.com/es-AR/games/store/hitman-world-of-assassination-part-one/9NT2824TW8VR/0010','../assets/HITMANWorldofAssassinationPartOne.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Jurassic World Evolution 2',2.9,65,'https://www.xbox.com/es-AR/games/store/jurassic-world-evolution-2/9MWHMJ0SRBXV/0010','../assets/JurassicWorldEvolution2.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Dirt Racing 2023 Ultimate Edition',4.5,45,'https://www.xbox.com/es-AR/games/store/world-of-outlaws-dirt-racing-2023-ultimate-edition/9MW7D0DJ065Z/0010','../assets/DirtRacing2023.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('World War Z',3.0,75,'https://www.xbox.com/es-AR/games/store/world-war-z/BWQ5FC9WDJ6H/0001','../assets/WorldWarZ.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Mortal Kombat 11',3.3,60,'https://www.xbox.com/es-AR/games/store/mortal-kombat-11/BTC0L0BW6LWC/0001','../assets/MortalKombat11.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('RESIDENT EVIL 2',1.5,95,'https://www.xbox.com/es-AR/games/store/resident-evil-2/BWMH951M3G3P/0001','../assets/RESIDENTEVIL2.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Forza Horizon 5',2.7,80,'https://www.xbox.com/es-AR/games/store/forza-horizon-5/9NNX1VVR3KNQ/0010','../assets/ForzaHorizon5.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Zombie Army 4: Dead War',5.7,40,'https://www.xbox.com/es-AR/games/store/zombie-army-4-dead-war/9PLSCHRN5715/0010','../assets/ZombieArmy4DeadWar.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Gears of War 4',2.7,80,'https://www.xbox.com/es-AR/games/store/gears-of-war-4/9NBLGGH4PBBM/0010','../assets/GearsofWar4.jpeg');
INSERT INTO catalogo(nombre,precio,descargas,urlDownload,urlImg) VALUES ('Among Us',6.2,70,'https://www.xbox.com/es-AR/games/store/among-us/9NG07QJNK38J/0010','../assets/AmongUs.jpeg');