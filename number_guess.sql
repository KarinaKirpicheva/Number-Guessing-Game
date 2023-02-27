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

INSERT INTO public.games VALUES (1, 987, 4);
INSERT INTO public.games VALUES (2, 813, 4);
INSERT INTO public.games VALUES (3, 143, 5);
INSERT INTO public.games VALUES (4, 39, 5);
INSERT INTO public.games VALUES (5, 602, 4);
INSERT INTO public.games VALUES (6, 590, 4);
INSERT INTO public.games VALUES (7, 957, 4);
INSERT INTO public.games VALUES (8, 23, 3);
INSERT INTO public.games VALUES (9, 777, 6);
INSERT INTO public.games VALUES (10, 867, 6);
INSERT INTO public.games VALUES (11, 203, 7);
INSERT INTO public.games VALUES (12, 167, 7);
INSERT INTO public.games VALUES (13, 795, 6);
INSERT INTO public.games VALUES (14, 699, 6);
INSERT INTO public.games VALUES (15, 538, 6);
INSERT INTO public.games VALUES (16, 1, 8);
INSERT INTO public.games VALUES (17, 374, 8);
INSERT INTO public.games VALUES (18, 191, 9);
INSERT INTO public.games VALUES (19, 391, 9);
INSERT INTO public.games VALUES (20, 99, 8);
INSERT INTO public.games VALUES (21, 684, 8);
INSERT INTO public.games VALUES (22, 653, 8);
INSERT INTO public.games VALUES (23, 366, 10);
INSERT INTO public.games VALUES (24, 736, 10);
INSERT INTO public.games VALUES (25, 815, 11);
INSERT INTO public.games VALUES (26, 513, 11);
INSERT INTO public.games VALUES (27, 539, 10);
INSERT INTO public.games VALUES (28, 195, 10);
INSERT INTO public.games VALUES (29, 350, 10);
INSERT INTO public.games VALUES (30, 264, 12);
INSERT INTO public.games VALUES (31, 667, 12);
INSERT INTO public.games VALUES (32, 154, 13);
INSERT INTO public.games VALUES (33, 530, 13);
INSERT INTO public.games VALUES (34, 455, 12);
INSERT INTO public.games VALUES (35, 226, 12);
INSERT INTO public.games VALUES (36, 378, 12);
INSERT INTO public.games VALUES (37, 7, 14);
INSERT INTO public.games VALUES (38, 542, 14);
INSERT INTO public.games VALUES (39, 524, 15);
INSERT INTO public.games VALUES (40, 918, 15);
INSERT INTO public.games VALUES (41, 587, 14);
INSERT INTO public.games VALUES (42, 499, 14);
INSERT INTO public.games VALUES (43, 872, 14);
INSERT INTO public.games VALUES (44, 1, 16);
INSERT INTO public.games VALUES (45, 574, 16);
INSERT INTO public.games VALUES (46, 945, 17);
INSERT INTO public.games VALUES (47, 955, 17);
INSERT INTO public.games VALUES (48, 808, 16);
INSERT INTO public.games VALUES (49, 21, 16);
INSERT INTO public.games VALUES (50, 974, 16);
INSERT INTO public.games VALUES (51, 1, 18);
INSERT INTO public.games VALUES (52, 640, 18);
INSERT INTO public.games VALUES (53, 529, 19);
INSERT INTO public.games VALUES (54, 751, 19);
INSERT INTO public.games VALUES (55, 467, 18);
INSERT INTO public.games VALUES (56, 227, 18);
INSERT INTO public.games VALUES (57, 850, 18);
INSERT INTO public.games VALUES (58, 9, 20);
INSERT INTO public.games VALUES (59, 947, 21);
INSERT INTO public.games VALUES (60, 309, 21);
INSERT INTO public.games VALUES (61, 1, 22);
INSERT INTO public.games VALUES (62, 443, 22);
INSERT INTO public.games VALUES (63, 933, 21);
INSERT INTO public.games VALUES (64, 995, 21);
INSERT INTO public.games VALUES (65, 876, 21);
INSERT INTO public.games VALUES (66, 809, 23);
INSERT INTO public.games VALUES (67, 404, 23);
INSERT INTO public.games VALUES (68, 665, 24);
INSERT INTO public.games VALUES (69, 920, 24);
INSERT INTO public.games VALUES (70, 309, 23);
INSERT INTO public.games VALUES (71, 968, 23);
INSERT INTO public.games VALUES (72, 319, 23);
INSERT INTO public.games VALUES (73, 1, 25);
INSERT INTO public.games VALUES (74, 120, 25);
INSERT INTO public.games VALUES (75, 752, 26);
INSERT INTO public.games VALUES (76, 470, 26);
INSERT INTO public.games VALUES (77, 195, 25);
INSERT INTO public.games VALUES (78, 878, 25);
INSERT INTO public.games VALUES (79, 88, 25);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1677495999027');
INSERT INTO public.users VALUES (2, 'user_1677495999026');
INSERT INTO public.users VALUES (3, 'tom');
INSERT INTO public.users VALUES (4, 'user_1677498703695');
INSERT INTO public.users VALUES (5, 'user_1677498703694');
INSERT INTO public.users VALUES (6, 'user_1677499191076');
INSERT INTO public.users VALUES (7, 'user_1677499191075');
INSERT INTO public.users VALUES (8, 'user_1677499497331');
INSERT INTO public.users VALUES (9, 'user_1677499497330');
INSERT INTO public.users VALUES (10, 'user_1677499615148');
INSERT INTO public.users VALUES (11, 'user_1677499615147');
INSERT INTO public.users VALUES (12, 'user_1677499728843');
INSERT INTO public.users VALUES (13, 'user_1677499728842');
INSERT INTO public.users VALUES (14, 'user_1677499801134');
INSERT INTO public.users VALUES (15, 'user_1677499801133');
INSERT INTO public.users VALUES (16, 'user_1677499837860');
INSERT INTO public.users VALUES (17, 'user_1677499837859');
INSERT INTO public.users VALUES (18, 'user_1677499867463');
INSERT INTO public.users VALUES (19, 'user_1677499867462');
INSERT INTO public.users VALUES (20, 'tina');
INSERT INTO public.users VALUES (21, 'user_1677499939038');
INSERT INTO public.users VALUES (22, 'user_1677499939037');
INSERT INTO public.users VALUES (23, 'user_1677500021397');
INSERT INTO public.users VALUES (24, 'user_1677500021396');
INSERT INTO public.users VALUES (25, 'user_1677500068349');
INSERT INTO public.users VALUES (26, 'user_1677500068348');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


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

