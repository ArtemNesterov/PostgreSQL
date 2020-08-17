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
-- Name: cart; Type: TABLE; Schema: public; Owner: artem
--

CREATE TABLE public.cart (
    customer_id integer,
    id integer NOT NULL
);


ALTER TABLE public.cart OWNER TO artem;

--
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: artem
--

CREATE SEQUENCE public.cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_id_seq OWNER TO artem;

--
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: artem
--

ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;


--
-- Name: cart_product; Type: TABLE; Schema: public; Owner: artem
--

CREATE TABLE public.cart_product (
    cart_id integer,
    product_id integer
);


ALTER TABLE public.cart_product OWNER TO artem;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: artem
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    name character varying(255),
    phone character varying(40),
    email character varying(300)
);


ALTER TABLE public.customer OWNER TO artem;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: artem
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO artem;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: artem
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: artem
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(255),
    description text,
    price integer
);


ALTER TABLE public.product OWNER TO artem;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: artem
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO artem;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: artem
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_photo; Type: TABLE; Schema: public; Owner: artem
--

CREATE TABLE public.product_photo (
    id integer NOT NULL,
    url character varying(255),
    product_id integer
);


ALTER TABLE public.product_photo OWNER TO artem;

--
-- Name: product_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: artem
--

CREATE SEQUENCE public.product_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_photo_id_seq OWNER TO artem;

--
-- Name: product_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: artem
--

ALTER SEQUENCE public.product_photo_id_seq OWNED BY public.product_photo.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.product_photo ALTER COLUMN id SET DEFAULT nextval('public.product_photo_id_seq'::regclass);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: artem
--

COPY public.cart (customer_id, id) FROM stdin;
1	1
\.


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artem
--

SELECT pg_catalog.setval('public.cart_id_seq', 1, true);


--
-- Data for Name: cart_product; Type: TABLE DATA; Schema: public; Owner: artem
--

COPY public.cart_product (cart_id, product_id) FROM stdin;
1	1
1	2
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: artem
--

COPY public.customer (id, name, phone, email) FROM stdin;
1	Василий Аркадивич	098763423	vas@gmail.com
2	Роман Дмитриевич	0935679423	dms@gmail.com
\.


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artem
--

SELECT pg_catalog.setval('public.customer_id_seq', 2, true);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: artem
--

COPY public.product (id, name, description, price) FROM stdin;
1	iPhone	Стильный телефон	10000
2	Apple watch	Крутые часы	3000
3	Samsung	Достойный телефон	75000
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artem
--

SELECT pg_catalog.setval('public.product_id_seq', 3, true);


--
-- Data for Name: product_photo; Type: TABLE DATA; Schema: public; Owner: artem
--

COPY public.product_photo (id, url, product_id) FROM stdin;
1	iphone_photo	1
\.


--
-- Name: product_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artem
--

SELECT pg_catalog.setval('public.product_photo_id_seq', 1, true);


--
-- Name: cart_pkey; Type: CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: product_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.product_photo
    ADD CONSTRAINT product_photo_pkey PRIMARY KEY (id);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: cart_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: cart_product_cart_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_cart_id_fkey FOREIGN KEY (cart_id) REFERENCES public.cart(id);


--
-- Name: cart_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: product_photo_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: artem
--

ALTER TABLE ONLY public.product_photo
    ADD CONSTRAINT product_photo_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


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

