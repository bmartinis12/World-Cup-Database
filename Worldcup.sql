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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 621, 623, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 622, 624, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 623, 624, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 621, 622, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 623, 627, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 624, 625, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 622, 626, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 621, 628, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 624, 632, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 625, 634, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 622, 635, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 626, 636, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 623, 637, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 627, 638, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 628, 639, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 621, 631, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 629, 631, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 630, 626, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 631, 630, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 629, 626, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 630, 633, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 631, 622, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 626, 632, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 629, 621, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 626, 640, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 632, 628, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 621, 641, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 629, 642, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 630, 636, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 633, 643, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 631, 634, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 622, 644, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (621, 'France');
INSERT INTO public.teams VALUES (622, 'Belgium');
INSERT INTO public.teams VALUES (623, 'Croatia');
INSERT INTO public.teams VALUES (624, 'England');
INSERT INTO public.teams VALUES (625, 'Sweden');
INSERT INTO public.teams VALUES (626, 'Brazil');
INSERT INTO public.teams VALUES (627, 'Russia');
INSERT INTO public.teams VALUES (628, 'Uruguay');
INSERT INTO public.teams VALUES (629, 'Germany');
INSERT INTO public.teams VALUES (630, 'Netherlands');
INSERT INTO public.teams VALUES (631, 'Argentina');
INSERT INTO public.teams VALUES (632, 'Colombia');
INSERT INTO public.teams VALUES (633, 'Costa Rica');
INSERT INTO public.teams VALUES (634, 'Switzerland');
INSERT INTO public.teams VALUES (635, 'Japan');
INSERT INTO public.teams VALUES (636, 'Mexico');
INSERT INTO public.teams VALUES (637, 'Denmark');
INSERT INTO public.teams VALUES (638, 'Spain');
INSERT INTO public.teams VALUES (639, 'Portugal');
INSERT INTO public.teams VALUES (640, 'Chile');
INSERT INTO public.teams VALUES (641, 'Nigeria');
INSERT INTO public.teams VALUES (642, 'Algeria');
INSERT INTO public.teams VALUES (643, 'Greece');
INSERT INTO public.teams VALUES (644, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 644, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
