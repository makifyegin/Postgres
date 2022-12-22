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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 105, 6);
INSERT INTO public.games VALUES (17, 427, 6);
INSERT INTO public.games VALUES (18, 600, 7);
INSERT INTO public.games VALUES (19, 947, 7);
INSERT INTO public.games VALUES (20, 879, 6);
INSERT INTO public.games VALUES (21, 845, 6);
INSERT INTO public.games VALUES (22, 230, 6);
INSERT INTO public.games VALUES (23, 291, 8);
INSERT INTO public.games VALUES (24, 652, 8);
INSERT INTO public.games VALUES (25, 753, 9);
INSERT INTO public.games VALUES (26, 661, 9);
INSERT INTO public.games VALUES (27, 907, 8);
INSERT INTO public.games VALUES (28, 964, 8);
INSERT INTO public.games VALUES (29, 402, 8);
INSERT INTO public.games VALUES (30, 965, 10);
INSERT INTO public.games VALUES (31, 162, 10);
INSERT INTO public.games VALUES (32, 470, 11);
INSERT INTO public.games VALUES (33, 666, 11);
INSERT INTO public.games VALUES (34, 226, 10);
INSERT INTO public.games VALUES (35, 668, 10);
INSERT INTO public.games VALUES (36, 29, 10);
INSERT INTO public.games VALUES (37, 641, 12);
INSERT INTO public.games VALUES (38, 299, 12);
INSERT INTO public.games VALUES (39, 168, 13);
INSERT INTO public.games VALUES (40, 616, 13);
INSERT INTO public.games VALUES (41, 617, 12);
INSERT INTO public.games VALUES (42, 535, 12);
INSERT INTO public.games VALUES (43, 766, 12);
INSERT INTO public.games VALUES (44, 937, 14);
INSERT INTO public.games VALUES (45, 373, 14);
INSERT INTO public.games VALUES (46, 333, 15);
INSERT INTO public.games VALUES (47, 534, 15);
INSERT INTO public.games VALUES (48, 990, 14);
INSERT INTO public.games VALUES (49, 688, 14);
INSERT INTO public.games VALUES (50, 971, 14);
INSERT INTO public.games VALUES (51, 863, 16);
INSERT INTO public.games VALUES (52, 257, 16);
INSERT INTO public.games VALUES (53, 967, 17);
INSERT INTO public.games VALUES (54, 189, 17);
INSERT INTO public.games VALUES (55, 444, 16);
INSERT INTO public.games VALUES (56, 258, 16);
INSERT INTO public.games VALUES (57, 66, 16);
INSERT INTO public.games VALUES (58, 178, 18);
INSERT INTO public.games VALUES (59, 607, 18);
INSERT INTO public.games VALUES (60, 488, 19);
INSERT INTO public.games VALUES (61, 441, 19);
INSERT INTO public.games VALUES (62, 711, 18);
INSERT INTO public.games VALUES (63, 751, 18);
INSERT INTO public.games VALUES (64, 37, 18);
INSERT INTO public.games VALUES (65, 899, 21);
INSERT INTO public.games VALUES (66, 941, 21);
INSERT INTO public.games VALUES (67, 309, 22);
INSERT INTO public.games VALUES (68, 289, 22);
INSERT INTO public.games VALUES (69, 280, 21);
INSERT INTO public.games VALUES (70, 759, 21);
INSERT INTO public.games VALUES (71, 429, 21);
INSERT INTO public.games VALUES (72, 467, 23);
INSERT INTO public.games VALUES (73, 682, 23);
INSERT INTO public.games VALUES (74, 805, 24);
INSERT INTO public.games VALUES (75, 574, 24);
INSERT INTO public.games VALUES (76, 150, 23);
INSERT INTO public.games VALUES (77, 451, 23);
INSERT INTO public.games VALUES (78, 816, 23);
INSERT INTO public.games VALUES (79, 15, 25);
INSERT INTO public.games VALUES (80, 994, 25);
INSERT INTO public.games VALUES (81, 455, 26);
INSERT INTO public.games VALUES (82, 45, 26);
INSERT INTO public.games VALUES (83, 794, 25);
INSERT INTO public.games VALUES (84, 678, 25);
INSERT INTO public.games VALUES (85, 632, 25);
INSERT INTO public.games VALUES (86, 311, 27);
INSERT INTO public.games VALUES (87, 215, 27);
INSERT INTO public.games VALUES (88, 399, 28);
INSERT INTO public.games VALUES (89, 194, 28);
INSERT INTO public.games VALUES (90, 387, 27);
INSERT INTO public.games VALUES (91, 552, 27);
INSERT INTO public.games VALUES (92, 321, 27);
INSERT INTO public.games VALUES (93, 861, 29);
INSERT INTO public.games VALUES (94, 341, 29);
INSERT INTO public.games VALUES (95, 39, 30);
INSERT INTO public.games VALUES (96, 461, 30);
INSERT INTO public.games VALUES (97, 29, 29);
INSERT INTO public.games VALUES (98, 906, 29);
INSERT INTO public.games VALUES (99, 211, 29);
INSERT INTO public.games VALUES (100, 287, 31);
INSERT INTO public.games VALUES (101, 17, 31);
INSERT INTO public.games VALUES (102, 30, 32);
INSERT INTO public.games VALUES (103, 844, 32);
INSERT INTO public.games VALUES (104, 486, 31);
INSERT INTO public.games VALUES (105, 481, 31);
INSERT INTO public.games VALUES (106, 620, 31);
INSERT INTO public.games VALUES (107, 907, 33);
INSERT INTO public.games VALUES (108, 784, 33);
INSERT INTO public.games VALUES (109, 159, 34);
INSERT INTO public.games VALUES (110, 512, 34);
INSERT INTO public.games VALUES (111, 112, 33);
INSERT INTO public.games VALUES (112, 244, 33);
INSERT INTO public.games VALUES (113, 120, 33);
INSERT INTO public.games VALUES (114, 64, 35);
INSERT INTO public.games VALUES (115, 388, 35);
INSERT INTO public.games VALUES (116, 426, 36);
INSERT INTO public.games VALUES (117, 597, 36);
INSERT INTO public.games VALUES (118, 767, 35);
INSERT INTO public.games VALUES (119, 74, 35);
INSERT INTO public.games VALUES (120, 28, 35);
INSERT INTO public.games VALUES (121, 488, 37);
INSERT INTO public.games VALUES (122, 517, 37);
INSERT INTO public.games VALUES (123, 663, 38);
INSERT INTO public.games VALUES (124, 824, 38);
INSERT INTO public.games VALUES (125, 241, 37);
INSERT INTO public.games VALUES (126, 861, 37);
INSERT INTO public.games VALUES (127, 787, 37);
INSERT INTO public.games VALUES (128, 452, 39);
INSERT INTO public.games VALUES (129, 643, 39);
INSERT INTO public.games VALUES (130, 544, 40);
INSERT INTO public.games VALUES (131, 821, 40);
INSERT INTO public.games VALUES (132, 519, 39);
INSERT INTO public.games VALUES (133, 269, 39);
INSERT INTO public.games VALUES (134, 817, 39);
INSERT INTO public.games VALUES (135, 504, 41);
INSERT INTO public.games VALUES (136, 825, 41);
INSERT INTO public.games VALUES (137, 986, 42);
INSERT INTO public.games VALUES (138, 627, 42);
INSERT INTO public.games VALUES (139, 822, 41);
INSERT INTO public.games VALUES (140, 185, 41);
INSERT INTO public.games VALUES (141, 130, 41);
INSERT INTO public.games VALUES (142, 741, 43);
INSERT INTO public.games VALUES (143, 76, 43);
INSERT INTO public.games VALUES (144, 549, 44);
INSERT INTO public.games VALUES (145, 758, 44);
INSERT INTO public.games VALUES (146, 888, 43);
INSERT INTO public.games VALUES (147, 110, 43);
INSERT INTO public.games VALUES (148, 869, 43);
INSERT INTO public.games VALUES (149, 610, 45);
INSERT INTO public.games VALUES (150, 704, 45);
INSERT INTO public.games VALUES (151, 353, 46);
INSERT INTO public.games VALUES (152, 772, 46);
INSERT INTO public.games VALUES (153, 85, 45);
INSERT INTO public.games VALUES (154, 987, 45);
INSERT INTO public.games VALUES (155, 770, 45);
INSERT INTO public.games VALUES (156, 10, 47);
INSERT INTO public.games VALUES (157, 152, 48);
INSERT INTO public.games VALUES (158, 648, 48);
INSERT INTO public.games VALUES (159, 701, 49);
INSERT INTO public.games VALUES (160, 347, 49);
INSERT INTO public.games VALUES (161, 113, 48);
INSERT INTO public.games VALUES (162, 321, 48);
INSERT INTO public.games VALUES (163, 823, 48);
INSERT INTO public.games VALUES (164, 878, 50);
INSERT INTO public.games VALUES (165, 301, 50);
INSERT INTO public.games VALUES (166, 80, 51);
INSERT INTO public.games VALUES (167, 144, 51);
INSERT INTO public.games VALUES (168, 501, 50);
INSERT INTO public.games VALUES (169, 949, 50);
INSERT INTO public.games VALUES (170, 861, 50);
INSERT INTO public.games VALUES (171, 945, 52);
INSERT INTO public.games VALUES (172, 147, 52);
INSERT INTO public.games VALUES (173, 318, 53);
INSERT INTO public.games VALUES (174, 604, 53);
INSERT INTO public.games VALUES (175, 20, 52);
INSERT INTO public.games VALUES (176, 778, 52);
INSERT INTO public.games VALUES (177, 925, 52);
INSERT INTO public.games VALUES (178, 410, 54);
INSERT INTO public.games VALUES (179, 936, 54);
INSERT INTO public.games VALUES (180, 892, 55);
INSERT INTO public.games VALUES (181, 399, 55);
INSERT INTO public.games VALUES (182, 583, 54);
INSERT INTO public.games VALUES (183, 882, 54);
INSERT INTO public.games VALUES (184, 245, 54);
INSERT INTO public.games VALUES (185, 304, 56);
INSERT INTO public.games VALUES (186, 649, 56);
INSERT INTO public.games VALUES (187, 893, 57);
INSERT INTO public.games VALUES (188, 266, 57);
INSERT INTO public.games VALUES (189, 102, 56);
INSERT INTO public.games VALUES (190, 424, 56);
INSERT INTO public.games VALUES (191, 446, 56);
INSERT INTO public.games VALUES (192, 660, 58);
INSERT INTO public.games VALUES (193, 659, 58);
INSERT INTO public.games VALUES (194, 931, 59);
INSERT INTO public.games VALUES (195, 683, 59);
INSERT INTO public.games VALUES (196, 991, 58);
INSERT INTO public.games VALUES (197, 688, 58);
INSERT INTO public.games VALUES (198, 864, 58);
INSERT INTO public.games VALUES (199, 130, 60);
INSERT INTO public.games VALUES (200, 745, 60);
INSERT INTO public.games VALUES (201, 317, 61);
INSERT INTO public.games VALUES (202, 55, 61);
INSERT INTO public.games VALUES (203, 590, 60);
INSERT INTO public.games VALUES (204, 747, 60);
INSERT INTO public.games VALUES (205, 737, 60);
INSERT INTO public.games VALUES (206, 791, 62);
INSERT INTO public.games VALUES (207, 562, 62);
INSERT INTO public.games VALUES (208, 885, 63);
INSERT INTO public.games VALUES (209, 469, 63);
INSERT INTO public.games VALUES (210, 568, 62);
INSERT INTO public.games VALUES (211, 270, 62);
INSERT INTO public.games VALUES (212, 262, 62);
INSERT INTO public.games VALUES (213, 239, 64);
INSERT INTO public.games VALUES (214, 703, 64);
INSERT INTO public.games VALUES (215, 368, 65);
INSERT INTO public.games VALUES (216, 88, 65);
INSERT INTO public.games VALUES (217, 68, 64);
INSERT INTO public.games VALUES (218, 194, 64);
INSERT INTO public.games VALUES (219, 874, 64);
INSERT INTO public.games VALUES (220, 851, 66);
INSERT INTO public.games VALUES (221, 42, 66);
INSERT INTO public.games VALUES (222, 221, 67);
INSERT INTO public.games VALUES (223, 865, 67);
INSERT INTO public.games VALUES (224, 279, 66);
INSERT INTO public.games VALUES (225, 601, 66);
INSERT INTO public.games VALUES (226, 572, 66);
INSERT INTO public.games VALUES (227, 963, 68);
INSERT INTO public.games VALUES (228, 958, 68);
INSERT INTO public.games VALUES (229, 111, 69);
INSERT INTO public.games VALUES (230, 944, 69);
INSERT INTO public.games VALUES (231, 60, 68);
INSERT INTO public.games VALUES (232, 396, 68);
INSERT INTO public.games VALUES (233, 518, 68);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (6, 'user_1671722691634');
INSERT INTO public.users VALUES (7, 'user_1671722691633');
INSERT INTO public.users VALUES (8, 'user_1671722862854');
INSERT INTO public.users VALUES (9, 'user_1671722862853');
INSERT INTO public.users VALUES (10, 'user_1671722929858');
INSERT INTO public.users VALUES (11, 'user_1671722929857');
INSERT INTO public.users VALUES (12, 'user_1671722941531');
INSERT INTO public.users VALUES (13, 'user_1671722941530');
INSERT INTO public.users VALUES (14, 'user_1671722991807');
INSERT INTO public.users VALUES (15, 'user_1671722991806');
INSERT INTO public.users VALUES (16, 'user_1671723050953');
INSERT INTO public.users VALUES (17, 'user_1671723050952');
INSERT INTO public.users VALUES (18, 'user_1671723070058');
INSERT INTO public.users VALUES (19, 'user_1671723070057');
INSERT INTO public.users VALUES (20, 'mehmet');
INSERT INTO public.users VALUES (21, 'user_1671723440306');
INSERT INTO public.users VALUES (22, 'user_1671723440305');
INSERT INTO public.users VALUES (23, 'user_1671723498671');
INSERT INTO public.users VALUES (24, 'user_1671723498670');
INSERT INTO public.users VALUES (25, 'user_1671723662738');
INSERT INTO public.users VALUES (26, 'user_1671723662737');
INSERT INTO public.users VALUES (27, 'user_1671724066009');
INSERT INTO public.users VALUES (28, 'user_1671724066008');
INSERT INTO public.users VALUES (29, 'user_1671724100766');
INSERT INTO public.users VALUES (30, 'user_1671724100765');
INSERT INTO public.users VALUES (31, 'user_1671724125435');
INSERT INTO public.users VALUES (32, 'user_1671724125434');
INSERT INTO public.users VALUES (33, 'user_1671724138328');
INSERT INTO public.users VALUES (34, 'user_1671724138327');
INSERT INTO public.users VALUES (35, 'user_1671724162188');
INSERT INTO public.users VALUES (36, 'user_1671724162187');
INSERT INTO public.users VALUES (37, 'user_1671724187360');
INSERT INTO public.users VALUES (38, 'user_1671724187359');
INSERT INTO public.users VALUES (39, 'user_1671724221346');
INSERT INTO public.users VALUES (40, 'user_1671724221345');
INSERT INTO public.users VALUES (41, 'user_1671724241512');
INSERT INTO public.users VALUES (42, 'user_1671724241511');
INSERT INTO public.users VALUES (43, 'user_1671724276960');
INSERT INTO public.users VALUES (44, 'user_1671724276959');
INSERT INTO public.users VALUES (45, 'user_1671724294720');
INSERT INTO public.users VALUES (46, 'user_1671724294719');
INSERT INTO public.users VALUES (47, 'akif');
INSERT INTO public.users VALUES (48, 'user_1671724966374');
INSERT INTO public.users VALUES (49, 'user_1671724966373');
INSERT INTO public.users VALUES (50, 'user_1671725075091');
INSERT INTO public.users VALUES (51, 'user_1671725075090');
INSERT INTO public.users VALUES (52, 'user_1671725584894');
INSERT INTO public.users VALUES (53, 'user_1671725584893');
INSERT INTO public.users VALUES (54, 'user_1671725602350');
INSERT INTO public.users VALUES (55, 'user_1671725602349');
INSERT INTO public.users VALUES (56, 'user_1671725651273');
INSERT INTO public.users VALUES (57, 'user_1671725651272');
INSERT INTO public.users VALUES (58, 'user_1671725739621');
INSERT INTO public.users VALUES (59, 'user_1671725739620');
INSERT INTO public.users VALUES (60, 'user_1671725766300');
INSERT INTO public.users VALUES (61, 'user_1671725766299');
INSERT INTO public.users VALUES (62, 'user_1671725783579');
INSERT INTO public.users VALUES (63, 'user_1671725783578');
INSERT INTO public.users VALUES (64, 'user_1671725826495');
INSERT INTO public.users VALUES (65, 'user_1671725826494');
INSERT INTO public.users VALUES (66, 'user_1671725863166');
INSERT INTO public.users VALUES (67, 'user_1671725863165');
INSERT INTO public.users VALUES (68, 'user_1671725880448');
INSERT INTO public.users VALUES (69, 'user_1671725880447');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 233, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 69, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

