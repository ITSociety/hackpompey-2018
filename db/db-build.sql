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