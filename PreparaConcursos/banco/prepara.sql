PGDMP     "    1    
        	    u            prepara    9.6.2    9.6.2     X	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Y	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Z	           1262    16422    prepara    DATABASE     e   CREATE DATABASE prepara WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE prepara;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            [	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12655    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            \	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16425 	   concursos    TABLE     z   CREATE TABLE concursos (
    id integer NOT NULL,
    nome character varying NOT NULL,
    descricao character varying
);
    DROP TABLE public.concursos;
       public         postgres    false    3            �            1259    16423    concursos_id_seq    SEQUENCE     r   CREATE SEQUENCE concursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.concursos_id_seq;
       public       postgres    false    186    3            ]	           0    0    concursos_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE concursos_id_seq OWNED BY concursos.id;
            public       postgres    false    185            �           2604    16428    concursos id    DEFAULT     ^   ALTER TABLE ONLY concursos ALTER COLUMN id SET DEFAULT nextval('concursos_id_seq'::regclass);
 ;   ALTER TABLE public.concursos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186            U	          0    16425 	   concursos 
   TABLE DATA                     public       postgres    false    186          ^	           0    0    concursos_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('concursos_id_seq', 4, true);
            public       postgres    false    185            �           2606    16433    concursos concursos_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY concursos
    ADD CONSTRAINT concursos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.concursos DROP CONSTRAINT concursos_pkey;
       public         postgres    false    186    186            U	   �   x�����1��y�ө��t[��0 ��h��D	8�C��Y���m^lgL�q-�.��|�K���e�$��d��216��:^�����Iܪ��U��݉�L �c�;J����8�ғ�(���Ӵ�Y�LPB>WX�+�����}٠n�-&$����2}������V{�_�"��m�W;>�w�[��_��]�i*>��!�B͕�>ғ^�8쪁     