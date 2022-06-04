--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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
-- Name: planets; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    designation character(1),
    mass integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planets OWNER TO scott;

--
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_id_seq OWNER TO scott;

--
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- Name: stars; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.stars (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance numeric NOT NULL,
    spectral_type character(1) NOT NULL,
    companions integer NOT NULL,
    CONSTRAINT stars_companions_check CHECK ((companions >= 0)),
    CONSTRAINT stars_distance_check CHECK ((distance > (0)::numeric)),
    CONSTRAINT stars_spectral_type_check CHECK ((spectral_type = ANY (ARRAY['O'::bpchar, 'B'::bpchar, 'A'::bpchar, 'F'::bpchar, 'G'::bpchar, 'K'::bpchar, 'M'::bpchar])))
);


ALTER TABLE public.stars OWNER TO scott;

--
-- Name: stars_id_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_id_seq OWNER TO scott;

--
-- Name: stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.stars_id_seq OWNED BY public.stars.id;


--
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- Name: stars id; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.stars ALTER COLUMN id SET DEFAULT nextval('public.stars_id_seq'::regclass);


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.planets (id, designation, mass, star_id) FROM stdin;
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.stars (id, name, distance, spectral_type, companions) FROM stdin;
1	Alpha Centauri B	4	K	3
\.


--
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.planets_id_seq', 1, false);


--
-- Name: stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.stars_id_seq', 1, true);


--
-- Name: planets planets_designation_key; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_designation_key UNIQUE (designation);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- Name: stars stars_name_key; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_name_key UNIQUE (name);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (id);


--
-- Name: planets planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.stars(id);


--
-- PostgreSQL database dump complete
--

