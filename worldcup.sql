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
    round character varying(255) NOT NULL,
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
    name character varying(255)
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

INSERT INTO public.games VALUES (1, 2018, 'Final', 18, 1, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 3, 2, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 1, 2, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 18, 3, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 1, 4, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 5, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 3, 6, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 18, 7, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 5, 9, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 10, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 6, 11, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 1, 12, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 4, 13, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 7, 14, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 18, 15, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 24, 15, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 16, 6, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 15, 16, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 24, 6, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 16, 17, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 15, 3, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 6, 8, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 24, 18, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 6, 19, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 8, 7, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 18, 20, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 24, 21, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 16, 11, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 17, 22, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 15, 9, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 3, 23, 2, 1);
INSERT INTO public.games VALUES (33, 2018, 'Final', 18, 1, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 3, 2, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 1, 2, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 18, 3, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 1, 4, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 5, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 3, 6, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 18, 7, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 5, 9, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 10, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 6, 11, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 1, 12, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 4, 13, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 7, 14, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 18, 15, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 24, 15, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 16, 6, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 15, 16, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 24, 6, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 16, 17, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 15, 3, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 6, 8, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 24, 18, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 6, 19, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 8, 7, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 18, 20, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 24, 21, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 16, 11, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 17, 22, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 15, 9, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 3, 23, 2, 1);
INSERT INTO public.games VALUES (65, 2018, 'Final', 18, 1, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 3, 2, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 1, 2, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 18, 3, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 1, 4, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 2, 5, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 3, 6, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 18, 7, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 2, 8, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 5, 9, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 3, 10, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 6, 11, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 1, 12, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 4, 13, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 7, 14, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 18, 15, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 24, 15, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 16, 6, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 15, 16, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 24, 6, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 16, 17, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 15, 3, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 6, 8, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 24, 18, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 6, 19, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 8, 7, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 18, 20, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 24, 21, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 16, 11, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 17, 22, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 15, 9, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 3, 23, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'Croatia');
INSERT INTO public.teams VALUES (2, 'England');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'Russia');
INSERT INTO public.teams VALUES (5, 'Sweden');
INSERT INTO public.teams VALUES (6, 'Brazil');
INSERT INTO public.teams VALUES (7, 'Uruguay');
INSERT INTO public.teams VALUES (8, 'Colombia');
INSERT INTO public.teams VALUES (9, 'Switzerland');
INSERT INTO public.teams VALUES (10, 'Japan');
INSERT INTO public.teams VALUES (11, 'Mexico');
INSERT INTO public.teams VALUES (12, 'Denmark');
INSERT INTO public.teams VALUES (13, 'Spain');
INSERT INTO public.teams VALUES (14, 'Portugal');
INSERT INTO public.teams VALUES (15, 'Argentina');
INSERT INTO public.teams VALUES (16, 'Netherlands');
INSERT INTO public.teams VALUES (17, 'Costa Rica');
INSERT INTO public.teams VALUES (18, 'France');
INSERT INTO public.teams VALUES (19, 'Chile');
INSERT INTO public.teams VALUES (20, 'Nigeria');
INSERT INTO public.teams VALUES (21, 'Algeria');
INSERT INTO public.teams VALUES (22, 'Greece');
INSERT INTO public.teams VALUES (23, 'United States');
INSERT INTO public.teams VALUES (24, 'Germany');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

