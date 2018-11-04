--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-1.pgdg14.04+1)
-- Dumped by pg_dump version 10.5

-- Started on 2018-11-04 18:41:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3682 (class 1262 OID 3313600)
-- Name: d4of9dgfh0qji3; Type: DATABASE; Schema: -; Owner: yvkggyyttxddxk
--

CREATE DATABASE d4of9dgfh0qji3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE d4of9dgfh0qji3 OWNER TO yvkggyyttxddxk;

\connect d4of9dgfh0qji3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13809)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 3345302)
-- Name: unlocks; Type: TABLE; Schema: public; Owner: yvkggyyttxddxk
--

CREATE TABLE public.unlocks (
    id integer NOT NULL,
    title character varying NOT NULL,
    description character varying,
    peoplerequired real,
    currencyrequired real,
    peoplemultiplier real,
    currencymultiplier real,
    peoplecost real,
    currencycost real,
    prerequisite integer
);


ALTER TABLE public.unlocks OWNER TO yvkggyyttxddxk;

--
-- TOC entry 3676 (class 0 OID 3345302)
-- Dependencies: 196
-- Data for Name: unlocks; Type: TABLE DATA; Schema: public; Owner: yvkggyyttxddxk
--

INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (1, 'Sex', 'Fornication for the nation', 2, 0, 1, 0, 0, 0, 0);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (5, 'Foraging', 'Dem leafs tastee.', 100, 0, 0.100000001, 0, 0, 0, 1);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (4, 'Reading/Writing', 'Learnt to speeel', 150, 0, 0.100000001, 0, 0, 0, 2);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (19, 'Printing', 'Extra Extra! Read all about it!', 100000, 0, 0, 0.200000003, 0, 100, 2);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (62, 'Translation', 'How to annoy people in another languages', 1000, 0, 0.0500000007, 0, 0, 0, 2);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (104, 'Drama', 'It''s showtime', 100000, 0, 0.150000006, 0.899999976, 0, 0, 2);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (105, 'Poetry', 'Classical rap', 100000, 0, 0.150000006, 0.100000001, 0, 0, 2);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (6, 'Hunting', 'Meat good, tummy hurt', 150, 0, 0.100000001, 0, 100, 0, 3);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (12, 'Mining', 'Rocks&Metal&Coal&Diamonds', 1500, 0, 0.0500000007, 0.100000001, 500, 0, 3);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (71, 'Fire', 'Ooooh burn', 200, 0, -0.00999999978, 0, 20, 0, 3);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (13, 'Education', 'You learnt how to.. learn?', 2000, 0, 0.0500000007, 0.200000003, 5, 10, 4);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (20, 'Industrialization', 'Make food fast again', 200000, 0, 0.25, 0.25, 10000, 250000, 4);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (53, 'Religion', 'On the first day he said ''let there be memes''', 400, 0, -0.0199999996, 0, 3.5, 0, 4);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (8, 'Farms', 'Cow go moo; wheat go up', 750, 0, 0.400000006, 0, 20, 0, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (56, 'Common sense', 'Less accidents', 15000, 0, 1, 0, 0, 0, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (110, 'Avocados', 'Millenials can''t afford houses now', 1250, 0, 0, 0.00999999978, 0, 1000000, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (86, 'Coffee', 'Good bean juice taste like chocolate make me go fast', 1500, 0, 0.100000001, 0, 0, 0, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (89, 'Tea', 'Yum leaf juice', 1500, 0, 0.100000001, 0, 0, 0, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (94, 'Herbs', 'Mint is cold spicy', 500, 0, 0, 0.300000012, 0, 0, 5);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (64, 'Football', 'Kick ball into net', 250000, 0, 0.100000001, 0.00999999978, 3, 30, 6);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (65, 'Netball', 'Throw ball into net', 250000, 0, 0.100000001, 0.00999999978, 2, 15, 6);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (69, 'Puppers', 'Smol doggo', 2500, 0, 1, -0.5, 0, 100, 6);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (81, 'Archery', 'Stab from a distance', 10000, 0, 1, 0, 400, 50, 6);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (7, 'Cooking', 'Meat good, tummy no hurt', 400, 0, 0.100000001, 0, 20, 0, 7);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (10, 'Markets', 'SELL PLANT & MEAT', 1000, 0, 0.0500000007, 1, 0, 0, 7);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (3, 'Stone Tools', 'Stone cut things', 1600, 0, 0.100000001, 0, 0, 0, 7);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (108, 'Refrigeration', 'Literal chill', 1000, 0, 2, 0.200000003, 0, 300, 7);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (17, 'Banking', 'Looking after your money - or not.', 150000, 0, 0.400000006, 1, 0, 0, 9);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (14, 'Basic Medicine', 'Congrats, you sneeze and don''t die', 2500, 0, 0.200000003, 0, 100, 1000, 11);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (28, 'Flight', 'What''s better than plowing into the Earth at 1000mph?', 250000, 150000, 0.200000003, 0.200000003, 250, 1500, 11);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (15, 'Pottery', 'Food is now served on plates', 2000, 0, 0.200000003, 0, 5, 50, 12);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (29, 'Steel', 'Metal but.. better?', 200000, 5000, 0.100000001, 0, 4, 60, 12);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (116, 'Construction', 'Bricks and mortar', 2000, 0, 0.5, 0.200000003, 50, 7000, 12);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (63, 'Maths', 'x=y', 15000, 0, 0.200000003, 0.800000012, 0, 0, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (11, 'Science', 'Biology? The only thing we''ve got is chemistry!', 4000, 0, 0.0500000007, 0.25, 50, 400, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (25, 'Politics', 'Political party time', 3500, 0, 0.200000003, 0.25, 0, 0, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (49, 'University', 'Space University annouces new courses in Meme Analysis', 300000, 0, 2, 1, 0, 9250, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (107, 'Chemistry', 'Big Boom', 325000, 0, -0.5, 1, 20, 0, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (98, 'Gravity', 'Apple hurts head', 325000, 0, 1, 0, 0, 0, 13);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (47, 'Advanced Medicine', 'No EpiPen shortage here', 1000000, 500000, 2, -1, 150, 300, 14);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (67, 'First Aid', '2 paracetamol and a plaster', 10000, 2000, 0.5, -0.200000003, 0, 50, 14);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (95, 'Toothpaste', 'Teeth clean with cold spicy white liquid', 15000, 35000, 0.00999999978, -0.200000003, 0, 10, 14);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (18, 'Gunpowder', 'Bang Bang', 25000, 0, -0.5, 0.5, 7000, 3000, 16);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (21, 'Ballistics', 'Blow it up, faster than ever before', 32500, 30000, -1, 0.200000003, 20000, 2500, 16);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (9, 'Currency', 'Things go downhill from here', 1250, 0, 0, 0, 0, 0, 17);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (24, 'Economics', 'Supply and demand boiz', 10000, 25000, 1, 3, 0, 0, 17);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (57, 'War', 'Americans found oil on your planet', 50000, 50000, -10, 4, 30000, 5000, 19);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (22, 'Steam Power', 'Train go chugga chugga woot woot', 25000, 120000, -1, 1, 5, 2000, 20);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (23, 'Sanitation', 'No longer will a hole in the ground be your only option', 35000, 20000, 1, -0.200000003, 0, 0, 20);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (35, 'Plastics', 'Dino material', 1250000, 100000, 1, 0.200000003, 0, 10, 20);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (114, 'The Internet', 'Connect. Share. Cats. Memes.', 1250000, 150000, 0.5, 0.5, 0, 30, 20);
INSERT INTO public.unlocks (id, title, description, peoplerequired, currencyrequired, peoplemultiplier, currencymultiplier, peoplecost, currencycost, prerequisite) VALUES (32, 'Combustion', 'Boom ', 350000, 25000, -2, 0.5, 2000, 400, 21);


--
-- TOC entry 3554 (class 2606 OID 3345309)
-- Name: unlocks unlocks_pkey; Type: CONSTRAINT; Schema: public; Owner: yvkggyyttxddxk
--

ALTER TABLE ONLY public.unlocks
    ADD CONSTRAINT unlocks_pkey PRIMARY KEY (id);


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: yvkggyyttxddxk
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO yvkggyyttxddxk;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 588
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO yvkggyyttxddxk;


-- Completed on 2018-11-04 18:41:49

--
-- PostgreSQL database dump complete
--

