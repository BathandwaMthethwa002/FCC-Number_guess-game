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
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 477);
INSERT INTO public.games VALUES (2, 1, 135);
INSERT INTO public.games VALUES (3, 2, 908);
INSERT INTO public.games VALUES (4, 2, 314);
INSERT INTO public.games VALUES (5, 1, 394);
INSERT INTO public.games VALUES (6, 1, 425);
INSERT INTO public.games VALUES (7, 1, 151);
INSERT INTO public.games VALUES (8, 3, 317);
INSERT INTO public.games VALUES (9, 3, 738);
INSERT INTO public.games VALUES (10, 4, 98);
INSERT INTO public.games VALUES (11, 4, 600);
INSERT INTO public.games VALUES (12, 3, 686);
INSERT INTO public.games VALUES (13, 3, 361);
INSERT INTO public.games VALUES (14, 3, 4);
INSERT INTO public.games VALUES (15, 5, 916);
INSERT INTO public.games VALUES (16, 5, 668);
INSERT INTO public.games VALUES (17, 6, 358);
INSERT INTO public.games VALUES (18, 6, 510);
INSERT INTO public.games VALUES (19, 5, 635);
INSERT INTO public.games VALUES (20, 5, 78);
INSERT INTO public.games VALUES (21, 5, 976);
INSERT INTO public.games VALUES (22, 7, 282);
INSERT INTO public.games VALUES (23, 7, 464);
INSERT INTO public.games VALUES (24, 8, 789);
INSERT INTO public.games VALUES (25, 8, 174);
INSERT INTO public.games VALUES (26, 7, 596);
INSERT INTO public.games VALUES (27, 7, 105);
INSERT INTO public.games VALUES (28, 7, 669);
INSERT INTO public.games VALUES (29, 9, 298);
INSERT INTO public.games VALUES (30, 9, 237);
INSERT INTO public.games VALUES (31, 10, 272);
INSERT INTO public.games VALUES (32, 10, 238);
INSERT INTO public.games VALUES (33, 9, 99);
INSERT INTO public.games VALUES (34, 9, 652);
INSERT INTO public.games VALUES (35, 9, 358);
INSERT INTO public.games VALUES (36, 11, 56);
INSERT INTO public.games VALUES (37, 11, 203);
INSERT INTO public.games VALUES (38, 12, 271);
INSERT INTO public.games VALUES (39, 12, 385);
INSERT INTO public.games VALUES (40, 11, 917);
INSERT INTO public.games VALUES (41, 11, 284);
INSERT INTO public.games VALUES (42, 11, 239);
INSERT INTO public.games VALUES (43, 13, 729);
INSERT INTO public.games VALUES (44, 13, 966);
INSERT INTO public.games VALUES (45, 14, 471);
INSERT INTO public.games VALUES (46, 14, 809);
INSERT INTO public.games VALUES (47, 13, 264);
INSERT INTO public.games VALUES (48, 13, 466);
INSERT INTO public.games VALUES (49, 13, 482);
INSERT INTO public.games VALUES (50, 15, 968);
INSERT INTO public.games VALUES (51, 15, 819);
INSERT INTO public.games VALUES (52, 16, 547);
INSERT INTO public.games VALUES (53, 16, 801);
INSERT INTO public.games VALUES (54, 15, 337);
INSERT INTO public.games VALUES (55, 15, 997);
INSERT INTO public.games VALUES (56, 15, 255);
INSERT INTO public.games VALUES (57, 17, 124);
INSERT INTO public.games VALUES (58, 17, 796);
INSERT INTO public.games VALUES (59, 18, 442);
INSERT INTO public.games VALUES (60, 18, 510);
INSERT INTO public.games VALUES (61, 17, 794);
INSERT INTO public.games VALUES (62, 17, 313);
INSERT INTO public.games VALUES (63, 17, 1001);
INSERT INTO public.games VALUES (64, 19, 686);
INSERT INTO public.games VALUES (65, 19, 854);
INSERT INTO public.games VALUES (66, 20, 904);
INSERT INTO public.games VALUES (67, 20, 558);
INSERT INTO public.games VALUES (68, 19, 933);
INSERT INTO public.games VALUES (69, 19, 740);
INSERT INTO public.games VALUES (70, 19, 767);
INSERT INTO public.games VALUES (71, 21, 114);
INSERT INTO public.games VALUES (72, 21, 8);
INSERT INTO public.games VALUES (73, 22, 545);
INSERT INTO public.games VALUES (74, 22, 22);
INSERT INTO public.games VALUES (75, 21, 459);
INSERT INTO public.games VALUES (76, 21, 328);
INSERT INTO public.games VALUES (77, 21, 834);
INSERT INTO public.games VALUES (78, 23, 396);
INSERT INTO public.games VALUES (79, 23, 837);
INSERT INTO public.games VALUES (80, 24, 19);
INSERT INTO public.games VALUES (81, 24, 121);
INSERT INTO public.games VALUES (82, 23, 727);
INSERT INTO public.games VALUES (83, 23, 347);
INSERT INTO public.games VALUES (84, 23, 470);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1733139015787');
INSERT INTO public.users VALUES (2, 'user_1733139015786');
INSERT INTO public.users VALUES (3, 'user_1733139048358');
INSERT INTO public.users VALUES (4, 'user_1733139048357');
INSERT INTO public.users VALUES (5, 'user_1733139054664');
INSERT INTO public.users VALUES (6, 'user_1733139054663');
INSERT INTO public.users VALUES (7, 'user_1733139329204');
INSERT INTO public.users VALUES (8, 'user_1733139329203');
INSERT INTO public.users VALUES (9, 'user_1733139594733');
INSERT INTO public.users VALUES (10, 'user_1733139594732');
INSERT INTO public.users VALUES (11, 'user_1733139618203');
INSERT INTO public.users VALUES (12, 'user_1733139618202');
INSERT INTO public.users VALUES (13, 'user_1733139651845');
INSERT INTO public.users VALUES (14, 'user_1733139651844');
INSERT INTO public.users VALUES (15, 'user_1733140882700');
INSERT INTO public.users VALUES (16, 'user_1733140882699');
INSERT INTO public.users VALUES (17, 'user_1733141101024');
INSERT INTO public.users VALUES (18, 'user_1733141101023');
INSERT INTO public.users VALUES (19, 'user_1733141349594');
INSERT INTO public.users VALUES (20, 'user_1733141349593');
INSERT INTO public.users VALUES (21, 'user_1733141547099');
INSERT INTO public.users VALUES (22, 'user_1733141547098');
INSERT INTO public.users VALUES (23, 'user_1733141702613');
INSERT INTO public.users VALUES (24, 'user_1733141702612');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

