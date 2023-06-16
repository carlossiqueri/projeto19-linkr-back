--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    content text NOT NULL,
    user_id integer,
    post_id integer
);


ALTER TABLE public.comments OWNER TO sqzpjlkf;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO sqzpjlkf;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: follows; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.follows (
    id integer NOT NULL,
    id_following integer,
    id_follower integer
);


ALTER TABLE public.follows OWNER TO sqzpjlkf;

--
-- Name: follows_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.follows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.follows_id_seq OWNER TO sqzpjlkf;

--
-- Name: follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.follows_id_seq OWNED BY public.follows.id;


--
-- Name: hashtags; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.hashtags (
    id integer NOT NULL,
    hashtag_name text NOT NULL
);


ALTER TABLE public.hashtags OWNER TO sqzpjlkf;

--
-- Name: hashtags_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.hashtags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hashtags_id_seq OWNER TO sqzpjlkf;

--
-- Name: hashtags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.hashtags_id_seq OWNED BY public.hashtags.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    post_id integer,
    user_id integer
);


ALTER TABLE public.likes OWNER TO sqzpjlkf;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO sqzpjlkf;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    url text NOT NULL,
    description text NOT NULL,
    likes integer DEFAULT 0,
    user_id integer,
    url_title text,
    url_description text,
    url_picture text
);


ALTER TABLE public.posts OWNER TO sqzpjlkf;

--
-- Name: posts_hashtags; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.posts_hashtags (
    id integer NOT NULL,
    post_id integer,
    hashtag_id integer
);


ALTER TABLE public.posts_hashtags OWNER TO sqzpjlkf;

--
-- Name: posts_hashtags_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.posts_hashtags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_hashtags_id_seq OWNER TO sqzpjlkf;

--
-- Name: posts_hashtags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.posts_hashtags_id_seq OWNED BY public.posts_hashtags.id;


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO sqzpjlkf;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: reposts; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.reposts (
    id integer NOT NULL,
    post_id integer,
    user_id integer
);


ALTER TABLE public.reposts OWNER TO sqzpjlkf;

--
-- Name: reposts_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.reposts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reposts_id_seq OWNER TO sqzpjlkf;

--
-- Name: reposts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.reposts_id_seq OWNED BY public.reposts.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    user_id integer
);


ALTER TABLE public.sessions OWNER TO sqzpjlkf;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO sqzpjlkf;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sqzpjlkf
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    picture_url text NOT NULL
);


ALTER TABLE public.users OWNER TO sqzpjlkf;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sqzpjlkf
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO sqzpjlkf;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sqzpjlkf
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: follows id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.follows ALTER COLUMN id SET DEFAULT nextval('public.follows_id_seq'::regclass);


--
-- Name: hashtags id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.hashtags ALTER COLUMN id SET DEFAULT nextval('public.hashtags_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: posts_hashtags id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts_hashtags ALTER COLUMN id SET DEFAULT nextval('public.posts_hashtags_id_seq'::regclass);


--
-- Name: reposts id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.reposts ALTER COLUMN id SET DEFAULT nextval('public.reposts_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.comments (id, content, user_id, post_id) FROM stdin;
1	uau, que música boa!	11	65
2	teste, teste	11	65
3	teste, teste	11	65
4	hmmm	11	65
5	oi	11	65
6	teste	11	76
7	uau	11	81
8	uau	11	94
9	sd	11	94
10	dvvds	11	94
11	teste	11	94
12	ele é belo mesmo	11	96
13	the king of the blues!	11	91
14	hmm. interessante	11	99
15	show de bola!	11	92
16	ótimo gosto!	11	90
17	top demais!	11	97
18	toda hora postando isso?	11	93
19	que isso, muito bom gosto!	11	89
20	boa!	11	100
21	valeu valeu	2	97
22	PAPAPAPAPAPAPAPAPAPAPAPAPA 	2	100
23	nice!	1	100
\.


--
-- Data for Name: follows; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.follows (id, id_following, id_follower) FROM stdin;
3	1	3
5	1	10
\.


--
-- Data for Name: hashtags; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.hashtags (id, hashtag_name) FROM stdin;
4	#http
5	#statuscode
6	#http
7	#statuscode
8	#doc
9	#utilidade
10	#http
11	#doc
12	#http
13	#http
14	#statuscode
15	#utilidade
16	#http
17	#statuscode
18	#utilidade
19	#http
20	#statuscode
21	#utilidade
22	#http
23	#statuscode
24	#utilidade
25	#http
26	#statuscode
27	#utilidade
28	#http
29	#statuscode
30	#utilidade
31	#http
32	#statuscode
33	#utilidade
34	#http
35	#statuscode
36	#utilidade
37	#http
38	#statuscode
39	#utilidade
40	#http
41	#statuscode
42	#utilidade
43	#http
44	#http
45	#http
46	#http
47	#http
48	#http
49	#http
50	#http
51	#http
52	#statuscode
53	#utilidade
54	#raycharles
55	#motivacional
56	#belo
57	#zimbra
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.likes (id, post_id, user_id) FROM stdin;
1	55	\N
2	55	\N
3	55	\N
4	55	\N
5	55	\N
6	55	\N
7	55	\N
10	53	9
15	55	9
17	57	10
21	57	9
22	52	9
28	60	1
30	63	1
31	54	11
34	65	11
35	76	11
36	81	11
38	99	2
39	98	2
43	96	11
44	100	11
46	100	2
47	97	2
48	97	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.posts (id, url, description, likes, user_id, url_title, url_description, url_picture) FROM stdin;
16	https://github.com/carlossiqueri	This is my github page link. :D	0	2	carlossiqueri - Overview	Tenho 23 anos, curso Física na Universidade Federal de Santa Maria. Estudante de desenvolvimento web full stack na Driven Education. - carlossiqueri	https://avatars.githubusercontent.com/u/110114531?v=4?s=400
17	https://github.com/carlossiqueri	This is my github page link. :D	0	2	carlossiqueri - Overview	Tenho 23 anos, curso Física na Universidade Federal de Santa Maria. Estudante de desenvolvimento web full stack na Driven Education. - carlossiqueri	https://avatars.githubusercontent.com/u/110114531?v=4?s=400
18	https://legacy.reactjs.org/docs/getting-started.html	React > postgres.	0	2	Getting Started – React	A JavaScript library for building user interfaces	https://legacy.reactjs.org/logo-og.png
19	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
20	https://meyerweb.com/eric/tools/css/reset/	Modelo de Reset CSS para aplicações futuras. 	0	2			https://meyerweb.com/ui/i/hamonshu/fb-og-image.png
21	https://origamid.com/projetos/flexbox-guia-completo/	Um ótimo guia de flexbox css. Muito didático e interativo.	0	2	Guia completo de FlexBox - CSS - display: flex;	Aprenda a utilizar o flexbox para a criação de layouts responsivos com CSS nesse Guia Completo.	https://www.origamid.com/projetos/flexbox-guia-completo/guia-flexbox.png
22	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #doc #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
23	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #doc #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
24	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #doc #utilidade #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
25	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
26	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
27	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
28	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
29	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
30	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
31	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
32	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #doc #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
33	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #doc #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
34	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
35	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
36	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
37	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
38	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
39	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
40	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
41	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
42	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
43	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
44	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
45	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
46	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
47	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
48	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
49	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
50	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
51	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
52	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
53	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
54	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
55	https://developer.mozilla.org/en-US/docs/Web/HTTP/Status	Baita documentação sobre HTTP response status codes! :D #http #statuscode #utilidade	0	2	HTTP response status codes - HTTP | MDN	HTTP response status codes indicate whether a specific HTTP request has been successfully completed.\n  Responses are grouped in five classes:	https://developer.mozilla.org/mdn-social-share.cd6c4a5a.png
57	https://br.pinterest.com/	Para ficar mais criativo!	0	10	Pinterest	Discover recipes, home ideas, style inspiration and other ideas to try.	https://s.pinimg.com/images/facebook_share_image.png
59	https://www.youtube.com/watch?v=CzAkTrDiXxg&list=RDCzAkTrDiXxg	essa música é do balacobaco	0	2	Ray Charles - Song For You (Live at Montreux 1997)	Ray Charles: Live At Montreux is out now.https://smarturl.it/RAYCHARLESMONT97BRhttps://smarturl.it/RAYCHARLESMONT97DVDhttp://smarturl.it/RAYCHARLESMONT97DIGR...	https://i.ytimg.com/vi/CzAkTrDiXxg/maxresdefault.jpg
76	http://plataformacera.com.br/	my job	0	11	CERA	A sua Plataforma de Controle Especializada no Ramo Automotivo.	https://arquivos.plataformacera.com.br/favicons/share.png
77	https://www.youtube.com/watch?v=QYdMuaCgjhQ	teste	0	11	Agência 300k	Entenda os caminhos que fizeram a Traction atingir o faturamento de R$ 300.000 de MRR de maneira sólida e sustentável, passando por três pilares:🚀 Vender ma...	https://i.ytimg.com/vi/QYdMuaCgjhQ/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-BYAC4AOKAgwIABABGGUgZShlMA8=&rs=AOn4CLBQMSv3TKdjIEvaIkyTuR6YUz-e1Q
78	https://www.youtube.com/watch?v=5YZzZIt6Tmg	playlist sinistra #raycharles	0	11	Ray Charles Greatest Hits - The Very Best Of Ray Charles - Ray Charles Collection	Ray Charles Greatest Hits - The Very Best Of Ray Charles - Ray Charles Collection------------★★ ★★-------------● Thank you for watching my video● Share this ...	https://i.ytimg.com/vi/5YZzZIt6Tmg/maxresdefault.jpg
79	https://www.youtube.com/watch?v=Lrv-Morm-c0	uma do James, pra variar	0	11	James Brown - I Got You (I Feel Good) (Live 8 2005)	James Brown performing at Live 8's "Final Push" in Edinburgh's Murrayfield Stadium on the 6th July, 2005. Organised by Sir Bob Geldof and The Band Aid Trust ...	https://i.ytimg.com/vi/Lrv-Morm-c0/maxresdefault.jpg
80	https://www.youtube.com/watch?v=91K2jpmwj9o	melhor versão	0	11	Donny Hathaway - A Song For You (Official Lyric Video)	You're watching the 2021 official lyric video for Donny Hathaway - "A Song For You" from the album 'A Donny Hathaway Collection' (1990). Get your copy of 'A ...	https://i.ytimg.com/vi/91K2jpmwj9o/maxresdefault.jpg
81	https://www.youtube.com/shorts/XyJeOE90jmI	cover de calouro	0	11	A Song for you - Donny Hathaway #cover Christian Guardino	#song #acoustic #heartwarming #respect #hearttouching #idol #bestmoments	https://i.ytimg.com/vi/XyJeOE90jmI/hq2.jpg?sqp=-oaymwEoCOADEOgC8quKqQMcGADwAQH4Ac4FgAKACooCDAgAEAEYciBLKEIwDw==&rs=AOn4CLB5Rn1DszC6AFvEYRQoS_z9phdAKw
82	https://www.youtube.com/watch?v=QYdMuaCgjhQ	repetido mesmo	0	11	Agência 300k	Entenda os caminhos que fizeram a Traction atingir o faturamento de R$ 300.000 de MRR de maneira sólida e sustentável, passando por três pilares:🚀 Vender ma...	https://i.ytimg.com/vi/QYdMuaCgjhQ/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-BYAC4AOKAgwIABABGGUgZShlMA8=&rs=AOn4CLBQMSv3TKdjIEvaIkyTuR6YUz-e1Q
83	https://www.youtube.com/watch?v=iLICvNwV_hc	#motivacional o negócio tá doido	0	11	JÁ deu CERTO! Pega essa VISÃO Motivacional | Realidade & Disciplina (2023) HD	✅ 𝐌𝐞𝐭𝐚𝐦𝐨𝐫𝐟𝐨𝐬𝐞 𝐞𝐦 𝟐𝟏 𝐝𝐢𝐚𝐬 𝗰𝗼𝗺𝗲𝗰𝗲 𝗵𝗼𝗷𝗲 𝘀𝘂𝗮 transformação 𝗰𝗹𝗶𝗾𝘂𝗲 𝗮𝗾𝘂𝗶 ↴» https://www.metamorfose21dias.com★ Precisa de...	https://i.ytimg.com/vi/iLICvNwV_hc/maxresdefault.jpg
60	https://www.youtube.com/watch?v=r0yq_yXFQhg	a melhor!!!!! <3	0	1	Taylor Swift - All Too Well (Sad Girl Autumn Version) - Recorded at Long Pond Studios	Listen to 'Red' (Taylor's version) album here: https://taylor.lnk.to/redtaylorsversion 🕰️ Pre-order the new album Midnights by Taylor Swift available everyw...	https://i.ytimg.com/vi/r0yq_yXFQhg/maxresdefault.jpg
84	https://www.youtube.com/watch?v=iLICvNwV_hc	motivacional repetido	0	11	JÁ deu CERTO! Pega essa VISÃO Motivacional | Realidade & Disciplina (2023) HD	✅ 𝐌𝐞𝐭𝐚𝐦𝐨𝐫𝐟𝐨𝐬𝐞 𝐞𝐦 𝟐𝟏 𝐝𝐢𝐚𝐬 𝗰𝗼𝗺𝗲𝗰𝗲 𝗵𝗼𝗷𝗲 𝘀𝘂𝗮 transformação 𝗰𝗹𝗶𝗾𝘂𝗲 𝗮𝗾𝘂𝗶 ↴» https://www.metamorfose21dias.com★ Precisa de...	https://i.ytimg.com/vi/iLICvNwV_hc/maxresdefault.jpg
85	https://www.youtube.com/watch?v=iLICvNwV_hc	mais uma vez repetido	0	11	JÁ deu CERTO! Pega essa VISÃO Motivacional | Realidade & Disciplina (2023) HD	✅ 𝐌𝐞𝐭𝐚𝐦𝐨𝐫𝐟𝐨𝐬𝐞 𝐞𝐦 𝟐𝟏 𝐝𝐢𝐚𝐬 𝗰𝗼𝗺𝗲𝗰𝗲 𝗵𝗼𝗷𝗲 𝘀𝘂𝗮 transformação 𝗰𝗹𝗶𝗾𝘂𝗲 𝗮𝗾𝘂𝗶 ↴» https://www.metamorfose21dias.com★ Precisa de...	https://i.ytimg.com/vi/iLICvNwV_hc/maxresdefault.jpg
86	https://www.youtube.com/watch?v=ehQoH4GAunw	foque apenas em você	0	11	FOQUE APENAS EM VOCÊ | Compilação de vídeos motivacionais - 30 minutos | Mente Forte	MELHORES DISCURSOS DO CANAL MENTE FORTE! Estes são alguns dos nossos melhores vídeos de discursos motivacionais com mensagens sobre foco, disciplina e realiz...	https://i.ytimg.com/vi/ehQoH4GAunw/maxresdefault.jpg
65	https://www.youtube.com/watch?v=HeHiio1sTTI	som do bom!	0	11	Donny Hathaway - A Song For You	Website : http://jensenkirk.comTwitter : http://twitter.com/jensenkirkInstagram : http://instagram.com/jensenkirk	https://i.ytimg.com/vi/HeHiio1sTTI/hqdefault.jpg
63	https://www.youtube.com/watch?v=DCYmJDO2_IE	perfeita!!! <3 aaaaaa	0	1	Cinnamon Girl	Provided to YouTube by Universal Music GroupCinnamon Girl · Lana Del ReyNorman Fucking Rockwell!℗ A Polydor Records Recording / An Interscope Records Recordi...	https://i.ytimg.com/vi/DCYmJDO2_IE/maxresdefault.jpg
87	https://www.youtube.com/watch?v=VM6xEdpqZ-o	freud	0	11	playlist para estudar como Freud tendo revelação da verdade sobre o subconsciente (música clássica)	✨Essa playlist é para todos vocês estudiosos da psicologia que fazem sessões de estudos e amam sentir aquela paz de estar descobrindo mais sobre a mente huma...	https://i.ytimg.com/vi/VM6xEdpqZ-o/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLBCXoV4X6S07sg5zyM1a05RMLSTbw
88	https://www.youtube.com/watch?v=40BpaypwA7o	ray charles concert	0	11	Ray Charles - Full Concert - "1981"	Wep:http://www.j21sessions.comSUSCRIBETE: http://goo.gl/u7c037Ray Charles - Full Concert - "1981" LveJ21 SessionsFacebook:https://www.facebook.com/pages/J21-...	https://i.ytimg.com/vi/40BpaypwA7o/hqdefault.jpg
91	https://www.youtube.com/watch?v=M9ircLFB7c0	bb king	0	11	B.B. King New Orleans Jazz fes 1994		https://i.ytimg.com/vi/M9ircLFB7c0/hqdefault.jpg
92	https://www.youtube.com/watch?v=RAena9F9oSE	jamal	0	11	AHMAD JAMAL . JAZZ Session 1971	Comme tous les jazzmen, Ahmad Jamal est un improvisateur. Mais il s'est personnellement toujours opposé à la notion d'improvisation comme élément différencia...	https://i.ytimg.com/vi/RAena9F9oSE/hqdefault.jpg
93	https://www.youtube.com/watch?v=RAena9F9oSE	jamal 2	0	11	AHMAD JAMAL . JAZZ Session 1971	Comme tous les jazzmen, Ahmad Jamal est un improvisateur. Mais il s'est personnellement toujours opposé à la notion d'improvisation comme élément différencia...	https://i.ytimg.com/vi/RAena9F9oSE/hqdefault.jpg
94	https://www.youtube.com/watch?v=RAena9F9oSE	jamal 3	0	11	AHMAD JAMAL . JAZZ Session 1971	Comme tous les jazzmen, Ahmad Jamal est un improvisateur. Mais il s'est personnellement toujours opposé à la notion d'improvisation comme élément différencia...	https://i.ytimg.com/vi/RAena9F9oSE/hqdefault.jpg
95	https://www.youtube.com/watch?v=1WfyBacToIw&ab_channel=BeloVEVO	Baita música p codar no feriado	0	2	Belo - Reinventar / Pra Ver o Sol Brilhar (Vídeo Ao Vivo)	Music video by Belo performing Reinventar / Pra ver o sol brilhar. (C) 2011 Sony Music Entertainment Brasil ltda.	https://i.ytimg.com/vi/1WfyBacToIw/maxresdefault.jpg
96	https://www.youtube.com/watch?v=PIyZ0ABh2y0&ab_channel=BeloVEVO	o belo é belo #belo	0	2	Belo - Perfume / Intriga da Oposição / Desse Jeito é Ruim pra Mim (Vídeo Ao Vivo)	Music video by Belo performing Perfume / Intriga da Oposição / Desse jeito é ruim pra mim. (C) 2011 Sony Music Entertainment Brasil ltda.	https://i.ytimg.com/vi/PIyZ0ABh2y0/maxresdefault.jpg
97	https://github.com/carlossiqueri	meu github	0	2	carlossiqueri - Overview	Tenho 23 anos, curso Física na Universidade Federal de Santa Maria. Estudante de desenvolvimento web full stack na Driven Education. - carlossiqueri	https://avatars.githubusercontent.com/u/110114531?v=4?s=400
98	https://www.youtube.com/watch?v=2oKXvJ4XeFc&list=RDMM&start_radio=1&rv=x0lvBPKzeJs&ab_channel=Zimbra	zimbra #zimbra	0	2	Já Sei (acústico) - #ProjetoViva	Versão acústica produzida para nossa campanha de financiamento contínuo PROJETO VIVA! Toda semana tem um video desses e muito mais! Conheça no link:http://ww...	https://i.ytimg.com/vi/2oKXvJ4XeFc/maxresdefault.jpg
99	https://www.npmjs.com/package/use-interval	useintervarl	0	14	use-interval	React hook for setting an interval as posted on overreacted.io. Latest version: 1.4.0, last published: 2 years ago. Start using use-interval in your project by running `npm i use-interval`. There are 30 other projects in the npm registry using use-interval.	https://static.npmjs.com/338e4905a2684ca96e08c7780fc68412.png
100	https://www.youtube.com/watch?v=-0hmmX96QvY	meu amigos, finalmente!	0	11	Ayrton Senna - Tema da vitória	Ouça a música tocada quando alguem brasileiro ganha a corrida	https://i.ytimg.com/vi/-0hmmX96QvY/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AG-AoAC8AGKAgwIABABGH8gOig5MA8=&rs=AOn4CLCHB5qupHZONGEmo0pOjH5WCpbygA
90	https://www.youtube.com/watch?v=mZZX4EfLqio	teste edit	0	1	Taylor Swift - cardigan (Lyric Video)	Taylor Swift - cardigan (Lyric Video)#cardigan #taylorswift  #lyrics🤍Click to enjoy the best relaxing music: https://youtu.be/VLcyPLgm1Ok» Follow Taylor Swi...	https://i.ytimg.com/vi/mZZX4EfLqio/maxresdefault.jpg
89	https://www.youtube.com/watch?v=K-a8s8OLBSE	<3 #theerastour	0	1	Taylor Swift - cardigan (Official Music Video)	Official music video by Taylor Swift performing “cardigan” – off her album ‘folklore.’ Get the album here: https://store.taylorswift.com ►Subscribe to Taylor...	https://i.ytimg.com/vi/K-a8s8OLBSE/maxresdefault.jpg
\.


--
-- Data for Name: posts_hashtags; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.posts_hashtags (id, post_id, hashtag_id) FROM stdin;
2	45	39
10	55	51
11	55	52
12	55	53
13	78	54
14	83	55
15	96	56
16	98	57
\.


--
-- Data for Name: reposts; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.reposts (id, post_id, user_id) FROM stdin;
1	100	1
2	98	1
3	97	1
4	96	1
5	95	1
6	90	1
7	83	1
8	99	1
9	85	1
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.sessions (id, token, user_id) FROM stdin;
1	fa1ca68a-c413-4fd0-b8f3-af923b39a15c	1
2	bf6f65ba-e2f8-4dff-ae17-01e7fafed552	1
3	62c82309-0c6a-4a1a-a2c7-bc6fb7c3fe65	1
4	edecd553-8403-4695-8141-c16e14d4bc2c	1
5	edd8d513-73cb-4b02-a43b-e68fa1b38b15	2
6	777e7c04-638b-42b3-9573-3a5db24def1b	2
7	0b5b35dd-a047-494b-a465-d73cabf6ff66	2
8	52908c61-1389-4c56-8fb0-5b76fd8e6373	2
9	962b9692-d02f-4bf0-9777-f87ec7c0d74b	2
10	ce058b84-111c-47fe-9f15-5863bcc5ef93	2
11	846d55e7-3358-4c5f-8096-52acee489632	2
12	8d18f9e1-094f-4b86-942e-f97db50337b2	2
13	fa150585-4bc5-402f-ae11-c432ada02982	2
14	6ee3ed20-f03d-42d2-8ebc-e74d48f6a108	5
15	bb46ef25-c294-4b76-a061-120766e75369	5
16	284a6dbd-2f22-48d2-b647-01d5fda763b5	5
17	7eb4a619-7c23-428f-9841-a4599ef37e1c	2
18	31ac72f3-516b-4127-aa2a-48a56b24e7eb	2
19	c273e9a7-f8c9-4cd6-9af4-98f058f45e42	2
20	e1c5b931-c390-4248-a917-9a2b53512c09	7
21	2d05505f-1aca-48bc-92d9-d45451c7b57c	7
22	a6a1dd3d-df74-4677-8bb4-c350a6fbf4e3	7
23	2589b583-8541-4aaf-ae25-7b08605e72de	7
24	4d1d6d60-c0d4-4a9f-8c19-168b1ecb9e64	7
25	44206243-f369-44c0-8586-b4698843b632	2
26	24171157-f278-49ac-b42d-d37c894ec499	7
27	4559c541-ad4d-4afc-8c25-2789e28d0445	7
28	fa35d7a9-e416-4093-bec6-3cdbbfef5234	5
29	e089d865-a66b-497d-9692-d988cd527b7d	7
30	ec80b74a-08c4-468e-803a-3bbb9013f244	5
31	48e883ee-ffb9-4309-8391-29c3de6da26e	7
32	d054bdbf-1475-4c63-b4bb-a0f16a726433	7
33	66d79133-2929-404d-9884-4ec3cd12cce4	7
34	78b26647-ee03-4a24-b733-cecaf514a86e	7
35	53115fc0-b09f-45df-9880-3a8d30b56c58	2
36	01f42f40-0127-4ff8-b3a4-2ed17ec134bf	7
37	4ce048db-1242-43a6-b69f-6050acc3af80	7
38	0b1e102f-9f89-4a1f-8fd5-0a06fba45777	7
39	20538617-6448-4162-b71b-ab9bac1c217c	7
40	23283d29-18c7-443e-ac5c-8d15c7e1d1f8	2
41	9c23c859-01c7-4f8c-9bde-d962cb84ed67	2
42	8e870b88-68f4-4f1c-bd58-83413250dfe4	7
43	5c19b73e-c4e9-456d-be1d-30470ad23055	7
44	980959cd-301e-4dd9-850c-e5f6eacfbfae	2
45	478a3af2-df0f-4f61-a004-d94d0e5aa67d	7
46	1a8fc893-60e3-4b80-9fe0-11a71daecdc4	7
47	14844e9f-bfdb-47f6-a001-f3a80fa97a5c	7
48	e9c42d5b-83d5-4b33-8d40-ec2c4371f081	7
49	e30a1e08-3577-4afe-8a37-33bfe3b5c5a4	7
50	0090b010-10da-4e70-9db3-7e1caef25346	7
51	281c119c-67bc-43de-a39e-b54f02e8f50c	7
52	637d5560-bca6-47c2-a588-8f51872f5044	7
53	24170f1a-7050-44ec-bc03-8e745331cee1	7
54	0cd1d3c2-0b15-4ece-bfa0-49f4401e8917	7
55	f69d6f7b-02ca-4c27-9c29-7117b16d47bd	7
56	68863cea-1800-4f01-8ddf-649b2e26e12e	7
57	c0391ca4-73e2-4d4e-8137-5dea78ff69c1	7
58	9cb9f5eb-aa80-4522-867e-fcb798c116d0	7
59	cb05766d-1979-4865-bc44-4c925f42338d	7
60	c2200d33-8c80-418f-9a73-42adff86813d	9
61	5163558d-f067-4c89-b94c-b7c6a2497811	2
62	0b777ef7-5bbe-4676-aee7-4410539b8b5a	9
63	0e031361-669a-46ae-9227-bc8fa6fb0583	2
64	14ef117d-fee6-42bf-b736-42e7bdae3f7c	2
65	6319616a-325c-4711-99d7-412d9b4ad729	2
66	3891a8a6-70d9-400e-b61d-0a770847dd8a	9
67	992dc91d-7499-4e2e-ab54-4cbc19a9d297	2
68	a30f03de-35a9-47e1-8df9-017c9e3c0b40	2
69	37825992-add6-4d55-bb62-077fa7f222d5	9
70	59c0d5e9-6f51-41b6-a096-5dd62b6d20e9	9
71	885aa740-5598-47ec-ad76-76205228f1a5	9
72	b30c6ce3-6bdb-43d8-9882-e2594922c946	9
73	37d70921-523a-407a-85ce-beabc495ea13	9
74	706439e3-b5bb-4723-ac28-a10b6079d994	9
75	7dede642-b388-4928-a3fc-d55020d53f5d	9
76	67f3403f-afb9-40fc-9d23-43ddc22ff813	9
77	271cdabd-7d58-40e9-9c62-1bcbf140d4a5	9
78	50d39a3b-3fb3-439b-b272-0a61c991b22d	9
79	0e16a86b-9c3c-4bd2-92fa-a50c25d7a974	9
80	778901e7-b23b-401d-8741-24bd59b830b7	9
81	5f9d148c-f047-45a8-bf46-9ad465a70ff3	9
82	787a21c0-ffd8-4994-a5a0-f415acd06a9c	9
83	c5a0fb75-7ead-4b2b-83c9-5781ce383144	9
84	730e6768-65d8-4411-9711-a180cbd843b5	9
85	8d88a031-a032-40f3-ae6d-8643e4c085cd	9
86	692fc0a3-b201-4f1a-a657-407788a4df03	9
87	9f624c1f-63a6-4a4e-bd18-38353d8d9e16	9
88	f59ef790-c718-47bd-b0c5-6f13d6a7b33f	9
89	fd6ef31e-6fa9-4ef7-b0fa-f6b5d8b06177	9
90	611d33d2-54ad-43a8-9c15-3bcd92de9c44	9
91	3f6442b7-f698-4abe-87ca-2484bfef51f9	9
92	24f5a228-edbd-4ea1-b3ea-40af7d622210	9
93	316b2bb8-e327-4cc0-af44-f06e7900222b	9
94	84cf13ad-9305-4176-9dd4-f8d74d11c88a	1
95	cdebafbe-d3e5-45b4-9de7-cd820849a059	1
96	5ae734a5-8f86-4a29-868d-bdecff145fe5	9
97	03a1e15a-6689-4adf-b106-73bfb2317ec2	1
98	550272fb-0f36-44a9-b1e2-ac382f161d9c	1
99	a9cbd29f-8d5f-44c9-a81d-c7729a54ce69	1
100	270cf937-d814-4eae-94b9-4fdfb0241d18	7
101	c2ffdb58-19fc-42e1-aee0-3760fe030dfc	1
102	498de142-7e0e-4c1a-9066-43873410d506	9
103	7cff4a7f-18e0-413f-aac9-7c5461acf96d	7
104	3232e2bc-f10c-4ecb-bb6c-21307488b070	1
105	9a599bfe-5f1c-4783-b1fd-51971e90bc08	7
106	8d4627a4-881b-46e1-b50f-6e5ae885005c	7
107	7915102a-998b-4025-a591-435283f44f41	7
108	5cde202d-9c66-490e-af2b-c50d98e7c91f	7
109	e100c2e9-f358-4f37-b1b5-21de6eaeff4b	1
110	a10807b8-0268-439c-a0c3-887551cd6d17	1
111	aa03ed61-3401-4445-8d3e-f523ff65c93e	1
112	0b969932-8c6c-403f-83db-852da51b5774	9
113	8ae382d4-2cb0-4036-b82b-797e40082e16	9
114	59e043b1-fefa-4233-b242-3870448b6ec9	7
115	badce24a-6ae5-4966-b1f1-6a0906c52363	9
116	e9defe7b-194b-45d9-a62f-4ca133422342	9
117	22f1b1a8-ca54-4fbe-89c5-1cc8d7b5633a	9
118	b6a3206e-1863-4a35-b104-1ac6d1ea4d8b	9
119	94df1761-f9f7-4cee-8cef-f78c62b4bbd8	7
120	09382976-0b11-4680-b5f7-f9586fe099df	10
121	b9a47e39-1a6a-4f44-a2ef-1cbf3dd845c3	10
122	08398c72-656c-4f2d-86dc-00aa804b023a	9
123	4a57dbe0-8648-42df-8f83-df99fdec759e	9
124	55f30800-df33-4628-a816-880e6f07ca3f	9
125	9fcc7bba-f3f3-4806-9721-2a6aadc62d70	9
126	26af90fe-2975-41ae-89c5-cdfab9f4cf28	9
127	f16739c3-6422-4316-82b0-30437542518c	9
128	926c1f1f-413b-450f-8175-b67b2d01a1f7	9
129	9de6801e-88ea-425d-8f08-fe39dc4b53e4	9
130	0ec1f2b9-05fb-4b49-8e96-971079005dbf	9
131	e5b9b2a6-02d9-4cd8-a9ff-1c97954b2233	9
132	797bb8fe-c847-4d5e-9ef0-0577048500ae	9
133	f00b815f-5be0-4a05-81cf-81d9d4df740f	9
134	945c5a29-2b92-4648-8932-ca529b4e6b3c	9
135	a849eee4-9d5d-4415-95cc-b63963fc6f83	9
136	3547b6d7-ef1f-420a-a666-9d61150b2626	9
137	30ea1287-0bc8-499e-b198-75fb8563ffac	9
138	c834c23e-580f-4a56-bd8c-482123a3f749	9
139	3ea10139-19d2-4127-9ac3-fe4ccadaf137	1
140	2267e9cf-aaa1-4a43-84d8-718cbb9f59d9	2
141	4f83de22-716e-4210-add1-0059405b82cc	1
142	9624c33d-a176-43aa-8084-af9d67dd14c1	9
143	bd053987-cc10-4cc6-a2d2-ae471b7c8087	9
144	65006961-6c57-40f5-ba80-a37bc8fefa5d	9
145	fdf05a73-7829-4601-a26c-641b39523fda	9
146	54f146ef-5ab2-4c25-9d6d-ad2f4dc17b48	7
147	65101b7e-3c2f-42f8-af4f-7aff91f57662	2
148	69982d6b-a74a-4e6a-a32f-82803b85a5af	2
149	7f7ba82b-e140-44d5-9336-51e8c2b36376	2
150	a6eb41c5-640e-4d4c-86c2-6764a7bdf366	7
151	b360e1f4-ed37-4cb6-a1f7-74671c19c8af	1
152	e62a2b81-98ca-4a4d-8844-90cf0f8cbd96	1
153	111df61c-ac66-4fe5-849b-5c0d22d707b7	2
154	b5c0e734-68d5-4607-a15e-ac7b22dc0416	1
155	8bfa5018-b838-480b-a818-0bc55615b185	1
156	557acaef-9bac-45a8-b725-af18c3901ab1	1
157	f89d43e6-f066-4d72-8f40-645501cfe2bf	1
158	bcf7037c-d7c6-4236-a847-ebfd0d6c3beb	1
159	afb2f10f-c7bf-4d16-a678-8284b711f7c2	1
160	2ea8fee4-5672-428a-a337-d1c6060a729c	1
161	548eacbb-e947-4f5a-9c6c-e6f53b8d046f	1
162	f30baba0-d620-426f-8dc5-5830f8e721cc	1
163	59a5c2cf-2d9c-4ff1-b351-c83c2e421bba	1
164	81a488ee-5d65-4fb8-b30a-281a7427f4aa	1
165	f0ecb2dc-576c-4d11-b636-ceb556a25cd4	1
166	a6f3d3b2-cc0d-463c-9cc7-603a432d2be2	1
167	321cb88b-d0d9-4ef2-93ec-91813aa7e6a8	1
168	eaa9572b-18ed-4fef-87c7-9027e0464672	1
169	ecf68438-1db7-4694-83e3-a167dcb0c311	1
170	29323939-bfaa-4dd4-9e0b-719e60021715	1
171	02c1b125-8c2e-488f-8156-375d0a2c32ac	1
172	646fcaf1-97bf-4250-9cf4-add2bc57cded	1
173	0670861c-3adb-4591-9f88-7330b63a9586	1
174	e1100a5f-881d-411b-8328-1b08c751417b	1
175	bcf9c846-45c7-4e25-99f3-e11a295c8070	1
176	2f3183b7-e7cd-40ee-b32f-b2bd9bbce619	1
177	35dc5eaf-ca93-482d-bb1f-1f3ba460c3bd	1
178	be37c936-206e-451d-8861-7cc73be93cb4	1
179	05fe7c52-c2e4-40c7-9748-9ea75370cada	1
180	e31d5e1f-c089-47e9-ad05-596cb9e4d35a	1
181	a66e6982-dc24-4954-a176-5bfa3eab65f0	1
182	4dbd5fb5-db3f-47fa-94f9-c7929c395e20	1
183	8c6e4cff-99b1-4d95-9fd2-458901daebd4	1
184	0b0ebb69-cf48-46fe-9084-778311f2bb26	1
185	8a85e254-cc40-4cb9-9309-5759b7b74a83	1
186	f6733d53-a628-4847-96d6-6cdccb7147f7	1
187	b1bdea1e-d8f5-4b5b-957c-60a3f5fe481a	1
188	d0965924-6757-4487-9c15-b3f6ed8f6eea	1
189	ca5f086f-acc7-4219-bd98-01794df154bd	1
190	05a19940-985f-4833-ba78-4f86f3fbadd6	1
191	67a52de1-93ad-45ef-8bcf-187a8d48903f	1
192	98bfc448-a296-473a-9a79-500b166d524e	1
193	8880cd8a-159c-49f1-82d4-e2a9beea13bd	1
194	17b35ec5-9bae-4e54-a364-ec47f5fe70ab	1
195	4ea91949-6e8a-4f11-bb70-a59570395cc2	1
196	e08cfc9b-55dc-4f10-8a1a-8e60ffffb01d	1
197	fa1536d5-bf92-436c-81b3-13a5cc93827c	1
198	f497bd68-6c71-494b-be96-6304270b0f87	1
199	d2edabff-7436-42d7-953c-cd17ff24137b	1
200	435ff09b-e8dd-4bff-a23f-d2d8a551eda0	1
201	a3f36171-2dec-48d1-905f-c53c2fc06439	1
202	15027101-0ff6-4a8a-b977-a1970ce457fe	11
203	4dcd2517-de2b-4b7e-bcd5-d5a3f673375f	11
204	794a30a9-3bf6-4891-b784-73d1f172af7d	11
205	e170406f-ab16-4a79-ab68-121c8be23009	7
206	d35d9616-f5b3-4b38-aecd-1657bfb1822a	1
207	67e81ab3-fe11-4787-ba18-79acbc98f547	1
208	b249c9b3-5c72-46e5-b2fa-13f8711d8103	1
209	8de8c184-97fc-4f97-a858-d6ad209c39d9	1
210	6076de39-4f18-4b8d-adec-c4c73d2173e7	1
211	fc276ecb-7ba2-4483-9522-cb42120a9462	1
212	a91b4f7e-8777-4328-9a2c-ef7c67d752ba	1
213	1a674840-f475-4d54-8b08-be88ebdcd3a1	1
214	90465fa6-50bf-4e2d-820d-8776e5932f8b	1
215	f5837d31-2c06-4172-b41d-0fd153d36fb2	11
216	3574b492-0bea-44d9-b003-a69e86726a0c	11
217	d983f1d3-523f-4db8-9d67-3cdb562347b1	7
218	b23674ff-cd5e-4884-9f20-18ad97f8a139	7
219	50dc52b3-c956-4cbb-ae08-db68c93bde91	7
220	69249cd3-a02b-49f5-aba4-9b8e3f6f6364	1
221	0ba1650d-adf6-4b57-b826-ceabe1b1e53b	1
222	d8881db9-1708-4a41-adab-89305bb63d59	7
223	47382013-505b-400c-8097-deb4da5d5522	7
224	43946ddf-36ec-4c19-9f79-6919743231f0	7
225	44031404-e3b7-4d7b-bc50-d01162d519ba	1
226	615728dd-253c-45a1-a675-0df1ed57d5a0	7
227	efef64e7-6da7-45ca-96fe-3aab1bc4b243	1
228	9b014ebe-2739-4f89-8d2a-5417d11de7f6	1
229	0cf27058-6579-40b5-befd-1bcac8c7d9e7	7
230	6510d6ae-cdf1-4d1a-a690-b22e9119591b	7
231	5cc4a2b1-a429-44fe-931e-df36a31e2ae8	7
232	5062c288-7766-4d57-8159-513773937c82	7
233	38327e43-5ef5-497b-bc4b-f82e0bb4d970	7
234	ccfe5ada-09a8-48b8-b35b-aa0c716a00cb	7
235	5fe738fb-60a0-4876-bb2a-33ceb9bd5a4f	1
236	a996827e-3afd-4be3-b4a2-72c5267d60da	1
237	7b3f8b6a-2f84-4abd-80e2-d2d792868eb8	1
238	557672fe-4db7-4d6b-955e-81d73fdd42a8	11
239	8876cfce-40f2-4046-baf3-67696ffd3f45	7
240	3d3ebbc5-5b4d-4ab0-964b-1e1e567fd33d	11
241	5a9fa4b1-87c1-428d-8f5e-31bf31d70e2b	7
242	bd321273-704b-415d-b9ef-a1cd2e054bb9	7
243	92b1df39-0db6-4d7a-8890-5ca46e8c4908	7
244	d0dd80bb-4b8e-4783-8606-021d89aa558d	7
245	b148b009-debb-45d3-950d-70145154704c	7
246	7c5501a0-425c-4ae3-a509-05e492d28e4b	11
247	f52a9656-6e2f-46d9-b190-8e0746127d5d	7
248	444b0fbb-2d01-4da3-abd3-cce5787f3b74	1
249	bfec52bc-e77a-420e-93ea-47c91f243e4c	11
250	ffd6391a-0026-4455-bc95-965d166ea0ce	11
251	92a95c34-758d-4956-bb18-dd347ddbf942	7
252	4e144b54-76a0-4521-8df7-407c3fc0d46b	7
253	0ecdeb35-b143-4349-bedb-688e9dbd596f	7
254	c711b9f4-bdd4-41bd-9f47-9cf23c352b08	7
255	814ea8cd-e060-406f-944b-9458872cb85a	7
256	bf5e55f8-c316-4fcb-837c-890a2561699e	7
257	b4c3ed99-7efa-439d-b258-af492fc46c99	7
258	8f0bafcc-3d4c-4cb3-932b-5a4f2ad6611e	11
259	3365ea27-6f25-4873-987d-a512e165b4b0	11
260	193217d7-bff8-4af9-adc7-52d83c5773a0	11
261	20d87cb7-5f8d-4935-b3de-c878128548c7	7
262	822ecd00-ee03-4de9-a61b-2aeaf8c32fb0	7
263	41602627-e143-4d53-9514-7d851d7b3975	7
264	e1314112-ed90-4fa0-8f6b-f471241b6f15	12
265	6f012888-a651-40b2-8f16-46142baee85b	12
266	c9be83be-d24a-4e9c-964b-710976187226	12
267	e64bef06-7e9f-457e-8d8e-80548b73b57d	12
268	6500a905-e33e-4da5-93b7-b21de3e892a9	12
269	8f58fd9e-fa6f-4e01-aa19-1d712c5697a3	12
270	b0d9ba9f-4da9-49bd-a38a-cbb3dd054e2b	12
271	3ccf5503-0632-41f8-97a1-3e8495d4f497	12
272	868455cb-b6dc-42ae-b407-b04f6f79943b	12
273	2afe7076-abb4-4b87-a204-8de7ebe552de	12
274	e1f4da44-d4b0-4858-ae0c-5358d56478b2	13
275	115bfd06-65d8-41dc-afba-9ee479a73f57	12
276	0d86ff96-c0fc-4511-b88b-587e0dc3f4c1	12
277	bbce6e1f-49d1-4046-967e-daef927d98bc	12
278	05d5ce17-0ab4-4a09-8d2e-0c06ed7da183	12
279	b56c09d2-f111-4d48-baf5-23e5c351963c	12
280	d925cb45-1f54-4bec-8dca-68dcc2de2668	12
281	a87504cb-0966-406e-870b-25acc1541f2a	12
282	654a8436-6bcd-4362-b0ca-0e543df84293	12
283	703c9e4d-1a66-4575-8d9c-a5b368f04407	12
284	0fd176a5-fd41-40da-a435-294cace1168b	12
285	f3de39d6-650e-451a-9d3f-b84ec4b2e3f5	12
286	d36d6b5c-afe1-4957-bb0f-bfb556d06a59	12
287	6355fde1-1029-411a-b19f-8ffa2bc5a5f7	12
288	b4aa2b8c-abcc-4e54-9c7c-cbd3e87949d3	12
289	5c304e9f-47de-4e27-b7b1-2e70e3bae76a	12
290	4416d8ee-96e7-4b80-8ae7-e0668a0a6569	11
291	c6ab4215-9d3f-47ee-8486-4cfeed8fc966	11
292	a0fbb494-dd81-43c1-8654-50cd490d0e38	11
293	cfc9db37-0608-4e04-8cb7-80e0f78845c7	11
294	58c8cdfa-86bf-4e17-9fcc-0ed173b24358	11
295	b81a37be-2d25-4916-bcd2-dfdc97d2757b	11
296	2a2f1256-a25f-4852-b58d-90c03c598dca	11
297	96966381-2ef8-4378-9ec9-b0bf16c287c2	11
298	90a49779-d916-4517-80ba-02949a7fdb86	11
299	ba32fef7-815e-42cf-b806-2c6b4b8bf735	11
300	1016c8fa-912b-4a08-a536-002cbb8ad53e	11
301	2a0af4e8-e0ba-440c-91f8-257000d5c7e7	2
302	5c038146-0332-41e3-bdee-ffd3b8a7520e	2
303	d2582611-40ae-4347-886a-ac5a1f47d3b9	11
304	cb424b9e-6420-4171-ab55-b3d1238b7cf8	11
305	960ac8e9-c909-464a-8a1c-e080bdd7db37	1
306	52e6050f-f4b0-4183-9979-afaca7486c03	2
307	24520926-c312-45f5-9c1f-42053a5306d1	2
308	18419f08-dbd1-4546-be51-fd4e42927e81	2
309	a0e44af7-1e98-4178-8c0d-ac02ff562e37	2
310	99e263e8-4685-4f95-ac22-18c695fd405e	11
311	1d1a23e7-f55c-42f6-b894-b7888c79f323	2
312	7d30927d-b315-4b33-a4cb-478492dfce20	2
313	4591c72b-95e1-4230-a67a-22407188ab5c	11
314	e757e870-e08f-4e9e-ba1a-8aac15af2f60	2
315	ef967715-3555-4baf-a62b-402132f8c7d5	2
316	6268fda9-2f27-4f9a-ab23-6cc7e3242ef2	2
317	64eecc00-1b2e-4ee2-bf49-829f7878ceb9	2
318	28306578-7a8d-4284-86e5-1b24840ee8e7	2
319	47a1238c-b7ea-4065-bb1d-652b3e9782c0	2
320	b667183e-3af2-4d56-b23a-f555481a2dfb	2
321	d462ae21-d113-4a76-aa8d-7cef6e37bc28	2
322	ccfd0fee-bf1b-444a-bc5f-9f66bbef2277	2
323	e9fd11b6-85e7-4021-a23c-3fab5e38e069	2
324	918b63df-a9d8-405a-af73-49159da6b6c2	2
325	b096c207-5eac-4162-b437-18b0d17a9aa8	2
326	3a76c670-ca42-4f29-b513-7fd76dc68fbd	2
327	4d8ed019-aa2c-490a-8fb1-6d2855fca63e	14
328	f4ea4c2a-f370-4b02-951e-49c1a6b0154e	2
329	d55ec6e6-78b0-41d5-adf8-eab5ee3213e5	2
330	8494e6f5-1d81-455d-a13c-1c93d79282c2	2
331	2c176c15-959b-4449-8a0e-a589a8a15dfe	2
332	1065b9b9-9ff0-4c2b-ae25-9aeeab8bcbc5	2
333	daac169c-40e8-435e-a8ea-7730c1a7d100	11
334	8bfd7e1f-0a5c-48a9-89a9-e45b0c1de0db	11
335	7e363415-d972-470e-846d-2e28b004eeb3	2
336	c51a4038-b5f5-4041-b896-e0bc9856aa1b	2
337	ec36fa6b-6e28-48e0-87e7-0422536704c6	2
338	9031d9d9-19ba-4f46-ab23-eabbe9e95a5a	2
339	442af0ba-d049-406f-9a7b-5de2476e7848	2
340	55e9bcf3-2080-4935-9309-dd4530b9374a	2
341	86549ea9-71bb-47a8-ae27-51b4f0963956	2
342	0b537258-f14b-4dd3-b1b2-a6cddc6dbf4d	2
343	6eea143c-8fb7-46ef-b1a1-ca235153ed62	2
344	ffe5bc48-83f9-4951-912d-b438fa116477	2
345	1c6787a3-ca56-46f5-93fc-933e3fcea4a8	2
346	b56252e1-1a37-4415-92f3-ec60c8d253a2	2
347	c631c7d8-6138-41f8-8f29-6af9b54b58f5	2
348	59357255-201f-48f8-bd17-585bd02678a1	2
349	77a2f90c-c7ba-41ec-a7fc-a28c6fd30eaa	2
350	0fbc2ea5-1881-480e-9759-6cc6eade4268	2
351	fc94e5eb-9a43-4d2b-b362-796d40423d86	2
352	d954d7d0-e1b1-448f-b0c1-0b63edc7d8dc	2
353	d06da9ad-e2c3-469a-9f49-17462432c65d	2
354	8a637ff2-908d-4c5b-bae6-707c6db9d856	2
355	acc52326-c75f-4bd8-b68e-343e8fd1dd20	2
356	104952c8-f9af-42f6-8f48-bc1a1a79ad99	2
357	917a7360-4d43-41fa-960b-40032d3de4b2	2
358	72d8f92f-5bd6-44ff-a020-5f8ac0133c20	2
359	f2dfb6cd-61f2-44e3-99b0-216ddf0a9e55	2
360	1d8aeb25-2505-4dae-adeb-95d18f8d9778	2
361	c1bbd2a0-3cfd-428a-a63a-3351a498b920	2
362	e0dbbfae-ce38-4aa7-a1f5-53d125d210e5	2
363	c93a6892-1c25-4f08-a7f6-bd2bd8d0c759	2
364	b3ed00c2-e388-4a46-a0bb-2f151471ef1c	2
365	6e0b6c31-364b-42a3-aa93-bff62a9d9bc3	11
366	904191ac-3c62-41b1-b942-828e37e0680d	2
367	5496fc06-30e6-4762-9712-a2cc39be0c9f	1
368	b1fb26ba-22b7-4b23-ba4f-077863392040	1
369	f3ca6503-f3e9-415d-bf5d-28d50b7dd647	1
370	ea963e98-3ffa-48a3-ad33-a1fb19f61ea1	1
371	b02a9359-6817-48f7-90cf-8faf24b706d3	1
372	f03650ca-0b62-4e41-8a13-004ebda950e4	1
373	62ddc201-166c-4446-bb6f-c68a1fca5780	1
374	9959a67f-290f-466b-b320-61f97f806c1d	1
375	86782217-46ad-4082-95d3-7e0e6be35975	1
376	ef365fbc-94f0-4359-90fe-e304470fee63	1
377	be846ec5-6990-4d3c-beb0-52f38d1777e0	1
378	56013a82-864c-4304-bfb7-4aed992e14a9	1
379	a28970b2-4bb5-4ac2-b61d-ebdbc271ee45	1
380	ab0d6038-a63c-48c8-be3a-e6cda495759e	1
381	ef2658d1-e4a1-45b2-8aac-5cf851f7b619	1
382	5ccd0a48-1204-4ab2-99fc-d7b33f3baa5b	1
383	97e740de-1974-4c6d-92ec-d726c767f779	1
384	14aa5ea6-d5f3-4910-a624-b1103ff4b65e	1
385	56950f9d-fe48-4132-b2a3-63bf86fcb8d9	1
386	ddc965bf-c4a3-45dd-acce-7e7155b8556e	1
387	8341842f-7347-4d8a-8e97-73d3d4ed950f	1
388	5e067093-b3aa-4619-8167-fef9385a62bc	1
389	970c8fe5-4646-410a-8647-d51bd7fe1b35	1
390	fad22057-3cd1-476d-ae8e-36a5ae87761f	1
391	7199ebf7-bcc8-45fe-a596-71abd89afbf6	1
392	38f8b26f-f501-43b7-855d-9d2456be14ff	1
393	eba7f447-1198-4397-90c2-11bb6f67bbae	1
394	a754bb7a-061c-462c-95d2-e429bbe49e76	1
395	05207b8f-06f0-4a85-89d7-f369fd03b364	1
396	4013c559-43df-43ea-94d4-6b9903a26103	12
397	ae0e4086-052c-48a7-876c-d24716ecf4db	12
398	390dfa7d-2b59-4523-84fd-05cdd7919747	12
399	7b965ec5-d274-49fb-897b-48256312fb0a	12
400	6e7ff141-403e-4c5c-b6da-da1a9395e26e	1
401	f18c240f-2b67-4b55-b89d-c6fb7e1269cf	12
402	45c75238-c89e-45e6-af85-d6d4d7782ed0	1
403	0b68dcaf-cd7e-4bc7-9a9d-12eb7060161f	1
404	3892bae5-3e4c-4fd6-98e6-0800b331504e	1
405	4582f1cc-0c3d-41df-917b-a2ac75c475d3	1
406	d5ee2da0-50dc-4d3a-81d5-f7eef3bddf14	1
407	9f47cc33-e309-44b0-8ba2-85968ed74832	1
408	0ca909c1-f6c7-4948-ace7-bc22baef35a4	1
409	250a397f-9a22-407b-8642-56dfe8c36fb9	1
410	7f5b6864-a0ab-44d0-b8be-f11edfee9738	1
411	8f9f92cc-3580-4a47-a5d6-28bd805b9efb	1
412	bb195de7-4a1b-4cd5-8060-0b83e6929057	1
413	23008284-5044-4072-b20c-0ad8df567ffa	1
414	428806a9-51e1-45a6-9a7c-da9a37999bdf	1
415	8c6459d8-d802-4936-a326-e52e09c8ce22	1
416	0928faa6-2aac-4539-ad22-a1243e5cccba	1
417	325992d2-229c-4598-b255-8bdf5a7b4670	1
418	5bae1b48-c42b-455b-8237-22d675b0e495	1
419	46387d2e-d7c0-4cf8-a89c-08bd0ce6b73c	1
420	4c5edff0-9236-4971-a6e2-522767d677c2	1
421	5103ccba-9210-42ec-af0f-d700554d1148	1
422	0d89cc21-9a1e-41c6-8505-3bb6b58c1d58	1
423	29a06861-01ac-4063-952d-b241d4c2fa04	1
424	324cba79-773b-4819-97d2-d6877d0eb52d	1
425	14d85ef4-9d53-4195-8503-af951fc38f83	1
426	f2015ee6-7f9f-49a6-a3de-b7ccb633d2f0	1
427	74559f9f-ecef-4e7c-b98b-eb44d0f2d6ec	1
428	b97d035b-7c0a-40fe-b849-6a99d0bb7022	1
429	d0dc70eb-4c65-4053-ba88-3296238afb80	1
430	63d40456-09a5-4bd7-83ef-1500adfb78ea	1
431	f7d3be24-c552-4abe-a313-e69f8ddd1da6	1
432	b13c7f74-7dd6-459d-a8f4-667962cef842	1
433	6dd78f56-9b66-4680-95ba-d33e5f56f9d7	1
434	ab63f5fa-e956-40b5-adc7-d9c49b758b89	1
435	1acbaabf-fef4-4cbd-92ff-2c8c2c8dacf9	1
436	c6cb1309-c9d8-45b3-92ac-a7e6838670eb	1
437	41a34d0b-a90c-4edf-8e00-3ccfd6e2dd47	1
438	331a72c3-e2af-4adb-9652-2f9cc4e60087	1
439	db1cef55-5e5e-46b3-b4b9-9d2f440ab7d3	1
440	d9e2fe78-7b92-4ab2-8ce8-0cf26847be2f	1
441	0e671176-fa57-4237-9cc1-6e89d4d7acb5	1
442	baf9eb43-3c78-4df1-b974-4af6f08b3528	1
443	84f16766-547e-4077-8c6a-c61d9e55d27b	1
444	a1603078-422a-49bd-9d1f-0a835edc46a6	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sqzpjlkf
--

COPY public.users (id, email, username, password, picture_url) FROM stdin;
1	lola@gmail.com	lolinhalinda	$2b$10$xqTJ8cTNuL9MdQWQcHaQU.dzia1LgaJRvAJsJOxJzI4zCLmtTIZMG	https://thumbs.dreamstime.com/b/desenho-simples-da-cara-do-c%C3%A3o-dos-desenhos-animados-e-bonito-preto-branco-ilustra%C3%A7%C3%A3o-isolada-vetor-135942455.jpg
2	carlos@carlos.com	carlos	$2b$10$.5tyDfgJkQQtvIkBdTsHRuscIFtGlSHHYilVfDRdJZ1wbVK/bpqSm	https://i.pinimg.com/564x/b3/ee/3c/b3ee3c993156c620f240ac15fd456d31.jpg
3	kjdakhujsd2@alsjdnasjksdn.com	zxczxczxczxc	$2b$10$sZdA/5EGrNXu78MPnuxQkeY3W3cLqWFbh2dEF2nrdtlXhzFyKyw0G	https://i.pinimg.com/564x/b3/ee/3c/b3ee3c993156c620f240ac15fd456d31.jpg
4	gatinho@pretinho.com	gatinho pretinho	$2b$10$ZmJFi3HCe8PeOY3s6bolNOyu3SbT8xg0CWcjdIp1S5EDjux2FKEqa	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgrQtOmq-zq_bA3bmydhVjzT23np7YnnyqxVORYADJaw&s
5	breno@breno.com	breno	$2b$10$b5H9lZ4H3XjWTWB74NQAue8H2xySsJfGZaResn4W1/QnFsiopiu1e	data:image/jpeg;base64,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
6	sdasd@asad.com	breno@breno.com.br	$2b$10$vZ2kkHr5aooMAPoRIFvxdON9ZZBPdyVbKpYcJQOdh8JcsxrZ9nDiG	http://asdada.com.br
7	b@b.com	b	$2b$10$XSCzTLsx/.XjW/LHyhKxOOWtQg1vf7YlpXr1I1A3IfTr4DDjFtowm	https://musicart.xboxlive.com/7/94fc5000-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080
8	morais@gmail.com	moraes	$2b$10$ZbIwIouoPd0ECVHchJWbX.K1bAsDirfrmy51knleTreopCsxWtQR2	https://odia.ig.com.br/_midias/jpg/2020/10/16/1200x750/1_violeta1-20253508.jpg
9	samuca@driven.com	samuca	$2b$10$TGU4g6trzpoUTyBRDR6QlewLKpNnK4MW2OA50I8skV6o4REfgKB3a	https://cdn.discordapp.com/attachments/736246176860471417/1077973470736031784/5rE01Lp.png
10	fabio@gmail.com	fabio	$2b$10$xFwgDNqsicnnkcLHIyzgsOrIDIcFKx7OdqXlAOrVY25gvMN4qSnLe	data:image/jpeg;base64,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
11	fabio@email.com	fats	$2b$10$pf64rsaRjbC1wAQQPFB/1OedwLXLQwpdBYk8C.2Lwfy7up9w6bRX2	https://santhatela.com.br/wp-content/uploads/2021/08/cesare-detti-dom-quixote-e-sancho-panca-d.jpg
12	brenim@gmail.com	Breno H	$2b$10$UyzVnslD8piFDxPQHXIvHuCwqz62f2crClqRU4/Eleqk4sEROZ.0q	https://image.winudf.com/v2/image/bmFtaS56dWx2aWFuX3NjcmVlbl8wXzE1Mjc1NzMyNjBfMDM1/screen-0.jpg?fakeurl=1&type=.jpg
13	jondoe@jd.com	Jon	$2b$10$8AikQwy2aMnBYBkac0zSNewL.a3kKWp2WnfQN7/.8I1QPWMZkajby	data:image/jpeg;base64,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
14	mya@mya.com	Mya	$2b$10$aypw08OOi.bHwBgxTd52heWf3cqjW4.EK6uMoVgOfRiXGhuiIuY0S	https://blog.cobasi.com.br/wp-content/uploads/2021/03/gato-vira-lata-1.jpg
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.comments_id_seq', 23, true);


--
-- Name: follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.follows_id_seq', 10, true);


--
-- Name: hashtags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.hashtags_id_seq', 57, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.likes_id_seq', 48, true);


--
-- Name: posts_hashtags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.posts_hashtags_id_seq', 16, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.posts_id_seq', 100, true);


--
-- Name: reposts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.reposts_id_seq', 9, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.sessions_id_seq', 444, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sqzpjlkf
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: follows follows_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- Name: hashtags hashtags_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.hashtags
    ADD CONSTRAINT hashtags_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: posts_hashtags posts_hashtags_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts_hashtags
    ADD CONSTRAINT posts_hashtags_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: reposts reposts_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT reposts_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: comments comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: comments comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: follows follows_id_follower_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_id_follower_fkey FOREIGN KEY (id_follower) REFERENCES public.users(id);


--
-- Name: follows follows_id_following_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_id_following_fkey FOREIGN KEY (id_following) REFERENCES public.users(id);


--
-- Name: likes likes_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: likes likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: posts_hashtags posts_hashtags_hashtag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts_hashtags
    ADD CONSTRAINT posts_hashtags_hashtag_id_fkey FOREIGN KEY (hashtag_id) REFERENCES public.hashtags(id);


--
-- Name: posts_hashtags posts_hashtags_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts_hashtags
    ADD CONSTRAINT posts_hashtags_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reposts reposts_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT reposts_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- Name: reposts reposts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.reposts
    ADD CONSTRAINT reposts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sqzpjlkf
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT CREATE ON SCHEMA public TO sqzpjlkf;


--
-- Name: TABLE pg_stat_statements; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,UPDATE ON TABLE public.pg_stat_statements TO sqzpjlkf;


--
-- PostgreSQL database dump complete
--

