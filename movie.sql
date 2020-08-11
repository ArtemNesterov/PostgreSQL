--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.21
-- Dumped by pg_dump version 9.5.21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cinema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cinema (
    id name,
    actor text NOT NULL,
    director character varying(100) NOT NULL,
    film character varying(100) NOT NULL
);


ALTER TABLE public.cinema OWNER TO postgres;

--
-- Data for Name: cinema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cinema (id, actor, director, film) FROM stdin;
\N	Tom Cruise	Christopher McCowarry	Mission impossible
\N	Patrick Swaisy	Jerry Zucker	Ghost
\N	Sylvester Stallone	Peter MacDonald	Rambo
\N	Jean-Claude Van Damme	Roland Emmerich	Universal soldier
\.


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

