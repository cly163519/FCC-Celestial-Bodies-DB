--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_types text,
    distance_from_earth numeric,
    age_in_millions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types text,
    distance_from_earth numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types text,
    distance_from_earth numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: spark; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spark (
    spark_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_type text,
    distance_from_earth integer,
    moon_id integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.spark OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types text,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, 'Spiral', 946000000, 12000);
INSERT INTO public.galaxy VALUES (2, 'Massive Blobs', false, 'Elliptical', 580000000, 11000);
INSERT INTO public.galaxy VALUES (3, 'Cross', false, 'Lenticular', 220000000, 13000);
INSERT INTO public.galaxy VALUES (4, 'Unusual Shape', false, 'Irregular', 290000000, 15000);
INSERT INTO public.galaxy VALUES (5, 'Brighter', false, 'Active', 388000000, 23000);
INSERT INTO public.galaxy VALUES (6, 'Common', false, 'Seyfert', 470000000, 19000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Duck', false, 'AS', 12000, 3);
INSERT INTO public.moon VALUES (2, 'Peggy', false, 'Some', 34000, 5);
INSERT INTO public.moon VALUES (3, 'Tom', false, 'Feel', 78000, 3);
INSERT INTO public.moon VALUES (4, 'Jack', false, 'Good', 23000, 5);
INSERT INTO public.moon VALUES (5, 'Jerry', false, 'Little', 78000, 3);
INSERT INTO public.moon VALUES (6, 'Jorge', false, 'Happy', 17000, 2);
INSERT INTO public.moon VALUES (7, 'Sun', false, 'Rush', 28000, 5);
INSERT INTO public.moon VALUES (8, 'Tomorrow', false, 'Run', 37000, 2);
INSERT INTO public.moon VALUES (9, 'Lucy', false, 'Beauty', 23000, 5);
INSERT INTO public.moon VALUES (10, 'Rose', false, 'Bright', 56000, 3);
INSERT INTO public.moon VALUES (11, 'Alice', false, 'Far', 201000, 8);
INSERT INTO public.moon VALUES (12, 'Glass', false, 'White', 307000, 10);
INSERT INTO public.moon VALUES (13, 'Mouse', false, 'Black', 190000, 11);
INSERT INTO public.moon VALUES (14, 'Shaw', false, 'Red', 129000, 12);
INSERT INTO public.moon VALUES (15, 'Ready', false, 'South', 730090, 4);
INSERT INTO public.moon VALUES (16, 'Bash', false, 'Yes', 179000, 8);
INSERT INTO public.moon VALUES (17, 'Pre', false, 'Yellow', 730000, 7);
INSERT INTO public.moon VALUES (18, 'June', false, 'Orange', 298000, 9);
INSERT INTO public.moon VALUES (19, 'May', false, 'Pink', 439000, 5);
INSERT INTO public.moon VALUES (20, 'July', false, 'Brown', 349000, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sun', false, 'Tmo', 123000, 2);
INSERT INTO public.planet VALUES (2, 'Blue', false, 'OPQ', 239000, 1);
INSERT INTO public.planet VALUES (3, 'Little', false, 'Big', 403000, 1);
INSERT INTO public.planet VALUES (4, 'Bye', false, 'ABC', 179000, 4);
INSERT INTO public.planet VALUES (6, 'Shiny', false, 'Good', 123000, 5);
INSERT INTO public.planet VALUES (7, 'Mercury', false, 'Dark', 471000, 3);
INSERT INTO public.planet VALUES (8, 'Venus', false, 'Black', 23000, 5);
INSERT INTO public.planet VALUES (9, 'Uranus', false, 'Beauty', 78000, 4);
INSERT INTO public.planet VALUES (10, 'Neptune', false, 'Large', 178000, 3);
INSERT INTO public.planet VALUES (11, 'Saturn', false, 'Great', 34000, 2);
INSERT INTO public.planet VALUES (12, 'Jupiter', false, 'See U', 234000, 6);
INSERT INTO public.planet VALUES (5, 'Pluto', false, 'TMS', 123000, 2);


--
-- Data for Name: spark; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spark VALUES (1, 'Police', false, 'Right', 230000, 5, 100);
INSERT INTO public.spark VALUES (2, 'Relief', false, 'Left', 45000, 7, 189);
INSERT INTO public.spark VALUES (3, 'Think', false, 'Sound', 768000, 4, 230);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ABC', false, 'Red', 120000000, 1);
INSERT INTO public.star VALUES (2, 'DEF', false, 'White', 240000000, 1);
INSERT INTO public.star VALUES (3, 'JKF', false, 'Brown', 17000000, 3);
INSERT INTO public.star VALUES (4, 'OPQ', false, 'Circle', 34000000, 4);
INSERT INTO public.star VALUES (5, 'MNT', false, 'Lencular', 270000000, 5);
INSERT INTO public.star VALUES (6, 'FRO', false, 'Move', 250000000, 6);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spark spark_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spark
    ADD CONSTRAINT spark_name_key UNIQUE (name);


--
-- Name: spark spark_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spark
    ADD CONSTRAINT spark_pkey PRIMARY KEY (spark_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: spark spark_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spark
    ADD CONSTRAINT spark_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
