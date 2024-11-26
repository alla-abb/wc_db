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
    round character varying(20) NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (83, 2018, 'Final', 283, 284, 4, 2);
INSERT INTO public.games VALUES (84, 2018, 'Third Place', 285, 286, 2, 0);
INSERT INTO public.games VALUES (85, 2018, 'Semi-Final', 284, 286, 2, 1);
INSERT INTO public.games VALUES (86, 2018, 'Semi-Final', 283, 285, 1, 0);
INSERT INTO public.games VALUES (87, 2018, 'Quarter-Final', 284, 287, 3, 2);
INSERT INTO public.games VALUES (88, 2018, 'Quarter-Final', 286, 288, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Quarter-Final', 285, 289, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Quarter-Final', 283, 290, 2, 0);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 286, 291, 2, 1);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 288, 292, 1, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 285, 293, 3, 2);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 289, 294, 2, 0);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 284, 295, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 287, 296, 2, 1);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 290, 297, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 283, 298, 4, 3);
INSERT INTO public.games VALUES (99, 2014, 'Final', 299, 298, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Third Place', 300, 289, 3, 0);
INSERT INTO public.games VALUES (101, 2014, 'Semi-Final', 298, 300, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Semi-Final', 299, 289, 7, 1);
INSERT INTO public.games VALUES (103, 2014, 'Quarter-Final', 300, 301, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Quarter-Final', 298, 285, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Quarter-Final', 289, 291, 2, 1);
INSERT INTO public.games VALUES (106, 2014, 'Quarter-Final', 299, 283, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 289, 302, 2, 1);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 291, 290, 2, 0);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 283, 303, 2, 0);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 299, 304, 2, 1);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 300, 294, 2, 1);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 301, 305, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 298, 292, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 285, 306, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (283, 'France');
INSERT INTO public.teams VALUES (284, 'Croatia');
INSERT INTO public.teams VALUES (285, 'Belgium');
INSERT INTO public.teams VALUES (286, 'England');
INSERT INTO public.teams VALUES (287, 'Russia');
INSERT INTO public.teams VALUES (288, 'Sweden');
INSERT INTO public.teams VALUES (289, 'Brazil');
INSERT INTO public.teams VALUES (290, 'Uruguay');
INSERT INTO public.teams VALUES (291, 'Colombia');
INSERT INTO public.teams VALUES (292, 'Switzerland');
INSERT INTO public.teams VALUES (293, 'Japan');
INSERT INTO public.teams VALUES (294, 'Mexico');
INSERT INTO public.teams VALUES (295, 'Denmark');
INSERT INTO public.teams VALUES (296, 'Spain');
INSERT INTO public.teams VALUES (297, 'Portugal');
INSERT INTO public.teams VALUES (298, 'Argentina');
INSERT INTO public.teams VALUES (299, 'Germany');
INSERT INTO public.teams VALUES (300, 'Netherlands');
INSERT INTO public.teams VALUES (301, 'Costa Rica');
INSERT INTO public.teams VALUES (302, 'Chile');
INSERT INTO public.teams VALUES (303, 'Nigeria');
INSERT INTO public.teams VALUES (304, 'Algeria');
INSERT INTO public.teams VALUES (305, 'Greece');
INSERT INTO public.teams VALUES (306, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 114, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 306, true);


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

