PGDMP         4            
    z         	   book_data    11.17    14.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385 	   book_data    DATABASE     T   CREATE DATABASE book_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE book_data;
             	   book_user    false            �            1259    16386 	   book_user    TABLE       CREATE TABLE public.book_user (
    user_id character varying(255) NOT NULL,
    passwd character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_shi character varying(255),
    user_mei character varying(255),
    del boolean
);
    DROP TABLE public.book_user;
       public         	   book_user    false            �            1259    16396    books    TABLE       CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(255),
    volume character varying(255),
    author character varying(255),
    publisher character varying(255),
    memo text,
    create_date timestamp with time zone NOT NULL,
    del boolean
);
    DROP TABLE public.books;
       public         	   book_user    false            �            1259    16394    books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public       	   book_user    false    198            �           0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
          public       	   book_user    false    197            $           2604    16399    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public       	   book_user    false    198    197    198            �          0    16386 	   book_user 
   TABLE DATA           T   COPY public.book_user (user_id, passwd, email, user_shi, user_mei, del) FROM stdin;
    public       	   book_user    false    196   �       �          0    16396    books 
   TABLE DATA           \   COPY public.books (id, name, volume, author, publisher, memo, create_date, del) FROM stdin;
    public       	   book_user    false    198   �       �           0    0    books_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.books_id_seq', 1, true);
          public       	   book_user    false    197            &           2606    16393    book_user book_user_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.book_user
    ADD CONSTRAINT book_user_pkey PRIMARY KEY (user_id);
 B   ALTER TABLE ONLY public.book_user DROP CONSTRAINT book_user_pkey;
       public         	   book_user    false    196            (           2606    16404    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         	   book_user    false    198            �   4   x�K��ώ/-N-�4���015+�L23���|�v5��Χ��r�q��qqq NJ�      �   U   x�J ��1	人生初	上巻	孫玉宝	大連		2022-11-01 11:25:03.844968+09	f
\.


c��     