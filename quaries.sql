CREATE TABLE pokemon(
  Number     INTEGER,
  Name       TEXT PRIMARY KEY,
  Type_1     TEXT,
  Type_2     TEXT,
  Total      INTEGER,
  HP         INTEGER,
  Attack     INTEGER,
  Defense    INTEGER,
  Sp_Atk     INTEGER,
  Sp_Def     INTEGER,
  Speed      INTEGER,
  Generation INTEGER,
  Legendary  TEXT
);

INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (1,'Bulbasaur','Grass','Poison',318,45,49,49,65,65,45,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (2,'Ivysaur','Grass','Poison',405,60,62,63,80,80,60,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (3,'Venusaur','Grass','Poison',525,80,82,83,100,100,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (3,'VenusaurMega Venusaur','Grass','Poison',625,80,100,123,122,120,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (4,'Charmander','Fire',NULL,309,39,52,43,60,50,65,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (5,'Charmeleon','Fire',NULL,405,58,64,58,80,65,80,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'Charizard','Fire','Flying',534,78,84,78,109,85,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'CharizardMega Charizard X','Fire','Dragon',634,78,130,111,130,85,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (6,'CharizardMega Charizard Y','Fire','Flying',634,78,104,78,159,115,100,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (7,'Squirtle','Water',NULL,314,44,48,65,50,64,43,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (8,'Wartortle','Water',NULL,405,59,63,80,65,80,58,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (9,'Blastoise','Water',NULL,530,79,83,100,85,105,78,1,'False');
INSERT INTO pokemon(Number,Name,Type_1,Type_2,Total,HP,Attack,Defense,Sp_Atk,Sp_Def,Speed,Generation,Legendary) VALUES (9,'BlastoiseMega Blastoise','Water',NULL,630,79,103,120,135,115,78,1,'False');

SELECT 
    AVG(attack) AS average_attack, 
    MAX(attack) AS max_attack, 
    MIN(attack) AS min_attack,
    AVG(defense) AS average_defense, 
    MAX(defense) AS max_defense, 
    MIN(defense) AS min_defense
FROM 
    pokemon;

SELECT 
    Name,
    AVG(attack) AS avg_attack,
    AVG(defense) AS avg_defense
FROM 
    pokemon
GROUP BY 
    Type_2 = 'Poison' 
HAVING 
    AVG(attack) > 70;

SELECT 
    name,
    CASE 
        WHEN attack > 100 THEN 'High Attack'
        WHEN defense > 100 THEN 'High Defense'
        ELSE 'Balanced' 
    END AS category
FROM 
    pokemon;

SELECT 
    name, 
    Type_2, 
    hp, 
    attack
FROM 
    pokemon
WHERE 
    (hp > 70 AND attack > 70) OR Type_2 = 'Fire';
