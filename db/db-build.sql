CREATE TABLE public.unlocks
(
    id integer primary key ,
    title varchar not null,
	description varchar,
    peopleRequired real,
    currencYRequired real,
    peopleMultiplier real,
    currencyMultiplier real,
	peopleCost real,
	currencyCost real,
	prerequisite integer,
	
	FOREIGN KEY (prerequisite) REFERENCES unlocks(id)
);

CREATE TABLE user(
    id varchar(35) PRIMARY KEY,
    password varchar(35),
    empireName varchar(50),
    currencyName varchar(35)
);

CREATE TABLE planet(
    id INT PRIMARY KEY, 
    name varchar(40),
    user varchar(35),
    curreny real,
    people real,
    currencyPerSecond real,
    peoplePerSecond real,

    FOREIGN KEY (name) REFERENCES user(id)
);


CREATE TABLE leaderboard(
    userId varchar(35) PRIMARY KEY,
    currency real,
    people real,

    FOREIGN KEY (userId) REFERENCES user(id)
);


INSERT INTO "unlocks" VALUES
    (1.0,'Sex','Fornication for the nation',2.0,0.0,0.25,0.0,0.0,0.0,NULL),
    (2.0,'Language','wot',100.0,0.0,0.1,0.0,0.0,0.0,1),
    (3.0,'Stone Tools','Stone cut things',150.0,0.0,0.1,0.0,0.0,0.0,NULL),
    (4.0,'Reading/Writing','Learnt to speeel',250.0,0.0,0.1,0.0,0.0,0.0,2),
    (5.0,'Foraging','Dem leafs tastee.',300.0,0.0,0.1,0.0,0.0,0.0,NULL),
    (6.0,'Hunting','Meat good, tummy hurt',350.0,0.0,0.1,0.0,100.0,0.0,3),
    (7.0,'Cooking','Meat good, tummy no hurt',400.0,0.0,0.1,0.0,20.0,0.0,7),
    (8.0,'Farms','Cow go moo; wheat go up',750.0,0.0,0.4,0.0,20.0,0.0,5);


INSERT INTO "unlocks" VALUES
    (2.0,'Language','wot',50.0,0.0,0.1,0.0,0.0,0.0,1.0),
    (52.0,'Threesomes','Multiplayer mode unlocked',3.0,0.0,NULL,NULL,0.0,0.0,97.0),
    (5.0,'Foraging','Dem leafs tastee.',100.0,0.0,0.1,0.0,0.0,0.0,1.0),
    (4.0,'Reading/Writing','Learnt to speeel',150.0,0.0,0.1,0.0,0.0,0.0,2.0),
    (19.0,'Printing','Extra Extra! Read all about it!',100000.0,0.0,0.0,0.2,0.0,100.0,2.0),
    (62.0,'Translation','How to annoy people in another languages',1000.0,0.0,0.05,0.0,0.0,0.0,2.0),
    (104.0,'Drama','It''s showtime',100000.0,0.0,0.15,0.9,0.0,0.0,2.0),
    (105.0,'Poetry','Classical rap',100000.0,0.0,0.15,0.1,0.0,0.0,2.0),
    (6.0,'Hunting','Meat good, tummy hurt',150.0,0.0,0.1,0.0,100.0,0.0,3.0),
    (12.0,'Mining','Rocks&Metal&Coal&Diamonds',1500.0,0.0,0.05,0.1,500.0,0.0,3.0),
    (71.0,'Fire','Ooooh burn',200.0,0.0,-0.01,0.0,20.0,0.0,3.0),
    (13.0,'Education','You learnt how to.. learn?',2000.0,0.0,0.05,0.2,5.0,10.0,4.0),
    (20.0,'Industrialization','Make food fast again',200000.0,0.0,0.25,0.25,10000.0,250000.0,4.0),
    (53.0,'Religion','On the first day he said ''let there be memes''',400.0,0.0,-0.02,NULL,3.5,0.0,4.0),
    (8.0,'Farms','Cow go moo; wheat go up',750.0,0.0,0.4,0.0,20.0,0.0,5.0),
    (56.0,'Common sense','Less accidents',15000.0,0.0,1.0,0.0,0.0,0.0,5.0),
    (110.0,'Avocados','Millenials can''t afford houses now',1250.0,0.0,0.0,0.01,0.0,1000000.0,5.0),
    (86.0,'Coffee','Good bean juice taste like chocolate make me go fast',1500.0,0.0,0.1,0.0,0.0,0.0,5.0),
    (89.0,'Tea','Yum leaf juice',1500.0,0.0,0.1,0.0,0.0,0.0,5.0),
    (94.0,'Herbs','Mint is cold spicy',500.0,0.0,0.0,0.3,0.0,0.0,5.0),
    (64.0,'Football','Kick ball into net',250000.0,0.0,0.1,0.01,3.0,30.0,6.0),
    (65.0,'Netball','Throw ball into net',250000.0,0.0,0.1,0.01,2.0,15.0,6.0),
    (69.0,'Puppers','Smol doggo',2500.0,0.0,1.0,-0.5,0.0,100.0,6.0),
    (81.0,'Archery','Stab from a distance',10000.0,0.0,1.0,0.0,400.0,50.0,6.0),
    (7.0,'Cooking','Meat good, tummy no hurt',400.0,0.0,0.1,0.0,20.0,0.0,7.0),
    (10.0,'Markets','SELL PLANT & MEAT',1000.0,0.0,0.05,1.0,0.0,0.0,7.0),
    (3.0,'Stone Tools','Stone cut things',1600.0,0.0,0.1,0.0,0.0,0.0,7.0),
    (108.0,'Refrigeration','Literal chill',1000.0,0.0,2.0,0.2,0.0,300.0,7.0),
    (17.0,'Banking','Looking after your money - or not.',150000.0,0.0,0.4,1.0,0.0,0.0,9.0),
    (14.0,'Basic Medicine','Congrats, you sneeze and don''t die',2500.0,0.0,0.2,0.0,100.0,1000.0,11.0),
    (28.0,'Flight','What''s better than plowing into the Earth at 1000mph?',250000.0,150000.0,0.2,0.2,250.0,1500.0,11.0),
    (15.0,'Pottery','Food is now served on plates',2000.0,0.0,0.2,0.0,5.0,50.0,12.0),
    (29.0,'Steel','Metal but.. better?',200000.0,5000.0,0.1,0.0,4.0,60.0,12.0),
    (116.0,'Construction','Bricks and mortar',2000.0,0.0,0.5,0.2,50.0,7000.0,12.0),
    (63.0,'Maths','x=y',15000.0,0.0,0.2,0.8,0.0,0.0,13.0),
    (11.0,'Science','Biology? The only thing we''ve got is chemistry!',4000.0,0.0,0.05,0.25,50.0,400.0,13.0),
    (25.0,'Politics','Political party time',3500.0,0.0,0.2,0.25,0.0,0.0,13.0),
    (49.0,'University','Space University annouces new courses in Meme Analysis',300000.0,0.0,2.0,1.0,0.0,9250.0,13.0),
    (107.0,'Chemistry','Big Boom',325000.0,0.0,-0.5,1.0,20.0,0.0,13.0),
    (98.0,'Gravity','Apple hurts head',325000.0,0.0,1.0,0.0,0.0,0.0,13.0),
    (47.0,'Advanced Medicine','No EpiPen shortage here',1000000.0,500000.0,2.0,-1.0,150.0,300.0,14.0),
    (67.0,'First Aid','2 paracetamol and a plaster',10000.0,2000.0,0.5,-0.2,0.0,50.0,14.0),
    (95.0,'Toothpaste','Teeth clean with cold spicy white liquid',15000.0,35000.0,0.01,-0.2,0.0,10.0,14.0),
    (18.0,'Gunpowder','Bang Bang',25000.0,0.0,-0.5,0.5,7000.0,3000.0,16.0),
    (21.0,'Ballistics','Blow it up, faster than ever before',32500.0,30000.0,-1.0,0.2,20000.0,2500.0,16.0),
    (9.0,'Currency','Things go downhill from here',1250.0,0.0,0.0,0.0,0.0,0.0,17.0),
    (24.0,'Economics','Supply and demand boiz',10000.0,25000.0,1.0,3.0,0.0,0.0,17.0),
    (57.0,'War','Americans found oil on your planet',50000.0,50000.0,-10.0,4.0,30000.0,5000.0,19.0),
    (22.0,'Steam Power','Train go chugga chugga woot woot',25000.0,120000.0,-1.0,1.0,5.0,2000.0,20.0),
    (23.0,'Sanitation','No longer will a hole in the ground be your only option',35000.0,20000.0,1.0,-0.2,0.0,0.0,20.0),
    (35.0,'Plastics','Dino material',1250000.0,100000.0,1.0,0.2,0.0,10.0,20.0),
    (114.0,'The Internet','Connect. Share. Cats. Memes.',1250000.0,150000.0,0.5,0.5,0.0,30.0,20.0),
    (32.0,'Combustion','Boom ',350000.0,25000.0,-2.0,0.5,2000.0,400.0,21.0);







