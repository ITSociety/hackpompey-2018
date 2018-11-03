CREATE TABLE public.unlocks
(
    id integer primary key ,
    title varchar not null,
	description varchar,
    peopleRequired real,
    currencYRequired real,
    peopleMultiplyer real,
    currencyMultiplyer real,
    peoplePerSecond real,
    currencyPerSecond real,   
	peopleCost real,
	currencyCost real,
	prerequisite integer,
	
	FOREIGN KEY (prerequisite) REFERENCES unlocks(id)
);

CREATE TABLE IF NOT EXISTS "unlocks_1" (
    "id" NUMERIC(2, 1),
    "title" TEXT,
    "description" TEXT,
    "peopleRequired" NUMERIC(4, 1),
    "currencyRequired" NUMERIC(2, 1),
    "peopleMultiplyer" NUMERIC(3, 2),
    "currencyMultiplyer" NUMERIC(2, 1),
    "peoplePerSecond" NUMERIC(2, 1),
    "currencyPerSecond" NUMERIC(2, 1),
    "peopleCost" NUMERIC(2, 1),
    "currencyCost" NUMERIC(2, 1),
    "prerequisite" INT
);
INSERT INTO "unlocks" VALUES
    (1.0,'Sex','Fun times ahead',2.0,0.0,1.25,0.0,1.0,0.0,0.0,0.0,NULL),
    (2.0,'Language','wot',100.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,1),
    (3.0,'Stone Tools','Stone cut things',150.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,NULL),
    (4.0,'Reading/Writing','Learnt to speeel',250.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,2),
    (5.0,'Foraging','Dem leafs tastee.',300.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,NULL),
    (6.0,'Hunting','Meat good, tummy hurt',350.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,3),
    (7.0,'Cooking','Meat good, tummy no hurt',400.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,7);
