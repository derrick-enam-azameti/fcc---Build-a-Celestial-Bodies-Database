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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    f_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    f_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    f_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    age_in_millions_of_years integer,
    f_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: world; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world (
    world_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_civilized boolean NOT NULL
);


ALTER TABLE public.world OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_world_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_world_id_seq OWNER TO freecodecamp;

--
-- Name: world_world_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_world_id_seq OWNED BY public.world.world_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: world world_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world ALTER COLUMN world_id SET DEFAULT nextval('public.world_world_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', true, 'some text here', 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', true, 'some text here', 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', true, 'some text here', 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', true, 'some text here', 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', false, 'some text here', 5);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', false, 'some text here', 6);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', true, 'some text here', 7);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', true, 'some text here', 8);
INSERT INTO public.galaxy VALUES (9, 'galaxy8', true, 'some text here', 9);
INSERT INTO public.galaxy VALUES (10, 'galaxy8', true, 'some text here', 10);
INSERT INTO public.galaxy VALUES (11, 'galaxy8', true, 'some text here', 11);
INSERT INTO public.galaxy VALUES (12, 'galaxy8', true, 'some text here', 12);
INSERT INTO public.galaxy VALUES (13, 'galaxy8', true, 'some text here', 13);
INSERT INTO public.galaxy VALUES (14, 'galaxy8', true, 'some text here', 14);
INSERT INTO public.galaxy VALUES (15, 'galaxy8', true, 'some text here', 15);
INSERT INTO public.galaxy VALUES (16, 'galaxy8', true, 'some text here', 16);
INSERT INTO public.galaxy VALUES (17, 'galaxy8', true, 'some text here', 18);
INSERT INTO public.galaxy VALUES (18, 'galaxy8', true, 'some text here', 19);
INSERT INTO public.galaxy VALUES (19, 'galaxy8', true, 'some text here', 20);
INSERT INTO public.galaxy VALUES (20, 'galaxy8', true, 'some text here', 17);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_x', true, 'not yet', 1);
INSERT INTO public.moon VALUES (2, 'moon_x', true, 'not yet', 2);
INSERT INTO public.moon VALUES (3, 'moon_x', true, 'not yet', 3);
INSERT INTO public.moon VALUES (4, 'moon_x', true, 'not yet', 4);
INSERT INTO public.moon VALUES (5, 'moon_x', true, 'not yet', 5);
INSERT INTO public.moon VALUES (6, 'moon_x', true, 'not yet', 6);
INSERT INTO public.moon VALUES (7, 'moon_x', true, 'not yet', 7);
INSERT INTO public.moon VALUES (8, 'moon_x', true, 'not yet', 8);
INSERT INTO public.moon VALUES (9, 'moon_x', true, 'not yet', 9);
INSERT INTO public.moon VALUES (10, 'moon_x', true, 'not yet', 10);
INSERT INTO public.moon VALUES (11, 'moon_x', true, 'not yet', 11);
INSERT INTO public.moon VALUES (12, 'moon_x', true, 'not yet', 12);
INSERT INTO public.moon VALUES (13, 'moon_x', true, 'not yet', 13);
INSERT INTO public.moon VALUES (14, 'moon_x', true, 'not yet', 14);
INSERT INTO public.moon VALUES (15, 'moon_x', true, 'not yet', 15);
INSERT INTO public.moon VALUES (16, 'moon_x', true, 'not yet', 16);
INSERT INTO public.moon VALUES (17, 'moon_x', true, 'not yet', 17);
INSERT INTO public.moon VALUES (18, 'moon_x', true, 'not yet', 18);
INSERT INTO public.moon VALUES (19, 'moon_x', true, 'not yet', 19);
INSERT INTO public.moon VALUES (20, 'moon_x', true, 'not yet', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'planet4', false, 'another text', 131, 60.0, 4);
INSERT INTO public.planet VALUES (4, 'planet2', false, 'another text', 11, 162.0, 2);
INSERT INTO public.planet VALUES (5, 'planet1', false, 'another text', 1, 12.0, 1);
INSERT INTO public.planet VALUES (6, 'planet6', false, 'another text', 14, 612.0, 6);
INSERT INTO public.planet VALUES (7, 'planet3', false, 'another text', 14, 612.0, 3);
INSERT INTO public.planet VALUES (8, 'planet5', false, 'another text', 14, 612.0, 5);
INSERT INTO public.planet VALUES (11, 'planet2', false, 'another text', 11, 162.0, 7);
INSERT INTO public.planet VALUES (12, 'planet2', false, 'another text', 11, 162.0, 8);
INSERT INTO public.planet VALUES (13, 'planet2', false, 'another text', 11, 162.0, 9);
INSERT INTO public.planet VALUES (14, 'planet2', false, 'another text', 11, 162.0, 10);
INSERT INTO public.planet VALUES (15, 'planet2', false, 'another text', 11, 162.0, 11);
INSERT INTO public.planet VALUES (16, 'planet2', false, 'another text', 11, 162.0, 12);
INSERT INTO public.planet VALUES (17, 'planet2', false, 'another text', 11, 162.0, 13);
INSERT INTO public.planet VALUES (18, 'planet2', false, 'another text', 11, 162.0, 14);
INSERT INTO public.planet VALUES (19, 'planet2', false, 'another text', 11, 162.0, 15);
INSERT INTO public.planet VALUES (20, 'planet2', false, 'another text', 11, 162.0, 16);
INSERT INTO public.planet VALUES (21, 'planet2', false, 'another text', 11, 162.0, 17);
INSERT INTO public.planet VALUES (22, 'planet2', false, 'another text', 11, 162.0, 18);
INSERT INTO public.planet VALUES (23, 'planet2', false, 'another text', 11, 162.0, 19);
INSERT INTO public.planet VALUES (24, 'planet2', false, 'another text', 11, 162.0, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', true, 'another text', 100, 1);
INSERT INTO public.star VALUES (2, 'star3', true, 'another text', 100, 3);
INSERT INTO public.star VALUES (3, 'star2', false, 'another text', 120, 2);
INSERT INTO public.star VALUES (4, 'star4', true, 'another text', 222, 4);
INSERT INTO public.star VALUES (5, 'star5', true, 'another text', 302, 5);
INSERT INTO public.star VALUES (6, 'star6', false, 'another text', 302, 6);
INSERT INTO public.star VALUES (7, 'star6', false, 'another text', 302, 7);
INSERT INTO public.star VALUES (8, 'star6', false, 'another text', 302, 8);
INSERT INTO public.star VALUES (9, 'star6', false, 'another text', 302, 9);
INSERT INTO public.star VALUES (10, 'star6', false, 'another text', 302, 10);
INSERT INTO public.star VALUES (11, 'star6', false, 'another text', 302, 11);
INSERT INTO public.star VALUES (12, 'star6', false, 'another text', 302, 12);
INSERT INTO public.star VALUES (13, 'star6', false, 'another text', 302, 13);
INSERT INTO public.star VALUES (14, 'star6', false, 'another text', 302, 14);
INSERT INTO public.star VALUES (15, 'star6', false, 'another text', 302, 15);
INSERT INTO public.star VALUES (16, 'star6', false, 'another text', 302, 16);
INSERT INTO public.star VALUES (17, 'star6', false, 'another text', 302, 17);
INSERT INTO public.star VALUES (18, 'star6', false, 'another text', 302, 18);
INSERT INTO public.star VALUES (19, 'star6', false, 'another text', 302, 19);
INSERT INTO public.star VALUES (20, 'star6', false, 'another text', 302, 20);


--
-- Data for Name: world; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world VALUES (1, 'peace', true);
INSERT INTO public.world VALUES (2, 'war', false);
INSERT INTO public.world VALUES (3, 'ignorance', false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 20, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 20, true);


--
-- Name: world_world_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_world_id_seq', 3, true);


--
-- Name: galaxy galaxy_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_f_id_key UNIQUE (f_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_f_id_key UNIQUE (f_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_f_id_key UNIQUE (f_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_f_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_f_id_key UNIQUE (f_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: world world_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_name_key UNIQUE (name);


--
-- Name: world world_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world
    ADD CONSTRAINT world_pkey PRIMARY KEY (world_id);


--
-- Name: moon moon_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.planet(f_id);


--
-- Name: planet planet_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.star(f_id);


--
-- Name: star star_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.galaxy(f_id);


--
-- PostgreSQL database dump complete
--

