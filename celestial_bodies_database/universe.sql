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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
                                    distance_from_earth integer,
                                    description_id numeric NOT NULL,
                                    number_of_world integer,
                                    name character varying(30) NOT NULL,
                                    text text,
                                    akif integer
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
                               galaxy_type numeric,
                               has_life boolean,
                               age_in_millions_of_years integer,
                               distance_from_earth integer,
                               galaxy_id numeric NOT NULL,
                               name character varying(30) NOT NULL,
                               foreign_key text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
                             distance_from_earth integer,
                             moon_id numeric NOT NULL,
                             name character varying(30) NOT NULL,
                             foreign_key text,
                             akif text,
                             akif1 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
                               has_life boolean,
                               planet_id numeric NOT NULL,
                               name character varying(30) NOT NULL,
                               planet_types text,
                               age_in_million_of_years integer,
                               distance_from_earth integer,
                               foreign_key text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
                             age_in_millions_of_years integer,
                             is_spherical boolean,
                             star_id numeric NOT NULL,
                             name character varying(30) NOT NULL,
                             foreign_key text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (123, 1, 3, 'asdf', 'dsf', NULL);
INSERT INTO public.description VALUES (1234, 2, 5, 'asdfdsaf', 'asdfdsaf', NULL);
INSERT INTO public.description VALUES (123, 4, 3, 'asadsfdf', 'adfsdsf', NULL);
INSERT INTO public.description VALUES (1234, 7, 5, 'asdfastttf', 'aasdfsdfdsaf', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 123, 12, 1, 'milk way', 'akif');
INSERT INTO public.galaxy VALUES (2, false, 234, 5, 2, 'lkd', 'lou');
INSERT INTO public.galaxy VALUES (3, false, 567, 2, 3, 'asdf', 'mehmet');
INSERT INTO public.galaxy VALUES (4, false, 123, 4, 5, 'dsf', 'ygn');
INSERT INTO public.galaxy VALUES (5, true, 4, 7, 8, 'adsf', 'ukul');
INSERT INTO public.galaxy VALUES (6, false, 5546, 78, 167, 'asdfdasf', 'akif1');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 9, 'accc', 'yegin');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 10, 'avccc', 'yegin1');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 11, 'avcccc', 'yegin2');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 12, 'avvcccc', 'yegin3');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 13, 'avvccccv', 'yegin4');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 14, 'avvccxcvccv', 'yegin5');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 15, 'ccv', 'yegin6');
INSERT INTO public.galaxy VALUES (7, false, 23, 3, 16, 'ccvc', 'yegin7');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 17, 'acccc', 'yegin8');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 18, 'x', 'yegin9');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 19, 'xx', 'yegin10');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 20, 'xxx', 'yegin11');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 21, 'xxxx', 'yegin12');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 22, 'xxxxx', 'yegin13');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 23, 'xxxxxx', 'yegin14');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 24, 'xxxxxxx', 'yegin15');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 25, 'xxxxxcxx', 'yegin16');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 26, 'cxxxxxcxx', 'yegin17');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 27, 'cxxxxxcvxx', 'yegin18');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 28, 'cxxxxxcvxvx', 'yegin19');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 29, 'cxxxxxcvvxvx', 'yegin20');
INSERT INTO public.galaxy VALUES (7, false, 3, 1, 30, 'cxxxxxcvvxdvx', 'yegin21');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 3, 'asdf', 'akif', NULL, NULL);
INSERT INTO public.moon VALUES (1, 4, 'a', 'yegin7', NULL, NULL);
INSERT INTO public.moon VALUES (2, 65, 'ab', 'yegin6', NULL, NULL);
INSERT INTO public.moon VALUES (2, 64, 'acb', 'yegin5', NULL, NULL);
INSERT INTO public.moon VALUES (2, 63, 'accb', 'yegin4', NULL, NULL);
INSERT INTO public.moon VALUES (2, 62, 'avccb', 'yegin3', NULL, NULL);
INSERT INTO public.moon VALUES (2, 61, 'avcccb', 'yegin2', NULL, NULL);
INSERT INTO public.moon VALUES (2, 60, 'avcccbbb', 'yegin1', NULL, NULL);
INSERT INTO public.moon VALUES (1, 5, 'x', 'yegin8', NULL, NULL);
INSERT INTO public.moon VALUES (1, 6, 'xx', 'yegin9', NULL, NULL);
INSERT INTO public.moon VALUES (1, 7, 'xxx', 'yegin10', NULL, NULL);
INSERT INTO public.moon VALUES (1, 8, 'xxxx', 'yegin11', NULL, NULL);
INSERT INTO public.moon VALUES (1, 9, 'xxxcx', 'yegin12', NULL, NULL);
INSERT INTO public.moon VALUES (1, 10, 'xxxcxc', 'yegin13', NULL, NULL);
INSERT INTO public.moon VALUES (1, 11, 'xxxcxvc', 'yegin14', NULL, NULL);
INSERT INTO public.moon VALUES (1, 12, 'xxxcxvvc', 'yegin15', NULL, NULL);
INSERT INTO public.moon VALUES (1, 13, 'xxxcxvcvc', 'yegin16', NULL, NULL);
INSERT INTO public.moon VALUES (1, 14, 'xxxcxvccvc', 'yegin17', NULL, NULL);
INSERT INTO public.moon VALUES (1, 15, 'xxxcxvccvvc', 'yegin18', NULL, NULL);
INSERT INTO public.moon VALUES (1, 16, 'xxxcxvccvvdc', 'yegin19', NULL, NULL);
INSERT INTO public.moon VALUES (1, 17, 'xxxcxvdccvvdc', 'yegin20', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, 12, 'pir', 'asdf', 123, 435, 'akif');
INSERT INTO public.planet VALUES (false, 1, 'asdfj', 'iuasfh', 1231, 43, 'mehmet');
INSERT INTO public.planet VALUES (false, 2, 'asdfjxc', 'iuasfh', 1231, 43, 'akif1');
INSERT INTO public.planet VALUES (false, 3, 'asdfasdjxc', 'iuasfh', 1231, 43, 'ygn');
INSERT INTO public.planet VALUES (false, 4, 'aasdsdfasdjxc', 'iuasfh', 1231, 43, 'ukul');
INSERT INTO public.planet VALUES (false, 5, 'aasdsdfasdjxcf', 'iuasfh', 1231, 43, 'lou');
INSERT INTO public.planet VALUES (false, 6, 'a', 'asd', 7, 8, 'yegin1');
INSERT INTO public.planet VALUES (false, 7, 'ac', 'asd', 7, 8, 'yegin2');
INSERT INTO public.planet VALUES (false, 8, 'acd', 'asd', 7, 8, 'yegin3');
INSERT INTO public.planet VALUES (false, 9, 'xacd', 'asd', 7, 8, 'yegin4');
INSERT INTO public.planet VALUES (false, 10, 'xacccd', 'asd', 7, 8, 'yegin5');
INSERT INTO public.planet VALUES (false, 11, 'xacccdc', 'asd', 7, 8, 'yegin6');
INSERT INTO public.planet VALUES (false, 13, 'xacccdcc', 'asd', 7, 8, 'yegin7');
INSERT INTO public.planet VALUES (false, 14, 'x', 'x', 1, 2, 'yegin8');
INSERT INTO public.planet VALUES (false, 15, 'xa', 'akic', 1, 2, 'yegin9');
INSERT INTO public.planet VALUES (false, 16, 'dxa', 'akic', 1, 2, 'yegin10');
INSERT INTO public.planet VALUES (false, 17, 'cdxa', 'akic', 1, 2, 'yegin11');
INSERT INTO public.planet VALUES (false, 18, 'ccdxa', 'akic', 1, 2, 'yegin12');
INSERT INTO public.planet VALUES (false, 19, 'yccdxa', 'akic', 1, 2, 'yegin13');
INSERT INTO public.planet VALUES (false, 20, 'fyccdxa', 'akic', 1, 2, 'yegin14');
INSERT INTO public.planet VALUES (false, 21, 'fcyccdxa', 'akic', 1, 2, 'yegin15');
INSERT INTO public.planet VALUES (false, 22, 'fcyccdxac', 'akic', 1, 2, 'yegin16');
INSERT INTO public.planet VALUES (false, 23, 'fcyccdxacc', 'akic', 1, 2, 'yegin17');
INSERT INTO public.planet VALUES (false, 24, 'fcyccdxaccc', 'akic', 1, 2, 'yegin18');
INSERT INTO public.planet VALUES (false, 25, 'fcyccdxacccc', 'akic', 1, 2, 'yegin19');
INSERT INTO public.planet VALUES (false, 26, 'dfcyccdxacccc', 'akic', 1, 2, 'yegin20');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (123, true, 1, 'asdf', 'akif');
INSERT INTO public.star VALUES (45, false, 2, 'ajhkga', 'akif1');
INSERT INTO public.star VALUES (54, false, 3, 'dsfo', 'ygn');
INSERT INTO public.star VALUES (324234, false, 4, 'asdflj', 'ukul');
INSERT INTO public.star VALUES (94334, true, 5, 'sadf', 'mehmet');
INSERT INTO public.star VALUES (2222, false, 6, 'mnb', 'lou');
INSERT INTO public.star VALUES (7, false, 7, 'ccvcv', 'yegin7');
INSERT INTO public.star VALUES (7, false, 8, 'ccvcvv', 'yegin6');
INSERT INTO public.star VALUES (7, false, 9, 'ccvcvvv', 'yegin5');
INSERT INTO public.star VALUES (7, false, 10, 'ccvcvvvvv', 'yegin4');
INSERT INTO public.star VALUES (7, false, 11, 'c', 'yegin3');
INSERT INTO public.star VALUES (7, false, 12, 'cb', 'yegin2');
INSERT INTO public.star VALUES (7, false, 13, 'cccb', 'yegin1');
INSERT INTO public.star VALUES (1, false, 14, 'x', 'yegin8');
INSERT INTO public.star VALUES (1, false, 15, 'xx', 'yegin9');
INSERT INTO public.star VALUES (1, false, 16, 'xxx', 'yegin10');
INSERT INTO public.star VALUES (1, false, 17, 'xxxx', 'yegin11');
INSERT INTO public.star VALUES (1, false, 19, 'xxxxc', 'yegin12');
INSERT INTO public.star VALUES (1, false, 20, 'xxxxcc', 'yegin13');
INSERT INTO public.star VALUES (1, false, 21, 'xxxvxcc', 'yegin14');
INSERT INTO public.star VALUES (1, false, 22, 'xxxvcxcc', 'yegin15');
INSERT INTO public.star VALUES (1, false, 23, 'xxxvcxccc', 'yegin16');
INSERT INTO public.star VALUES (1, false, 24, 'xxxvccxccc', 'yegin17');
INSERT INTO public.star VALUES (1, false, 25, 'xxcdsxvccxccc', 'yegin18');
INSERT INTO public.star VALUES (1, false, 26, 'xxcdsxvccxsdfccc', 'yegin19');
INSERT INTO public.star VALUES (1, false, 27, 'xxcdsxvccxssddfccc', 'yegin20');


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_foreign_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_foreign_key_key UNIQUE (foreign_key);


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
-- Name: moon moon_foreign_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_foreign_key_key UNIQUE (foreign_key);


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
-- Name: planet planet_foreign_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foreign_key_key UNIQUE (foreign_key);


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
-- Name: star star_foreign_key_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_foreign_key_key UNIQUE (foreign_key);


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
-- Name: moon moon_foreign_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_foreign_key_fkey FOREIGN KEY (foreign_key) REFERENCES public.planet(foreign_key);


--
-- Name: planet planet_foreign_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foreign_key_fkey FOREIGN KEY (foreign_key) REFERENCES public.star(foreign_key);


--
-- Name: star star_foreign_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_foreign_key_fkey FOREIGN KEY (foreign_key) REFERENCES public.galaxy(foreign_key);


--
-- PostgreSQL database dump complete
--

