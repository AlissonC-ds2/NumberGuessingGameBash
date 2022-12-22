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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
    user_id integer NOT NULL,
    tries integer
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
    name character varying(22)
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

INSERT INTO public.games VALUES (348, 95, 460);
INSERT INTO public.games VALUES (349, 95, 452);
INSERT INTO public.games VALUES (350, 96, 351);
INSERT INTO public.games VALUES (311, 83, 23);
INSERT INTO public.games VALUES (351, 96, 62);
INSERT INTO public.games VALUES (352, 95, 484);
INSERT INTO public.games VALUES (353, 95, 635);
INSERT INTO public.games VALUES (354, 95, 767);
INSERT INTO public.games VALUES (303, 81, 26);
INSERT INTO public.games VALUES (355, 97, 426);
INSERT INTO public.games VALUES (356, 97, 73);
INSERT INTO public.games VALUES (357, 98, 662);
INSERT INTO public.games VALUES (297, 81, 25);
INSERT INTO public.games VALUES (304, 81, 7);
INSERT INTO public.games VALUES (305, 81, NULL);
INSERT INTO public.games VALUES (358, 98, 129);
INSERT INTO public.games VALUES (359, 97, 735);
INSERT INTO public.games VALUES (360, 97, 378);
INSERT INTO public.games VALUES (361, 97, 907);
INSERT INTO public.games VALUES (312, 83, 24);
INSERT INTO public.games VALUES (313, 85, 388);
INSERT INTO public.games VALUES (314, 85, 627);
INSERT INTO public.games VALUES (315, 86, 60);
INSERT INTO public.games VALUES (316, 86, 819);
INSERT INTO public.games VALUES (306, 83, 20);
INSERT INTO public.games VALUES (298, 81, 25);
INSERT INTO public.games VALUES (317, 85, 84);
INSERT INTO public.games VALUES (318, 85, 517);
INSERT INTO public.games VALUES (319, 85, 93);
INSERT INTO public.games VALUES (320, 87, 61);
INSERT INTO public.games VALUES (321, 87, 951);
INSERT INTO public.games VALUES (322, 88, 275);
INSERT INTO public.games VALUES (323, 88, 509);
INSERT INTO public.games VALUES (324, 87, 114);
INSERT INTO public.games VALUES (325, 87, 231);
INSERT INTO public.games VALUES (326, 87, 172);
INSERT INTO public.games VALUES (327, 89, 198);
INSERT INTO public.games VALUES (307, 83, 23);
INSERT INTO public.games VALUES (299, 82, 25);
INSERT INTO public.games VALUES (328, 89, 90);
INSERT INTO public.games VALUES (329, 90, 688);
INSERT INTO public.games VALUES (330, 90, 791);
INSERT INTO public.games VALUES (331, 89, 614);
INSERT INTO public.games VALUES (332, 89, 30);
INSERT INTO public.games VALUES (333, 89, 994);
INSERT INTO public.games VALUES (334, 91, 588);
INSERT INTO public.games VALUES (335, 91, 297);
INSERT INTO public.games VALUES (336, 92, 842);
INSERT INTO public.games VALUES (337, 92, 53);
INSERT INTO public.games VALUES (338, 91, 794);
INSERT INTO public.games VALUES (308, 84, 23);
INSERT INTO public.games VALUES (300, 82, 26);
INSERT INTO public.games VALUES (339, 91, 817);
INSERT INTO public.games VALUES (340, 91, 79);
INSERT INTO public.games VALUES (341, 93, 468);
INSERT INTO public.games VALUES (342, 93, 602);
INSERT INTO public.games VALUES (343, 94, 636);
INSERT INTO public.games VALUES (344, 94, 588);
INSERT INTO public.games VALUES (345, 93, 600);
INSERT INTO public.games VALUES (346, 93, 42);
INSERT INTO public.games VALUES (347, 93, 861);
INSERT INTO public.games VALUES (309, 84, 24);
INSERT INTO public.games VALUES (301, 81, 26);
INSERT INTO public.games VALUES (310, 83, 24);
INSERT INTO public.games VALUES (302, 81, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (81, 'user_1671655385327');
INSERT INTO public.users VALUES (82, 'user_1671655385326');
INSERT INTO public.users VALUES (83, 'user_1671709051232');
INSERT INTO public.users VALUES (84, 'user_1671709051231');
INSERT INTO public.users VALUES (85, 'user_1671709226456');
INSERT INTO public.users VALUES (86, 'user_1671709226455');
INSERT INTO public.users VALUES (87, 'user_1671709889077');
INSERT INTO public.users VALUES (88, 'user_1671709889076');
INSERT INTO public.users VALUES (89, 'user_1671710004713');
INSERT INTO public.users VALUES (90, 'user_1671710004712');
INSERT INTO public.users VALUES (91, 'user_1671710021102');
INSERT INTO public.users VALUES (92, 'user_1671710021101');
INSERT INTO public.users VALUES (93, 'user_1671710042287');
INSERT INTO public.users VALUES (94, 'user_1671710042286');
INSERT INTO public.users VALUES (95, 'user_1671710132552');
INSERT INTO public.users VALUES (96, 'user_1671710132551');
INSERT INTO public.users VALUES (97, 'user_1671710486204');
INSERT INTO public.users VALUES (98, 'user_1671710486203');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 361, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 98, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

