--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: event_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA event_schema;


ALTER SCHEMA event_schema OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: eventcategories; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.eventcategories (
    categoryid integer NOT NULL,
    categoryname character varying(255)
);


ALTER TABLE event_schema.eventcategories OWNER TO postgres;

--
-- Name: eventcategories_categoryid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.eventcategories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.eventcategories_categoryid_seq OWNER TO postgres;

--
-- Name: eventcategories_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.eventcategories_categoryid_seq OWNED BY event_schema.eventcategories.categoryid;


--
-- Name: events; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.events (
    eventid integer NOT NULL,
    title character varying(255),
    date timestamp without time zone,
    place character varying(255),
    categoryid integer,
    description character varying(1024),
    photo character varying(255)
);


ALTER TABLE event_schema.events OWNER TO postgres;

--
-- Name: events_eventid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.events_eventid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.events_eventid_seq OWNER TO postgres;

--
-- Name: events_eventid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.events_eventid_seq OWNED BY event_schema.events.eventid;


--
-- Name: interests; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.interests (
    interestid integer NOT NULL,
    eventid integer,
    userid integer
);


ALTER TABLE event_schema.interests OWNER TO postgres;

--
-- Name: interests_interestid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.interests_interestid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.interests_interestid_seq OWNER TO postgres;

--
-- Name: interests_interestid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.interests_interestid_seq OWNED BY event_schema.interests.interestid;


--
-- Name: notification; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.notification (
    notificationid integer NOT NULL,
    userid integer,
    eventid integer,
    datesend timestamp without time zone,
    content character varying(1024),
    status boolean
);


ALTER TABLE event_schema.notification OWNER TO postgres;

--
-- Name: notification_notificationid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.notification_notificationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.notification_notificationid_seq OWNER TO postgres;

--
-- Name: notification_notificationid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.notification_notificationid_seq OWNED BY event_schema.notification.notificationid;


--
-- Name: tickets; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.tickets (
    ticketid integer NOT NULL,
    userid integer,
    ticket character varying(255)
);


ALTER TABLE event_schema.tickets OWNER TO postgres;

--
-- Name: tickets_ticketid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.tickets_ticketid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.tickets_ticketid_seq OWNER TO postgres;

--
-- Name: tickets_ticketid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.tickets_ticketid_seq OWNED BY event_schema.tickets.ticketid;


--
-- Name: users; Type: TABLE; Schema: event_schema; Owner: postgres
--

CREATE TABLE event_schema.users (
    userid integer NOT NULL,
    email character varying(255),
    password character varying(255),
    name character varying(255),
    surname character varying(255),
    avatar character varying(255),
    admin boolean
);


ALTER TABLE event_schema.users OWNER TO postgres;

--
-- Name: users_userid_seq; Type: SEQUENCE; Schema: event_schema; Owner: postgres
--

CREATE SEQUENCE event_schema.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE event_schema.users_userid_seq OWNER TO postgres;

--
-- Name: users_userid_seq; Type: SEQUENCE OWNED BY; Schema: event_schema; Owner: postgres
--

ALTER SEQUENCE event_schema.users_userid_seq OWNED BY event_schema.users.userid;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: eventcategories categoryid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.eventcategories ALTER COLUMN categoryid SET DEFAULT nextval('event_schema.eventcategories_categoryid_seq'::regclass);


--
-- Name: events eventid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.events ALTER COLUMN eventid SET DEFAULT nextval('event_schema.events_eventid_seq'::regclass);


--
-- Name: interests interestid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.interests ALTER COLUMN interestid SET DEFAULT nextval('event_schema.interests_interestid_seq'::regclass);


--
-- Name: notification notificationid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.notification ALTER COLUMN notificationid SET DEFAULT nextval('event_schema.notification_notificationid_seq'::regclass);


--
-- Name: tickets ticketid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.tickets ALTER COLUMN ticketid SET DEFAULT nextval('event_schema.tickets_ticketid_seq'::regclass);


--
-- Name: users userid; Type: DEFAULT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.users ALTER COLUMN userid SET DEFAULT nextval('event_schema.users_userid_seq'::regclass);


--
-- Data for Name: eventcategories; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.eventcategories (categoryid, categoryname) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.events (eventid, title, date, place, categoryid, description, photo) FROM stdin;
\.


--
-- Data for Name: interests; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.interests (interestid, eventid, userid) FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.notification (notificationid, userid, eventid, datesend, content, status) FROM stdin;
\.


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.tickets (ticketid, userid, ticket) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: event_schema; Owner: postgres
--

COPY event_schema.users (userid, email, password, name, surname, avatar, admin) FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users"  FROM stdin;
\.


--
-- Name: eventcategories_categoryid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.eventcategories_categoryid_seq', 1, false);


--
-- Name: events_eventid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.events_eventid_seq', 1, false);


--
-- Name: interests_interestid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.interests_interestid_seq', 1, false);


--
-- Name: notification_notificationid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.notification_notificationid_seq', 1, false);


--
-- Name: tickets_ticketid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.tickets_ticketid_seq', 1, false);


--
-- Name: users_userid_seq; Type: SEQUENCE SET; Schema: event_schema; Owner: postgres
--

SELECT pg_catalog.setval('event_schema.users_userid_seq', 1, false);


--
-- Name: eventcategories eventcategories_categoryname_key; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.eventcategories
    ADD CONSTRAINT eventcategories_categoryname_key UNIQUE (categoryname);


--
-- Name: eventcategories eventcategories_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.eventcategories
    ADD CONSTRAINT eventcategories_pkey PRIMARY KEY (categoryid);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (eventid);


--
-- Name: interests interests_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.interests
    ADD CONSTRAINT interests_pkey PRIMARY KEY (interestid);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notificationid);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (ticketid);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- Name: events events_categoryid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.events
    ADD CONSTRAINT events_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES event_schema.eventcategories(categoryid);


--
-- Name: interests interests_eventid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.interests
    ADD CONSTRAINT interests_eventid_fkey FOREIGN KEY (eventid) REFERENCES event_schema.events(eventid) ON DELETE CASCADE;


--
-- Name: interests interests_userid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.interests
    ADD CONSTRAINT interests_userid_fkey FOREIGN KEY (userid) REFERENCES event_schema.users(userid) ON DELETE CASCADE;


--
-- Name: notification notification_eventid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.notification
    ADD CONSTRAINT notification_eventid_fkey FOREIGN KEY (eventid) REFERENCES event_schema.events(eventid);


--
-- Name: notification notification_userid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.notification
    ADD CONSTRAINT notification_userid_fkey FOREIGN KEY (userid) REFERENCES event_schema.users(userid) ON DELETE CASCADE;


--
-- Name: tickets tickets_userid_fkey; Type: FK CONSTRAINT; Schema: event_schema; Owner: postgres
--

ALTER TABLE ONLY event_schema.tickets
    ADD CONSTRAINT tickets_userid_fkey FOREIGN KEY (userid) REFERENCES event_schema.users(userid);


--
-- PostgreSQL database dump complete
--

