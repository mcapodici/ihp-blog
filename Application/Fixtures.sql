

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('fcbd2232-cdc2-4d0c-9312-1fd94448d90a', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-11-27 09:28:22.684702+11');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('e3177212-2a41-4df3-be1c-7f09f1b7c24c', 'Newest post', '# BIG

This is a good post  

With a [link](https://google.com) to google', '2021-11-27 09:29:05.556515+11');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('54611135-2bda-41a2-90e1-7ed4bbd74d87', 'e3177212-2a41-4df3-be1c-7f09f1b7c24c', 'Martin', 'Hello Comment');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('b968e91d-0214-4608-979b-f5c804ae2bb2', 'e3177212-2a41-4df3-be1c-7f09f1b7c24c', 'James', 'fROG');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


