--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (2, 21, 345);
INSERT INTO public.games VALUES (3, 21, 437);
INSERT INTO public.games VALUES (4, 22, 336);
INSERT INTO public.games VALUES (5, 22, 136);
INSERT INTO public.games VALUES (6, 21, 639);
INSERT INTO public.games VALUES (7, 21, 821);
INSERT INTO public.games VALUES (8, 21, 840);
INSERT INTO public.games VALUES (9, 20, 7);
INSERT INTO public.games VALUES (10, 20, 11);
INSERT INTO public.games VALUES (11, 23, 244);
INSERT INTO public.games VALUES (12, 23, 222);
INSERT INTO public.games VALUES (13, 24, 351);
INSERT INTO public.games VALUES (14, 24, 998);
INSERT INTO public.games VALUES (15, 23, 559);
INSERT INTO public.games VALUES (16, 23, 218);
INSERT INTO public.games VALUES (17, 23, 542);
INSERT INTO public.games VALUES (18, 25, 837);
INSERT INTO public.games VALUES (19, 25, 42);
INSERT INTO public.games VALUES (20, 26, 64);
INSERT INTO public.games VALUES (21, 26, 983);
INSERT INTO public.games VALUES (22, 25, 978);
INSERT INTO public.games VALUES (23, 25, 521);
INSERT INTO public.games VALUES (24, 25, 974);
INSERT INTO public.games VALUES (25, 27, 335);
INSERT INTO public.games VALUES (26, 27, 516);
INSERT INTO public.games VALUES (27, 28, 183);
INSERT INTO public.games VALUES (28, 28, 144);
INSERT INTO public.games VALUES (29, 27, 574);
INSERT INTO public.games VALUES (30, 27, 96);
INSERT INTO public.games VALUES (31, 27, 306);
INSERT INTO public.games VALUES (32, 29, 806);
INSERT INTO public.games VALUES (33, 29, 57);
INSERT INTO public.games VALUES (34, 30, 173);
INSERT INTO public.games VALUES (35, 30, 640);
INSERT INTO public.games VALUES (36, 29, 155);
INSERT INTO public.games VALUES (37, 29, 630);
INSERT INTO public.games VALUES (38, 29, 790);
INSERT INTO public.games VALUES (39, 31, 40);
INSERT INTO public.games VALUES (40, 31, 587);
INSERT INTO public.games VALUES (41, 32, 895);
INSERT INTO public.games VALUES (42, 32, 441);
INSERT INTO public.games VALUES (43, 31, 801);
INSERT INTO public.games VALUES (44, 31, 761);
INSERT INTO public.games VALUES (45, 31, 450);
INSERT INTO public.games VALUES (46, 33, 25);
INSERT INTO public.games VALUES (47, 33, 468);
INSERT INTO public.games VALUES (48, 34, 628);
INSERT INTO public.games VALUES (49, 34, 892);
INSERT INTO public.games VALUES (50, 33, 740);
INSERT INTO public.games VALUES (51, 33, 982);
INSERT INTO public.games VALUES (52, 33, 726);
INSERT INTO public.games VALUES (53, 35, 216);
INSERT INTO public.games VALUES (54, 35, 169);
INSERT INTO public.games VALUES (55, 36, 535);
INSERT INTO public.games VALUES (56, 36, 77);
INSERT INTO public.games VALUES (57, 35, 897);
INSERT INTO public.games VALUES (58, 35, 474);
INSERT INTO public.games VALUES (59, 35, 455);
INSERT INTO public.games VALUES (60, 37, 989);
INSERT INTO public.games VALUES (61, 37, 421);
INSERT INTO public.games VALUES (62, 38, 621);
INSERT INTO public.games VALUES (63, 38, 978);
INSERT INTO public.games VALUES (64, 37, 580);
INSERT INTO public.games VALUES (65, 37, 75);
INSERT INTO public.games VALUES (66, 37, 317);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'Beatriz');
INSERT INTO public.users VALUES (21, 'user_1794943449745');
INSERT INTO public.users VALUES (22, 'user_1794943449744');
INSERT INTO public.users VALUES (23, 'user_1794943590830');
INSERT INTO public.users VALUES (24, 'user_1794943590829');
INSERT INTO public.users VALUES (25, 'user_1794943647743');
INSERT INTO public.users VALUES (26, 'user_1794943647742');
INSERT INTO public.users VALUES (27, 'user_1794943662425');
INSERT INTO public.users VALUES (28, 'user_1794943662424');
INSERT INTO public.users VALUES (29, 'user_1794943704722');
INSERT INTO public.users VALUES (30, 'user_1794943704721');
INSERT INTO public.users VALUES (31, 'user_1794944163380');
INSERT INTO public.users VALUES (32, 'user_1794944163379');
INSERT INTO public.users VALUES (33, 'user_1794944190804');
INSERT INTO public.users VALUES (34, 'user_1794944190803');
INSERT INTO public.users VALUES (35, 'user_1794944256149');
INSERT INTO public.users VALUES (36, 'user_1794944256148');
INSERT INTO public.users VALUES (37, 'user_1794944292020');
INSERT INTO public.users VALUES (38, 'user_1794944292019');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

