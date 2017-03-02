--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.5
-- Started on 2017-03-02 14:29:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE "ELOCATION";
--
-- TOC entry 2118 (class 1262 OID 27221)
-- Name: ELOCATION; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ELOCATION" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';


ALTER DATABASE "ELOCATION" OWNER TO postgres;

\connect "ELOCATION"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2119 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 190 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2121 (class 0 OID 0)
-- Dependencies: 190
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 27224)
-- Name: article; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE article (
    article_id integer NOT NULL,
    souscat_id integer NOT NULL,
    designation character varying(50),
    description text,
    prix_heure numeric(6,1),
    nbvote integer,
    nbcoms integer,
    nbprslouer integer,
    etat smallint,
    image character varying(50)
);


ALTER TABLE article OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 27222)
-- Name: article_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE article_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE article_article_id_seq OWNER TO postgres;

--
-- TOC entry 2122 (class 0 OID 0)
-- Dependencies: 172
-- Name: article_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE article_article_id_seq OWNED BY article.article_id;


--
-- TOC entry 175 (class 1259 OID 27237)
-- Name: categorie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categorie (
    cat_id integer NOT NULL,
    designation character varying(30)
);


ALTER TABLE categorie OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 27235)
-- Name: categorie_cat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categorie_cat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categorie_cat_id_seq OWNER TO postgres;

--
-- TOC entry 2123 (class 0 OID 0)
-- Dependencies: 174
-- Name: categorie_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categorie_cat_id_seq OWNED BY categorie.cat_id;


--
-- TOC entry 177 (class 1259 OID 27246)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client (
    user_id integer NOT NULL,
    nom character varying(20),
    prenom character varying(20),
    email character varying(20),
    tel character varying(15),
    motdepasse character varying(20),
    adresse character varying(50),
    statut smallint
);


ALTER TABLE client OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 27244)
-- Name: client_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE client_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE client_user_id_seq OWNER TO postgres;

--
-- TOC entry 2124 (class 0 OID 0)
-- Dependencies: 176
-- Name: client_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE client_user_id_seq OWNED BY client.user_id;


--
-- TOC entry 179 (class 1259 OID 27255)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE commande (
    cmd_id integer NOT NULL,
    user_id integer NOT NULL,
    date_cmd date,
    datetime_debut date,
    datetime_fin date,
    etat smallint
);


ALTER TABLE commande OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 27253)
-- Name: commande_cmd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE commande_cmd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commande_cmd_id_seq OWNER TO postgres;

--
-- TOC entry 2125 (class 0 OID 0)
-- Dependencies: 178
-- Name: commande_cmd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE commande_cmd_id_seq OWNED BY commande.cmd_id;


--
-- TOC entry 181 (class 1259 OID 27265)
-- Name: commentaire; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE commentaire (
    coms_id integer NOT NULL,
    user_id integer NOT NULL,
    article_id integer NOT NULL,
    contenue text
);


ALTER TABLE commentaire OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 27263)
-- Name: commentaire_coms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE commentaire_coms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commentaire_coms_id_seq OWNER TO postgres;

--
-- TOC entry 2126 (class 0 OID 0)
-- Dependencies: 180
-- Name: commentaire_coms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE commentaire_coms_id_seq OWNED BY commentaire.coms_id;


--
-- TOC entry 183 (class 1259 OID 27279)
-- Name: detailcommnde; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE detailcommnde (
    detailcmd_id integer NOT NULL,
    article_id integer NOT NULL,
    cmd_id integer NOT NULL,
    quantite_pdt integer
);


ALTER TABLE detailcommnde OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 27277)
-- Name: detailcommnde_detailcmd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE detailcommnde_detailcmd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE detailcommnde_detailcmd_id_seq OWNER TO postgres;

--
-- TOC entry 2127 (class 0 OID 0)
-- Dependencies: 182
-- Name: detailcommnde_detailcmd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE detailcommnde_detailcmd_id_seq OWNED BY detailcommnde.detailcmd_id;


--
-- TOC entry 185 (class 1259 OID 27290)
-- Name: souscategorie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE souscategorie (
    souscat_id integer NOT NULL,
    cat_id integer NOT NULL,
    designation character varying(30)
);


ALTER TABLE souscategorie OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 27288)
-- Name: souscategorie_souscat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE souscategorie_souscat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE souscategorie_souscat_id_seq OWNER TO postgres;

--
-- TOC entry 2128 (class 0 OID 0)
-- Dependencies: 184
-- Name: souscategorie_souscat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE souscategorie_souscat_id_seq OWNED BY souscategorie.souscat_id;


--
-- TOC entry 187 (class 1259 OID 27300)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE stock (
    stock_id integer NOT NULL,
    article_id integer NOT NULL,
    quantite integer
);


ALTER TABLE stock OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 27298)
-- Name: stock_stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE stock_stock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stock_stock_id_seq OWNER TO postgres;

--
-- TOC entry 2129 (class 0 OID 0)
-- Dependencies: 186
-- Name: stock_stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE stock_stock_id_seq OWNED BY stock.stock_id;


--
-- TOC entry 189 (class 1259 OID 27310)
-- Name: voteclient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE voteclient (
    vote_id integer NOT NULL,
    article_id integer NOT NULL,
    user_id integer NOT NULL,
    reactvalue integer
);


ALTER TABLE voteclient OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 27308)
-- Name: voteclient_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE voteclient_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE voteclient_vote_id_seq OWNER TO postgres;

--
-- TOC entry 2130 (class 0 OID 0)
-- Dependencies: 188
-- Name: voteclient_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE voteclient_vote_id_seq OWNED BY voteclient.vote_id;


--
-- TOC entry 1931 (class 2604 OID 27227)
-- Name: article_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY article ALTER COLUMN article_id SET DEFAULT nextval('article_article_id_seq'::regclass);


--
-- TOC entry 1932 (class 2604 OID 27240)
-- Name: cat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categorie ALTER COLUMN cat_id SET DEFAULT nextval('categorie_cat_id_seq'::regclass);


--
-- TOC entry 1933 (class 2604 OID 27249)
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client ALTER COLUMN user_id SET DEFAULT nextval('client_user_id_seq'::regclass);


--
-- TOC entry 1934 (class 2604 OID 27258)
-- Name: cmd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commande ALTER COLUMN cmd_id SET DEFAULT nextval('commande_cmd_id_seq'::regclass);


--
-- TOC entry 1935 (class 2604 OID 27268)
-- Name: coms_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commentaire ALTER COLUMN coms_id SET DEFAULT nextval('commentaire_coms_id_seq'::regclass);


--
-- TOC entry 1936 (class 2604 OID 27282)
-- Name: detailcmd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detailcommnde ALTER COLUMN detailcmd_id SET DEFAULT nextval('detailcommnde_detailcmd_id_seq'::regclass);


--
-- TOC entry 1937 (class 2604 OID 27293)
-- Name: souscat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY souscategorie ALTER COLUMN souscat_id SET DEFAULT nextval('souscategorie_souscat_id_seq'::regclass);


--
-- TOC entry 1938 (class 2604 OID 27303)
-- Name: stock_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stock ALTER COLUMN stock_id SET DEFAULT nextval('stock_stock_id_seq'::regclass);


--
-- TOC entry 1939 (class 2604 OID 27313)
-- Name: vote_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY voteclient ALTER COLUMN vote_id SET DEFAULT nextval('voteclient_vote_id_seq'::regclass);


--
-- TOC entry 2097 (class 0 OID 27224)
-- Dependencies: 173
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (6, 2, 'Chaise de bureau CITY', '', 37.0, 0, 0, 0, 0, 'chaise-de-bureau-city.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (7, 2, 'Chaise CARRIE', '', 15.0, 0, 0, 0, 0, 'chaise-carrie.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (8, 2, 'Chaise ARRIANE', '', 38.0, 0, 0, 0, 0, 'chaise-arriane.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (9, 2, 'Chaise IGLOO', '', 42.0, 0, 0, 0, 0, 'chaise-igloo.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (10, 2, 'Chaise MIA', '', 5.0, 0, 0, 0, 0, 'chaise-mia.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (11, 3, 'Fauteuil ARDA', '', 27.0, 0, 0, 0, 0, 'fauteuil-arda.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (12, 3, 'Fauteuil PALO ALTO', '', 74.0, 0, 0, 0, 0, 'fauteuil-pallo-alto.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (13, 3, 'Fauteuil GUSTAVE', '', 96.0, 0, 0, 0, 0, 'fauteuil-gustave.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (14, 3, 'Fauteuil SHELL', '', 240.0, 0, 0, 0, 0, 'fauteuil-shell.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (15, 3, 'Fauteuil TROCARDERO', '', 720.0, 0, 0, 0, 0, 'fauteuil-trocardero.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (16, 4, 'lit dream 140 x 190 cm', '', 129.0, 0, 0, 0, 0, 'lit-dream-140-x-190-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (17, 4, 'lit bultex - 160 x 200 cm', '', 620.0, 0, 0, 0, 0, 'lit-bultex-160-x-200-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (18, 4, 'Lit superposé JULES - 90 x 200 cm', '', 177.0, 0, 0, 0, 0, 'lit-superpose-jules-90-x-200-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (19, 4, 'Lit SIMMONS - 140 x 190 cm', '', 647.0, 0, 0, 0, 0, 'lit-simmons-140-x-190-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (20, 4, 'Lit CONFORT - 140 x 190 cm', '', 84.0, 0, 0, 0, 0, 'lit-confort-140-x-190-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (21, 5, 'Canapé Fixe BIZO', '', 109.0, 0, 0, 0, 0, 'canape-fixe-bizo.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (22, 5, 'Convertible COPENHAGEN', '', 125.0, 0, 0, 0, 0, 'convertile-copenhagen.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (23, 5, 'Canapé Fixe CLUB', '', 137.0, 0, 0, 0, 0, 'canape-fixe-club.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (24, 5, 'Canapé DETROIT Noir', '', 141.0, 0, 0, 0, 0, 'canape-detroit-noir.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (25, 5, 'Canapé Fixe LOUIS', '', 211.0, 0, 0, 0, 0, 'canape-fixe-louis.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (26, 6, 'Commode PRESTA', '', 25.0, 0, 0, 0, 0, 'comode-presta.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (27, 6, 'Commode BLISS', '', 54.0, 0, 0, 0, 0, 'commode-bliss.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (28, 6, 'Commode SIXT', '', 109.0, 0, 0, 0, 0, 'commode-sixt.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (29, 6, 'Coiffeuse ODELO', '', 151.0, 0, 0, 0, 0, 'coiffeuse-odelo.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (30, 6, 'Commode ODEON - L', '', 408.0, 0, 0, 0, 0, 'commode-odeon-L.jpg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (31, 7, 'Réfrigérateur HAIER - 550 L', ' ', 339.0, 0, 0, 0, 0, 'refrigerateur-haier-550-L.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (32, 7, 'Réfrigérateur SAMSUNG - 452 L', '', 414.0, 0, 0, 0, 0, 'refrigerateur-samsung-452-L.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (33, 7, 'Réfrigérateur HOTPOINT - 537 L', '', 360.0, 0, 0, 0, 0, 'refrigerateur-hotpoint-537-L.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (34, 7, 'Réfrigérateur FAR - 93 L', '', 66.0, 0, 0, 0, 0, 'refrigerateur-far-93-L.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (35, 7, 'Réfrigérateur CANDY - 97 L', '', 78.0, 0, 0, 0, 0, 'refrigerateur-candy-97-L.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (36, 8, 'Lave linge BOSCH - 8 kg', ' ', 186.0, 0, 0, 0, 0, 'lave-linge-bosh_8-kg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (37, 8, 'Lave linge ELECTROLUX - 10 kg', '', 202.0, 0, 0, 0, 0, 'lave-linge-electrolux-10-kg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (38, 8, 'Lave linge HOTPOINT - 9 kg', '', 190.0, 0, 0, 0, 0, 'lave-linge-hotpoint-9-kg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (39, 8, 'Lave linge INDESIT - 6kg - Séchant', '', 156.0, 0, 0, 0, 0, 'lave-linge-indesit-6kg-sechant.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (40, 8, 'Lave linge HAIER - 6 kg', '', 108.0, 0, 0, 0, 0, 'lave-linge-haier-6-kg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (41, 9, 'Lave vaisselle HAIER', ' ', 137.0, 0, 0, 0, 0, 'lave-vaisselle-haier.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (42, 9, 'Lave vaisselle BEKO', '', 137.0, 0, 0, 0, 0, 'lave-vaisselle-beko.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (43, 9, 'Lave vaisselle INDESIT', '', 125.0, 0, 0, 0, 0, 'lave-vaisselle-indesit.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (44, 9, 'Lave vaisselle HOTPOINT', '', 101.0, 0, 0, 0, 0, 'lave-vaisselle-hotpoint.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (45, 9, 'Lave vaisselle INDESIT Inox', '', 117.0, 0, 0, 0, 0, 'lave-vaisselle-indesit-inox.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (46, 10, 'Four - Micro ondes - FAR', ' ', 15.0, 0, 0, 0, 0, 'four-micro-ondes-far.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (47, 10, 'Four - Micro ondes - HAIER', '', 41.0, 0, 0, 0, 0, 'four-micro-ondes-haier.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (48, 10, 'Four - Micro ondes - WHIRPOOL', '', 60.0, 0, 0, 0, 0, 'four-micro-ondes-whirpool.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (49, 10, 'Four - Micro ondes - LG', '', 70.0, 0, 0, 0, 0, 'four-micro-ondes-lg.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (50, 10, 'Four - Micro ondes - SAMSUNG', '', 90.0, 0, 0, 0, 0, 'four-micro-ondes-samsung.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (51, 11, 'Cuisinière - BEKO', ' ', 176.0, 0, 0, 0, 0, 'cuisiniere-beko.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (52, 11, 'Cuisinière - HOTPOINT', '', 210.0, 0, 0, 0, 0, 'cuisiniere-hotpoint.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (53, 11, 'Cuisinière - INDESIT', '', 2016.0, 0, 0, 0, 0, 'cuisiniere-inesit.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (54, 12, 'Fer à repasser - CALOR', ' ', 16.0, 0, 0, 0, 0, 'fer-a-repasser-color.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (55, 12, 'Central vapeur - CALOR', '', 101.0, 0, 0, 0, 0, 'central-vapeur-calor.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (56, 13, 'Gym ball DOMYOS', ' ', 10.0, 0, 0, 0, 0, 'gym-ball-domyos.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (57, 13, 'Tapis de sport DOMYOS', '', 9.0, 0, 0, 0, 0, 'tapis-de-sport-domyos.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (58, 13, 'Haltères DOMYOS', '', 17.0, 0, 0, 0, 0, 'haltere-domyos.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (59, 13, 'Banc de musculation DOMYOS', '', 48.0, 0, 0, 0, 0, 'banc-de-musculation-domyos.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (60, 14, 'Manette de jeux Dual Shock 4 - PS4', ' ', 24.0, 0, 0, 0, 0, 'manette-de-jeux-dual-shock-4--ps4.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (61, 14, 'PS4', '', 168.0, 0, 0, 0, 0, 'ps4.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (62, 14, 'PlayStation VR', '', 215.0, 0, 0, 0, 0, 'playstation-vr.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (63, 14, 'PS4 Pro Noire 1To 1 To', '', 222.0, 0, 0, 0, 0, 'ps4-pro-noire-1to-to.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (64, 15, 'Décodeur TNT', ' ', 20.0, 0, 0, 0, 0, 'decodeur-tnt.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (65, 15, 'Télévision LG - 60 cm', '', 66.0, 0, 0, 0, 0, 'television-lg-60-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (66, 15, 'Télévision SAMSUNG - 61 cm', '', 85.0, 0, 0, 0, 0, 'television-samsung-61-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (67, 15, 'Télévision HAIER - 81 cm', '', 95.0, 0, 0, 0, 0, 'television-haier-81-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (68, 15, 'Télévision LG - 80 cm', '', 95.0, 0, 0, 0, 0, 'television-lg-80-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (69, 15, 'Télévision SONY - 122 cm', '', 314.0, 0, 0, 0, 0, 'television-sony-122-cm.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (70, 16, 'Vidéoprojecteur ACER - HD 1080p', ' ', 350.0, 0, 0, 0, 0, 'videoprojecteur-acer-hd-1080p.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (71, 16, 'Vidéoprojecteur BENQ - HD 1080p', '', 364.0, 0, 0, 0, 0, 'videoprojecteur-benq-hd-1080p.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (72, 16, 'Vidéoprojecteur EPSON - HD 1080p', '', 661.0, 0, 0, 0, 0, 'videoprojecteur-epson-hd-1080p.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (73, 17, 'POLAROID + 50 photos inclues', ' ', 77.0, 0, 0, 0, 0, 'polaroid-50-photos-inclues.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (74, 17, 'Appareil Photo SONY', '', 114.0, 0, 0, 0, 0, 'appareil-photos-sony.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (75, 17, 'POLAROID + 100 photos inclues', '', 114.0, 0, 0, 0, 0, 'polaroid-100-photos-onclues.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (76, 17, 'POLAROID + 200 photos inclues', '', 214.0, 0, 0, 0, 0, 'polaroid-200-photos-onclues.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (77, 17, 'Appareil Photo CANON', '', 273.0, 0, 0, 0, 0, 'appareil-photos-canon.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (78, 18, 'Imprimante HP Jet d''encre', ' ', 61.0, 0, 0, 0, 0, 'imprimante-hp-jet-d-encre.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (79, 18, 'Imprimante SAMSUNG Laser', '', 113.0, 0, 0, 0, 0, 'imprimante-samsung-laser.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (80, 19, 'GoPro HERO4 Silver', ' ', 221.0, 0, 0, 0, 0, 'gopro-hero4-silver.jpg');
INSERT INTO article (article_id, souscat_id, designation, description, prix_heure, nbvote, nbcoms, nbprslouer, etat, image) VALUES (81, 19, 'GoPro HERO4 Black', '', 241.0, 0, 0, 0, 0, 'gopro-hero4-black.jpg');


--
-- TOC entry 2131 (class 0 OID 0)
-- Dependencies: 172
-- Name: article_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('article_article_id_seq', 1, false);


--
-- TOC entry 2099 (class 0 OID 27237)
-- Dependencies: 175
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categorie (cat_id, designation) VALUES (1, 'Meuble');
INSERT INTO categorie (cat_id, designation) VALUES (2, 'Electroménager');
INSERT INTO categorie (cat_id, designation) VALUES (3, 'Multimédia');
INSERT INTO categorie (cat_id, designation) VALUES (4, 'Equipement');


--
-- TOC entry 2132 (class 0 OID 0)
-- Dependencies: 174
-- Name: categorie_cat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorie_cat_id_seq', 1, false);


--
-- TOC entry 2101 (class 0 OID 27246)
-- Dependencies: 177
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (1, 'Randrianasolo', 'Samuel', 'sam@gmail.com', '0345012345', 'sam', 'Mount 387 west', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (2, 'rasolondraibe', 'Frideriche', 'fridy@yahoo.com', '0324012358', 'fridy', 'Bira 107 rue BB', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (3, 'Fenitriniaina', 'Rack', 'rack@outlook.com', '0331012520', 'rack', 'FII lot: 555/AAA', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (4, 'Alisoa', 'Arinoro', 'arinoro@gmail.Com', '0342484210', 'arinoro', 'Tanambao Lot:385', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (5, 'Anjaniaina', 'Elwina', 'anja@gmail.Com', '0348798720', 'anja', 'IB 266 Andoharanofotsy', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (6, 'Tahiriniaina', 'Manjatina', 'manjatina@gmail.Com', '0348798720', 'manjatina', 'IB 266 Andoharanofotsy', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (7, 'Rindrarisoa', 'Francline', 'francline@gmail.Com', '0348798728', 'francline', 'IB 266 Andoharanofotsy', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (8, 'Fifaliana', 'Rebecca', 'rebecca@gmail.com', '0348798724', 'rebecca', 'IB 266 Andoharanofotsy', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (9, 'Rafalimanana', 'Winnah', 'winnah@gmail.com', '0348798723', 'winnah', 'IB 266 Andoharanofotsy', 0);
INSERT INTO client (user_id, nom, prenom, email, tel, motdepasse, adresse, statut) VALUES (10, 'Heriniaian', 'Tinah', 'tinah@gmail.com', '0348798729', 'tinah', 'IB 266 Andoharanofotsy', 0);


--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 176
-- Name: client_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_user_id_seq', 1, false);


--
-- TOC entry 2103 (class 0 OID 27255)
-- Dependencies: 179
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 178
-- Name: commande_cmd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('commande_cmd_id_seq', 1, false);


--
-- TOC entry 2105 (class 0 OID 27265)
-- Dependencies: 181
-- Data for Name: commentaire; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 180
-- Name: commentaire_coms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('commentaire_coms_id_seq', 1, false);


--
-- TOC entry 2107 (class 0 OID 27279)
-- Dependencies: 183
-- Data for Name: detailcommnde; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 182
-- Name: detailcommnde_detailcmd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('detailcommnde_detailcmd_id_seq', 1, false);


--
-- TOC entry 2109 (class 0 OID 27290)
-- Dependencies: 185
-- Data for Name: souscategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (1, 1, 'Table');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (2, 1, 'Chaise');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (3, 1, 'Fauteuil');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (4, 1, 'Lit');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (5, 1, 'Canapé');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (6, 1, 'Commode');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (7, 2, 'Frigo');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (8, 2, 'Machine à laver');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (9, 2, 'Four-micro-onde');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (10, 2, 'Cuisiière');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (11, 2, 'Lave vaisselle');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (12, 2, 'Fer à repasser');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (13, 3, 'Frigo');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (14, 3, 'Machine à laver');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (15, 3, 'Four-micro-onde');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (16, 3, 'Cuisiière');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (17, 3, 'Lave vaisselle');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (18, 3, 'Fer à repasser');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (19, 4, 'Console de Jeux');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (20, 4, 'Location TV');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (21, 4, 'Vidéo Projecteur');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (22, 4, 'Appareil Photo');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (23, 4, 'Imprimente');
INSERT INTO souscategorie (souscat_id, cat_id, designation) VALUES (24, 4, 'Gopro');


--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 184
-- Name: souscategorie_souscat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('souscategorie_souscat_id_seq', 1, false);


--
-- TOC entry 2111 (class 0 OID 27300)
-- Dependencies: 187
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 186
-- Name: stock_stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stock_stock_id_seq', 1, false);


--
-- TOC entry 2113 (class 0 OID 27310)
-- Dependencies: 189
-- Data for Name: voteclient; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2139 (class 0 OID 0)
-- Dependencies: 188
-- Name: voteclient_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('voteclient_vote_id_seq', 1, false);


--
-- TOC entry 1943 (class 2606 OID 27232)
-- Name: pk_article; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY article
    ADD CONSTRAINT pk_article PRIMARY KEY (article_id);


--
-- TOC entry 1946 (class 2606 OID 27242)
-- Name: pk_categorie; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categorie
    ADD CONSTRAINT pk_categorie PRIMARY KEY (cat_id);


--
-- TOC entry 1949 (class 2606 OID 27251)
-- Name: pk_client; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client
    ADD CONSTRAINT pk_client PRIMARY KEY (user_id);


--
-- TOC entry 1953 (class 2606 OID 27260)
-- Name: pk_commande; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY commande
    ADD CONSTRAINT pk_commande PRIMARY KEY (cmd_id);


--
-- TOC entry 1958 (class 2606 OID 27273)
-- Name: pk_commentaire; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY commentaire
    ADD CONSTRAINT pk_commentaire PRIMARY KEY (coms_id);


--
-- TOC entry 1963 (class 2606 OID 27284)
-- Name: pk_detailcommnde; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detailcommnde
    ADD CONSTRAINT pk_detailcommnde PRIMARY KEY (detailcmd_id);


--
-- TOC entry 1966 (class 2606 OID 27295)
-- Name: pk_souscategorie; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY souscategorie
    ADD CONSTRAINT pk_souscategorie PRIMARY KEY (souscat_id);


--
-- TOC entry 1970 (class 2606 OID 27305)
-- Name: pk_stock; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY stock
    ADD CONSTRAINT pk_stock PRIMARY KEY (stock_id);


--
-- TOC entry 1975 (class 2606 OID 27315)
-- Name: pk_voteclient; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY voteclient
    ADD CONSTRAINT pk_voteclient PRIMARY KEY (vote_id);


--
-- TOC entry 1940 (class 1259 OID 27233)
-- Name: article_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX article_pk ON article USING btree (article_id);


--
-- TOC entry 1941 (class 1259 OID 27234)
-- Name: association_10_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_10_fk ON article USING btree (souscat_id);


--
-- TOC entry 1968 (class 1259 OID 27307)
-- Name: association_11_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_11_fk ON stock USING btree (article_id);


--
-- TOC entry 1954 (class 1259 OID 27276)
-- Name: association_12_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_12_fk ON commentaire USING btree (user_id);


--
-- TOC entry 1972 (class 1259 OID 27318)
-- Name: association_13_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_13_fk ON voteclient USING btree (article_id);


--
-- TOC entry 1973 (class 1259 OID 27317)
-- Name: association_14_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_14_fk ON voteclient USING btree (user_id);


--
-- TOC entry 1959 (class 1259 OID 27286)
-- Name: association_15_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_15_fk ON detailcommnde USING btree (article_id);


--
-- TOC entry 1960 (class 1259 OID 27287)
-- Name: association_16_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_16_fk ON detailcommnde USING btree (cmd_id);


--
-- TOC entry 1950 (class 1259 OID 27262)
-- Name: association_5_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_5_fk ON commande USING btree (user_id);


--
-- TOC entry 1955 (class 1259 OID 27275)
-- Name: association_8_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_8_fk ON commentaire USING btree (article_id);


--
-- TOC entry 1964 (class 1259 OID 27297)
-- Name: association_9_fk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX association_9_fk ON souscategorie USING btree (cat_id);


--
-- TOC entry 1944 (class 1259 OID 27243)
-- Name: categorie_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX categorie_pk ON categorie USING btree (cat_id);


--
-- TOC entry 1947 (class 1259 OID 27252)
-- Name: client_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX client_pk ON client USING btree (user_id);


--
-- TOC entry 1951 (class 1259 OID 27261)
-- Name: commande_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX commande_pk ON commande USING btree (cmd_id);


--
-- TOC entry 1956 (class 1259 OID 27274)
-- Name: commentaire_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX commentaire_pk ON commentaire USING btree (coms_id);


--
-- TOC entry 1961 (class 1259 OID 27285)
-- Name: detailcommnde_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX detailcommnde_pk ON detailcommnde USING btree (detailcmd_id);


--
-- TOC entry 1967 (class 1259 OID 27296)
-- Name: souscategorie_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX souscategorie_pk ON souscategorie USING btree (souscat_id);


--
-- TOC entry 1971 (class 1259 OID 27306)
-- Name: stock_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX stock_pk ON stock USING btree (stock_id);


--
-- TOC entry 1976 (class 1259 OID 27316)
-- Name: voteclient_pk; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX voteclient_pk ON voteclient USING btree (vote_id);


--
-- TOC entry 1977 (class 2606 OID 27319)
-- Name: fk_article_associati_souscate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY article
    ADD CONSTRAINT fk_article_associati_souscate FOREIGN KEY (souscat_id) REFERENCES souscategorie(souscat_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1978 (class 2606 OID 27324)
-- Name: fk_commande_associati_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commande
    ADD CONSTRAINT fk_commande_associati_client FOREIGN KEY (user_id) REFERENCES client(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1980 (class 2606 OID 27334)
-- Name: fk_commenta_associati_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commentaire
    ADD CONSTRAINT fk_commenta_associati_article FOREIGN KEY (article_id) REFERENCES article(article_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1979 (class 2606 OID 27329)
-- Name: fk_commenta_associati_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY commentaire
    ADD CONSTRAINT fk_commenta_associati_client FOREIGN KEY (user_id) REFERENCES client(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1981 (class 2606 OID 27339)
-- Name: fk_detailco_associati_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detailcommnde
    ADD CONSTRAINT fk_detailco_associati_article FOREIGN KEY (article_id) REFERENCES article(article_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1982 (class 2606 OID 27344)
-- Name: fk_detailco_associati_commande; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detailcommnde
    ADD CONSTRAINT fk_detailco_associati_commande FOREIGN KEY (cmd_id) REFERENCES commande(cmd_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1983 (class 2606 OID 27349)
-- Name: fk_souscate_associati_categori; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY souscategorie
    ADD CONSTRAINT fk_souscate_associati_categori FOREIGN KEY (cat_id) REFERENCES categorie(cat_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1984 (class 2606 OID 27354)
-- Name: fk_stock_associati_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stock
    ADD CONSTRAINT fk_stock_associati_article FOREIGN KEY (article_id) REFERENCES article(article_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1985 (class 2606 OID 27359)
-- Name: fk_voteclie_associati_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY voteclient
    ADD CONSTRAINT fk_voteclie_associati_article FOREIGN KEY (article_id) REFERENCES article(article_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1986 (class 2606 OID 27364)
-- Name: fk_voteclie_associati_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY voteclient
    ADD CONSTRAINT fk_voteclie_associati_client FOREIGN KEY (user_id) REFERENCES client(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2120 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-02 14:29:43

--
-- PostgreSQL database dump complete
--

