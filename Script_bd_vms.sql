--
-- PostgreSQL database dump
--

\restrict dtOOYGPSoLBtrSstu93YbPBdK00gcW6U3msKHaM1PBku6SQauI0HMsBtjlWi5ea

-- Dumped from database version 16.13
-- Dumped by pg_dump version 18.3

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
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.client (id, name, email, phone, address) FROM stdin;
3	za	za@gmail.com	643634754	CR
1	Paul	paul@gmail.com	5647382563	QB
2	Jean	jean@gmail.com	378627382	RHill
4	Pierre	pierre@gmail.com	5372637	Ebene
5	Marie	marie@gmail.com	\N	\N
6	Yusuf	msulogistics@gmail.com	47384729	Grand Baie
7	Messi	messi@gmail.com	\N	\N
\.


--
-- Data for Name: demande; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.demande (id, reference, date_created, client, quantite, valeur_unitaire, amount, validity_date, fixed_expiry, status, recorded_by, approved_by, payment_remarks, email, client_id) FROM stdin;
27	VR1776779409212	2026-04-21	za	4	2000	8000	2026-04-18	t	Approved	initiator	approver	\N	za@gmail.com	\N
6	VR1764731398113	2025-12-03	za	10	1000	10000	2026-12-31	f	Approved	initiator	approver	\N	za@gmail.com	\N
5	VR1764705650967	2025-12-03	miha	300	2000	600000	2026-12-12	t	Approved	initiator	approver	\N	\N	\N
2	VR1764700126857	2025-12-02	ifaliana	10	1000	10000	2026-12-31	t	Approved	initiator	approver	\N	\N	\N
8	VR1764731893227	2025-12-03	soa	40	1000	40000	2026-12-26	f	Pending	initiator	\N	\N	soa@gmail.com	\N
9	VR1765126991399	2025-12-07	Jean	10	1000	10000	2026-12-30	f	Approved	initiator	approver	\N	jean@gmail.com	\N
10	VR1765132847824	2025-12-07	Marie	5	1200	6000	2026-09-01	t	Approved	initiator	approver	\N	marie@gmail.com	\N
11	VR1765167550982	2025-12-08	Yusuf	8	6000	48000	2025-12-26	f	Approved	initiator	approver	\N	msulogistics@gmail.com	\N
12	VR1772998336739	2026-03-08	Paul	2	5000	10000	2026-03-12	t	Approved	initiator	approver	\N	paul@gmail.com	\N
13	VR1774197023133	2026-03-22	Jean	12	1000	12000	2026-06-26	t	Approved	initiator	approver	\N	jean@gmail.com	\N
14	VR1774970978585	2026-03-31	Paul	4	3000	12000	2026-03-17	t	Approved	initiator	approver	\N	paul@gmail.com	\N
15	VR1774971194116	2026-03-31	Messi	3	2000	6000	2026-03-20	t	Approved	initiator	approver	\N	messi@gmail.com	\N
16	VR1774973375783	2026-03-31	Pierre	6	1000	6000	2026-03-14	t	Approved	initiator	approver	\N	pierre@gmail.com	\N
17	VR1774974514643	2026-03-31	za	2	1000	2000	2026-03-27	t	Approved	initiator	approver	\N	za@gmail.com	\N
18	VR1774975100287	2026-03-31	Marie	3	200	600	2027-03-24	t	Approved	initiator	approver	\N	marie@gmail.com	\N
19	VR1774982558384	2026-03-31	Yusuf	3	1000	3000	2026-03-20	t	Approved	initiator	approver	\N	msulogistics@gmail.com	\N
20	VR1774983291578	2026-03-31	Pierre	6	200	1200	2026-03-26	t	Approved	initiator	approver	\N	pierre@gmail.com	\N
21	VR1774983923678	2026-03-31	za	4	900	3600	2026-03-27	t	Approved	initiator	approver	\N	za@gmail.com	\N
22	VR1774985104717	2026-03-31	Messi	5	1000	5000	2026-03-27	t	Approved	initiator	approver	\N	messi@gmail.com	\N
23	VR1775018417556	2026-04-01	Yusuf	2	1000	2000	2026-04-24	t	Approved	initiator	approver	\N	msulogistics@gmail.com	\N
24	VR1775018564637	2026-04-01	Jean	2	3000	6000	2026-04-30	t	Approved	initiator	approver	\N	jean@gmail.com	\N
25	VR1775020710276	2026-04-01	Marie	5	1000	5000	2026-04-16	t	Approved	initiator	approver	\N	marie@gmail.com	\N
26	VR1776746644840	2026-04-21	Pierre	4	2500	10000	2026-04-25	t	Pending	initiator	\N	\N	pierre@gmail.com	\N
\.


--
-- Data for Name: magasins; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.magasins (id, name) FROM stdin;
1	Winners
2	courts
4	Intermart
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.users (id, username, password, email, role) FROM stdin;
1	mahery	maheryadmin	mahery@gmail.com	superadmin
6	Ifaliana	nasser	ifaliana@gmail.com	initiator
\.


--
-- Data for Name: voucher; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.voucher (id, voucher_code, demande_reference, client, amount, validity_date, qr_path, status, created_at, pdf_path) FROM stdin;
6	VCH-1765110076798	VR1764731398113	za	10000	2026-12-31	\N	Redeemed	2025-12-07 16:21:19.370892	/Users/mahery/Documents/vms-project/voucher_VCH-1765110076798.pdf
7	VCH-1765119207099	VR1764705650967	miha	600000	2026-12-12	\N	Redeemed	2025-12-07 18:53:29.672064	/Users/mahery/Documents/vms-project/voucher_VCH-1765119207099.pdf
8	VCH-1765120512340	VR1764700126857	ifaliana	10000	2026-12-31	\N	Redeemed	2025-12-07 19:15:14.979634	/Users/mahery/Documents/vms-project/voucher_VCH-1765120512340.pdf
9	VCH-1765127214764	VR1765126991399	Jean	10000	2026-12-30	\N	Redeemed	2025-12-07 21:06:57.465099	/Users/mahery/Documents/vms-project/voucher_VCH-1765127214764.pdf
12	VCH-1765133021976	VR1765132847824	Marie	6000	2026-09-01	\N	Unused	2025-12-07 22:43:44.543623	/Users/mahery/Documents/vms-project/voucher_VCH-1765133021976.pdf
13	VCH-1765167802283	VR1765167550982	Yusuf	48000	2025-12-26	\N	Unused	2025-12-08 08:23:24.838526	/Users/mahery/Documents/vms-project/voucher_VCH-1765167802283.pdf
14	VCH-1774975276055	VR1774975100287	Marie	600	2027-03-24	\N	Unused	2026-03-31 20:41:29.121159	/Users/mahery/Documents/vms-project/voucher_VCH-1774975276055.pdf
15	VCH-1774983398510	VR1774983291578	Pierre	1200	2026-03-26	\N	Unused	2026-03-31 22:56:40.44494	/Users/mahery/Documents/vms-project/voucher_VCH-1774983398510.pdf
16	VCH-1774984007425	VR1774983923678	za	3600	2026-03-27	\N	Unused	2026-03-31 23:06:49.24436	/Users/mahery/Documents/vms-project/voucher_VCH-1774984007425.pdf
17	VCH-1775020047502	VR1775018564637	Jean	3000	2026-04-30	\N	Unused	2026-04-01 09:07:30.544242	/Users/mahery/Documents/vms-project/voucher_VCH-1775020047502.pdf
18	VCH-1775020785108	VR1775020710276	Marie	1000	2026-04-16	\N	Unused	2026-04-01 09:19:47.367572	/Users/mahery/Documents/vms-project/voucher_VCH-1775020785108.pdf
19	VCH-1776779859328	VR1776779409212	za	2000	2026-04-18	\N	Unused	2026-04-21 17:57:51.750149	/Users/mahery/Documents/vms-project/voucher_VCH-1776779859328.pdf
\.


--
-- Data for Name: redemptions; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.redemptions (id, voucher_id, magasin, user_id, redeemed_at, magasin_id) FROM stdin;
1	7	Magasin A	1	2025-12-07 19:06:00.731852	\N
2	8	1	1	2025-12-07 19:18:35.336473	\N
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: mahery
--

COPY public.roles (id, role_name) FROM stdin;
3	initiator
4	approver
2	admin
1	superadmin
\.


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.client_id_seq', 7, true);


--
-- Name: demande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.demande_id_seq', 27, true);


--
-- Name: magasins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.magasins_id_seq', 5, true);


--
-- Name: redemptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.redemptions_id_seq', 4, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.roles_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: voucher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mahery
--

SELECT pg_catalog.setval('public.voucher_id_seq', 19, true);


--
-- PostgreSQL database dump complete
--

\unrestrict dtOOYGPSoLBtrSstu93YbPBdK00gcW6U3msKHaM1PBku6SQauI0HMsBtjlWi5ea

