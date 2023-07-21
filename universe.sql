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
-- Name: discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discoverer (
    discoverer_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer
);


ALTER TABLE public.discoverer OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    galaxy_types character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(50),
    star_id integer NOT NULL,
    weight integer,
    radius integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discoverer VALUES (1, 'john', 40);
INSERT INTO public.discoverer VALUES (2, 'sam', 45);
INSERT INTO public.discoverer VALUES (3, 'jane', 27);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 'a', true, 5, 'a');
INSERT INTO public.galaxy VALUES (2, 'b', 'b', true, 5, 'b');
INSERT INTO public.galaxy VALUES (3, 'c', 'c', true, 5, 'c');
INSERT INTO public.galaxy VALUES (4, 'd', 'd', true, 5, 'd');
INSERT INTO public.galaxy VALUES (5, 'e', 'e', true, 5, 'e');
INSERT INTO public.galaxy VALUES (6, 'f', 'f', true, 5, 'f');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', true, true, 2, 500, 'a', 1);
INSERT INTO public.moon VALUES (2, 'a', true, true, 2, 500, 'b', 1);
INSERT INTO public.moon VALUES (3, 'a', true, true, 2, 500, 'c', 1);
INSERT INTO public.moon VALUES (4, 'a', true, true, 2, 500, 'd', 1);
INSERT INTO public.moon VALUES (5, 'a', true, true, 2, 500, 'e', 1);
INSERT INTO public.moon VALUES (6, 'a', true, true, 2, 500, 'f', 1);
INSERT INTO public.moon VALUES (7, 'a', true, true, 2, 500, 'g', 1);
INSERT INTO public.moon VALUES (8, 'a', true, true, 2, 500, 'h', 1);
INSERT INTO public.moon VALUES (9, 'a', true, true, 2, 500, 'j', 1);
INSERT INTO public.moon VALUES (10, 'a', true, true, 2, 500, 'k', 1);
INSERT INTO public.moon VALUES (11, 'a', true, true, 2, 500, 'p', 2);
INSERT INTO public.moon VALUES (12, 'a', true, true, 2, 500, 'q', 2);
INSERT INTO public.moon VALUES (13, 'a', true, true, 2, 500, 'w', 2);
INSERT INTO public.moon VALUES (14, 'a', true, true, 2, 500, 'r', 2);
INSERT INTO public.moon VALUES (15, 'a', true, true, 2, 500, 't', 2);
INSERT INTO public.moon VALUES (16, 'a', true, true, 2, 500, 'y', 2);
INSERT INTO public.moon VALUES (17, 'a', true, true, 2, 500, 'u', 2);
INSERT INTO public.moon VALUES (18, 'a', true, true, 2, 500, 'z', 2);
INSERT INTO public.moon VALUES (19, 'a', true, true, 2, 500, 'x', 2);
INSERT INTO public.moon VALUES (20, 'a', true, true, 2, 500, 'n', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 'a', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (2, 'b', 'b', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (3, 'c', 'c', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (4, 'd', 'd', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (5, 'e', 'e', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (6, 'f', 'f', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (7, 'g', 'g', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (8, 'h', 'h', true, true, 2, 'a', 1, 123, 123);
INSERT INTO public.planet VALUES (9, 's', 's', true, true, 2, 'a', 2, 123, 123);
INSERT INTO public.planet VALUES (10, 't', 't', true, true, 2, 'a', 2, 123, 123);
INSERT INTO public.planet VALUES (11, 'r', 'r', true, true, 2, 'a', 2, 123, 123);
INSERT INTO public.planet VALUES (12, 'u', 'u', true, true, 2, 'a', 2, 123, 123);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 'a', true, true, 3, 1);
INSERT INTO public.star VALUES (2, 'b', 'b', true, true, 3, 1);
INSERT INTO public.star VALUES (3, 'c', 'c', true, true, 3, 1);
INSERT INTO public.star VALUES (4, 'd', 'd', true, true, 3, 2);
INSERT INTO public.star VALUES (5, 'e', 'e', true, true, 3, 2);
INSERT INTO public.star VALUES (6, 'f', 'f', true, true, 3, 3);


--
-- Name: discoverer discoverer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_name_key UNIQUE (name);


--
-- Name: discoverer discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_pkey PRIMARY KEY (discoverer_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

