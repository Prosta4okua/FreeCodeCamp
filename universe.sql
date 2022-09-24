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
-- Name: carrier; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.carrier (
    carrier_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.carrier OWNER TO freecodecamp;

--
-- Name: carrier_carrier_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.carrier_carrier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrier_carrier_id_seq OWNER TO freecodecamp;

--
-- Name: carrier_carrier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.carrier_carrier_id_seq OWNED BY public.carrier.carrier_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text NOT NULL,
    age integer NOT NULL,
    spore boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer,
    color character varying(15) NOT NULL,
    mine text,
    zhest integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    available_for_life boolean,
    strict_mode boolean NOT NULL,
    description text,
    settle_year integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    time_to_die_in_bil_years numeric(4,2),
    discover_year integer,
    galaxy_id integer,
    hehe text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: carrier carrier_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.carrier ALTER COLUMN carrier_id SET DEFAULT nextval('public.carrier_carrier_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: carrier; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.carrier VALUES (1, 'Льотовик', 24, 'Дуже класно стріляє');
INSERT INTO public.carrier VALUES (2, 'Зореносець', 1, 'Блискавично літає між зорями');
INSERT INTO public.carrier VALUES (3, 'Блискавичник', -1, 'У стані виробництва. Надзвичайно потужник');
INSERT INTO public.carrier VALUES (4, 'Стрілок', 42, 'gfgf');
INSERT INTO public.carrier VALUES (5, 'Мічений', 87, 'хехе');
INSERT INTO public.carrier VALUES (6, 'Мічен4ий', 87, 'хехе4');
INSERT INTO public.carrier VALUES (8, 'М1ічен4ий', 87, 'хехе4');
INSERT INTO public.carrier VALUES (9, 'М1іч4ен4ий', 87, 'хехе4');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Мендромеда', 'Тут медд', 20, NULL);
INSERT INTO public.galaxy VALUES (2, 'Чумацький шлях', 'Нашее, ріднесеньке', 10, NULL);
INSERT INTO public.galaxy VALUES (3, 'Серпуло', 'Все почалося звідси', 34, NULL);
INSERT INTO public.galaxy VALUES (4, 'Ерекір', 'Тут все і закінчиться', 56, NULL);
INSERT INTO public.galaxy VALUES (5, 'Тантрум', 'Невідоме', -5, NULL);
INSERT INTO public.galaxy VALUES (6, 'Шатабеліз', 'Шатабеліз', 14, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'HEHE1', 1, 'red', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'HEHE2', 1, 'yellow', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'HEHE3', 1, 'green', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'HEHE4', 1, 'black', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'HEHE5', 1, 'ргьфт', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'HEHE6', 1, 'ргьфтt', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'HEHEf6', 1, 'ргьфтtb', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'HEHEfs6', 1, 'ргьфтtfb', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'HEHEfvs6', 1, 'ргьфтbtfb', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'HEHEfsvs6', 1, 'ргьфтbftfb', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'HEfsvs6', 1, 'ргьфтbfb', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'HEfsvs63', 1, 'ргьфтbfb1', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'HEfsvs563', 1, 'ргьфтbfb41', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'HEfsv5s563', 1, 'ргьфтbf2b41', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'HEfsv526s563', 1, 'ргьфтbf652b41', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'HEfsv26s563', 1, 'ргьфтbfb6541', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'HEfsv26454s563', 1, 'ргьфтbf343b6541', NULL, NULL);
INSERT INTO public.moon VALUES (24, 'HEfsv65424', 3, 'ргьфт43b6541', NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Hfsv65424', 3, 'ргьфт43b651', NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Hfsvм65424', 5, 'ргьфт4мм', NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Hfsvм651424', 5, 'ргьфт4м3м', NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Hfs13vм651424', 5, 'ргьфт4м143м', NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Hfs13vм673751424', 5, 'ргьфт4м637143м', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'МояПланета1', true, true, 'Планета...', 1990, 3);
INSERT INTO public.planet VALUES (2, 'МояПланета2', true, false, 'Планета жєсть...', 1430, 4);
INSERT INTO public.planet VALUES (3, 'МояПланета3', true, false, 'Планета kapec...', 1430, 5);
INSERT INTO public.planet VALUES (5, 'МояПланета4', true, false, 'Планета хехе...', 1130, 1);
INSERT INTO public.planet VALUES (6, 'МояПланета5', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (7, 'МояПланета8', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (8, 'МояПланета9', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (9, 'МояПланета10', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (10, 'МояПланета11', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (11, 'МояПланета12', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (12, 'МояПланета13', false, true, 'Планета прівієт..', 1452, 2);
INSERT INTO public.planet VALUES (13, 'МояПланета14', false, true, 'Планета прівієт..', 1452, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Earth', 1.00, 1990, 1, NULL);
INSERT INTO public.star VALUES (2, 'Венера', 34.00, 2000, 3, NULL);
INSERT INTO public.star VALUES (3, 'Зірка Марсу', 34.00, 2002, 4, NULL);
INSERT INTO public.star VALUES (4, 'Зірка Меркурія', 36.00, 2004, 5, NULL);
INSERT INTO public.star VALUES (5, 'Ядерна бімба', 0.00, 1945, 2, NULL);
INSERT INTO public.star VALUES (7, 'Поліна', 99.00, 1976, 5, NULL);


--
-- Name: carrier_carrier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.carrier_carrier_id_seq', 9, true);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 31, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 13, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 7, true);


--
-- Name: carrier carrier_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.carrier
    ADD CONSTRAINT carrier_name_key UNIQUE (name);


--
-- Name: carrier carrier_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.carrier
    ADD CONSTRAINT carrier_pkey PRIMARY KEY (carrier_id);


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
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


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

