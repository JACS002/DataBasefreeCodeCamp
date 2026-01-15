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

INSERT INTO public.games VALUES (1, 1, 535);
INSERT INTO public.games VALUES (2, 2, 627);
INSERT INTO public.games VALUES (3, 1, 985);
INSERT INTO public.games VALUES (4, 1, 421);
INSERT INTO public.games VALUES (5, 1, 347);
INSERT INTO public.games VALUES (6, 3, 303);
INSERT INTO public.games VALUES (7, 4, 230);
INSERT INTO public.games VALUES (8, 3, 660);
INSERT INTO public.games VALUES (9, 3, 122);
INSERT INTO public.games VALUES (10, 3, 157);
INSERT INTO public.games VALUES (11, 5, 500);
INSERT INTO public.games VALUES (12, 6, 46);
INSERT INTO public.games VALUES (13, 5, 191);
INSERT INTO public.games VALUES (14, 5, 469);
INSERT INTO public.games VALUES (15, 5, 429);
INSERT INTO public.games VALUES (16, 7, 212);
INSERT INTO public.games VALUES (17, 8, 985);
INSERT INTO public.games VALUES (18, 7, 541);
INSERT INTO public.games VALUES (19, 7, 839);
INSERT INTO public.games VALUES (20, 7, 753);
INSERT INTO public.games VALUES (21, 9, 223);
INSERT INTO public.games VALUES (22, 10, 651);
INSERT INTO public.games VALUES (23, 9, 530);
INSERT INTO public.games VALUES (24, 9, 170);
INSERT INTO public.games VALUES (25, 9, 751);
INSERT INTO public.games VALUES (26, 11, 893);
INSERT INTO public.games VALUES (27, 12, 69);
INSERT INTO public.games VALUES (28, 11, 515);
INSERT INTO public.games VALUES (29, 11, 587);
INSERT INTO public.games VALUES (30, 11, 277);
INSERT INTO public.games VALUES (31, 14, 551);
INSERT INTO public.games VALUES (32, 14, 628);
INSERT INTO public.games VALUES (33, 15, 685);
INSERT INTO public.games VALUES (34, 15, 192);
INSERT INTO public.games VALUES (35, 14, 269);
INSERT INTO public.games VALUES (36, 14, 769);
INSERT INTO public.games VALUES (37, 14, 832);
INSERT INTO public.games VALUES (38, 16, 484);
INSERT INTO public.games VALUES (39, 16, 583);
INSERT INTO public.games VALUES (40, 17, 598);
INSERT INTO public.games VALUES (41, 17, 551);
INSERT INTO public.games VALUES (42, 16, 549);
INSERT INTO public.games VALUES (43, 16, 542);
INSERT INTO public.games VALUES (44, 16, 787);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1768447939793');
INSERT INTO public.users VALUES (2, 'user_1768447939792');
INSERT INTO public.users VALUES (3, 'user_1768447985184');
INSERT INTO public.users VALUES (4, 'user_1768447985183');
INSERT INTO public.users VALUES (5, 'user_1768448085319');
INSERT INTO public.users VALUES (6, 'user_1768448085318');
INSERT INTO public.users VALUES (7, 'user_1768448138104');
INSERT INTO public.users VALUES (8, 'user_1768448138103');
INSERT INTO public.users VALUES (9, 'user_1768448233100');
INSERT INTO public.users VALUES (10, 'user_1768448233099');
INSERT INTO public.users VALUES (11, 'user_1768448251291');
INSERT INTO public.users VALUES (12, 'user_1768448251290');
INSERT INTO public.users VALUES (13, 'Joel');
INSERT INTO public.users VALUES (14, 'user_1768448546481');
INSERT INTO public.users VALUES (15, 'user_1768448546480');
INSERT INTO public.users VALUES (16, 'user_1768448567852');
INSERT INTO public.users VALUES (17, 'user_1768448567851');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


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

