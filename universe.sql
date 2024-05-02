--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    orbits character varying(50),
    diameter numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    name character varying(30) NOT NULL,
    nebula_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    diameter numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    surface_temperature numeric,
    color character varying(30),
    class character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Milk Way', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cigar', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Ibham', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Moon', 2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Phobos', 3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Deimos', 4, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Io', 5, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Europa', 6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Ganymede', 7, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Callisto', 8, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Themisto', 9, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Leda', 10, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Ersa', 111, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Himalia', 12, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Pandia', 13, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Lysithea', 14, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Elara', 15, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Metis', 16, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Adrastea', 17, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Amalthea', 18, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Thebe', 19, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Mneme', 20, NULL, NULL, NULL, 6);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES ('Orion', 1, 2);
INSERT INTO public.nebula VALUES ('Lagoon', 2, 2);
INSERT INTO public.nebula VALUES ('Eagle', 3, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Kufiz', 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Earth', 2, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Mercury', 3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Venus', 4, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Mars', 5, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Jupiter', 6, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Saturn', 7, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Uranus', 8, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Neptune', 9, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Pluto', 10, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Eris', 11, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Ceres', 12, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Mirach', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Sun', 2, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('VY Canis Majoris', 3, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('GCIRS 7', 4, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Pistol Star', 5, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('VV Cephei A', 6, NULL, NULL, NULL, NULL, 2);


--
-- Name: moon constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name UNIQUE (name);


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
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


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
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: nebula nebula_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_unique UNIQUE (name);


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
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


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
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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

