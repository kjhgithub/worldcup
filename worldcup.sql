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
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (260, 2018, 'Final', 1186, 1187, 2, 4);
INSERT INTO public.games VALUES (261, 2018, 'Third Place', 1188, 1189, 0, 2);
INSERT INTO public.games VALUES (262, 2018, 'Semi-Final', 1187, 1189, 1, 2);
INSERT INTO public.games VALUES (263, 2018, 'Semi-Final', 1186, 1188, 0, 1);
INSERT INTO public.games VALUES (264, 2018, 'Quarter-Final', 1187, 1190, 2, 3);
INSERT INTO public.games VALUES (265, 2018, 'Quarter-Final', 1189, 1191, 0, 2);
INSERT INTO public.games VALUES (266, 2018, 'Quarter-Final', 1188, 1192, 1, 2);
INSERT INTO public.games VALUES (267, 2018, 'Quarter-Final', 1186, 1193, 0, 2);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 1189, 1194, 1, 2);
INSERT INTO public.games VALUES (269, 2018, 'Eighth-Final', 1191, 1195, 0, 1);
INSERT INTO public.games VALUES (270, 2018, 'Eighth-Final', 1188, 1196, 2, 3);
INSERT INTO public.games VALUES (271, 2018, 'Eighth-Final', 1192, 1197, 0, 2);
INSERT INTO public.games VALUES (272, 2018, 'Eighth-Final', 1187, 1198, 1, 2);
INSERT INTO public.games VALUES (273, 2018, 'Eighth-Final', 1190, 1199, 1, 2);
INSERT INTO public.games VALUES (274, 2018, 'Eighth-Final', 1193, 1200, 1, 2);
INSERT INTO public.games VALUES (275, 2018, 'Eighth-Final', 1186, 1201, 3, 4);
INSERT INTO public.games VALUES (276, 2014, 'Final', 1202, 1201, 0, 1);
INSERT INTO public.games VALUES (277, 2014, 'Third Place', 1203, 1192, 0, 3);
INSERT INTO public.games VALUES (278, 2014, 'Semi-Final', 1201, 1203, 0, 1);
INSERT INTO public.games VALUES (279, 2014, 'Semi-Final', 1202, 1192, 1, 7);
INSERT INTO public.games VALUES (280, 2014, 'Quarter-Final', 1203, 1204, 0, 1);
INSERT INTO public.games VALUES (281, 2014, 'Quarter-Final', 1201, 1188, 0, 1);
INSERT INTO public.games VALUES (282, 2014, 'Quarter-Final', 1192, 1194, 1, 2);
INSERT INTO public.games VALUES (283, 2014, 'Quarter-Final', 1202, 1186, 0, 1);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 1192, 1205, 1, 2);
INSERT INTO public.games VALUES (285, 2014, 'Eighth-Final', 1194, 1193, 0, 2);
INSERT INTO public.games VALUES (286, 2014, 'Eighth-Final', 1186, 1206, 0, 2);
INSERT INTO public.games VALUES (287, 2014, 'Eighth-Final', 1202, 1207, 1, 2);
INSERT INTO public.games VALUES (288, 2014, 'Eighth-Final', 1203, 1197, 1, 2);
INSERT INTO public.games VALUES (289, 2014, 'Eighth-Final', 1204, 1208, 1, 2);
INSERT INTO public.games VALUES (290, 2014, 'Eighth-Final', 1201, 1195, 0, 1);
INSERT INTO public.games VALUES (291, 2014, 'Eighth-Final', 1188, 1209, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1186, 'France');
INSERT INTO public.teams VALUES (1187, 'Croatia');
INSERT INTO public.teams VALUES (1188, 'Belgium');
INSERT INTO public.teams VALUES (1189, 'England');
INSERT INTO public.teams VALUES (1190, 'Russia');
INSERT INTO public.teams VALUES (1191, 'Sweden');
INSERT INTO public.teams VALUES (1192, 'Brazil');
INSERT INTO public.teams VALUES (1193, 'Uruguay');
INSERT INTO public.teams VALUES (1194, 'Colombia');
INSERT INTO public.teams VALUES (1195, 'Switzerland');
INSERT INTO public.teams VALUES (1196, 'Japan');
INSERT INTO public.teams VALUES (1197, 'Mexico');
INSERT INTO public.teams VALUES (1198, 'Denmark');
INSERT INTO public.teams VALUES (1199, 'Spain');
INSERT INTO public.teams VALUES (1200, 'Portugal');
INSERT INTO public.teams VALUES (1201, 'Argentina');
INSERT INTO public.teams VALUES (1202, 'Germany');
INSERT INTO public.teams VALUES (1203, 'Netherlands');
INSERT INTO public.teams VALUES (1204, 'Costa Rica');
INSERT INTO public.teams VALUES (1205, 'Chile');
INSERT INTO public.teams VALUES (1206, 'Nigeria');
INSERT INTO public.teams VALUES (1207, 'Algeria');
INSERT INTO public.teams VALUES (1208, 'Greece');
INSERT INTO public.teams VALUES (1209, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 291, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1209, true);


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
-- Name: games fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey2 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

