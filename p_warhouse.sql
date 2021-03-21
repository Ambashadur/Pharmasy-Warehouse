PGDMP                         y         
   p_warhouse    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 
   p_warhouse    DATABASE     g   CREATE DATABASE p_warhouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE p_warhouse;
                postgres    false            �            1259    16437    medicine_form    TABLE     h   CREATE TABLE public.medicine_form (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 !   DROP TABLE public.medicine_form;
       public         heap    postgres    false            �            1259    16435    medicine_form_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicine_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.medicine_form_id_seq;
       public          postgres    false    203            �           0    0    medicine_form_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medicine_form_id_seq OWNED BY public.medicine_form.id;
          public          postgres    false    202            �            1259    16429    pharmacy_warhouse    TABLE     �   CREATE TABLE public.pharmacy_warhouse (
    id integer NOT NULL,
    opening_hours character varying(11) NOT NULL,
    address character varying(100) NOT NULL
);
 %   DROP TABLE public.pharmacy_warhouse;
       public         heap    postgres    false            �            1259    16427    pharmacy_warhouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pharmacy_warhouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pharmacy_warhouse_id_seq;
       public          postgres    false    201            �           0    0    pharmacy_warhouse_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pharmacy_warhouse_id_seq OWNED BY public.pharmacy_warhouse.id;
          public          postgres    false    200            �            1259    16445    storage_department    TABLE     �   CREATE TABLE public.storage_department (
    id integer NOT NULL,
    name character varying(5) NOT NULL,
    id_medicine_form integer NOT NULL,
    id_pharmacy_warhouse integer NOT NULL
);
 &   DROP TABLE public.storage_department;
       public         heap    postgres    false            �            1259    16443    storage_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.storage_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.storage_department_id_seq;
       public          postgres    false    205            �           0    0    storage_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.storage_department_id_seq OWNED BY public.storage_department.id;
          public          postgres    false    204            /           2604    16440    medicine_form id    DEFAULT     t   ALTER TABLE ONLY public.medicine_form ALTER COLUMN id SET DEFAULT nextval('public.medicine_form_id_seq'::regclass);
 ?   ALTER TABLE public.medicine_form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            .           2604    16432    pharmacy_warhouse id    DEFAULT     |   ALTER TABLE ONLY public.pharmacy_warhouse ALTER COLUMN id SET DEFAULT nextval('public.pharmacy_warhouse_id_seq'::regclass);
 C   ALTER TABLE public.pharmacy_warhouse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            0           2604    16448    storage_department id    DEFAULT     ~   ALTER TABLE ONLY public.storage_department ALTER COLUMN id SET DEFAULT nextval('public.storage_department_id_seq'::regclass);
 D   ALTER TABLE public.storage_department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �          0    16437    medicine_form 
   TABLE DATA           1   COPY public.medicine_form (id, name) FROM stdin;
    public          postgres    false    203   G       �          0    16429    pharmacy_warhouse 
   TABLE DATA           G   COPY public.pharmacy_warhouse (id, opening_hours, address) FROM stdin;
    public          postgres    false    201   �       �          0    16445    storage_department 
   TABLE DATA           ^   COPY public.storage_department (id, name, id_medicine_form, id_pharmacy_warhouse) FROM stdin;
    public          postgres    false    205   !       �           0    0    medicine_form_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.medicine_form_id_seq', 7, true);
          public          postgres    false    202            �           0    0    pharmacy_warhouse_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pharmacy_warhouse_id_seq', 10, true);
          public          postgres    false    200            �           0    0    storage_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.storage_department_id_seq', 10, true);
          public          postgres    false    204            4           2606    16442     medicine_form medicine_form_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.medicine_form
    ADD CONSTRAINT medicine_form_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.medicine_form DROP CONSTRAINT medicine_form_pkey;
       public            postgres    false    203            2           2606    16434 (   pharmacy_warhouse pharmacy_warhouse_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pharmacy_warhouse
    ADD CONSTRAINT pharmacy_warhouse_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pharmacy_warhouse DROP CONSTRAINT pharmacy_warhouse_pkey;
       public            postgres    false    201            6           2606    16450 *   storage_department storage_separtment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_pkey;
       public            postgres    false    205            7           2606    16451 ;   storage_department storage_separtment_id_medicine_form_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_id_medicine_form_fkey FOREIGN KEY (id_medicine_form) REFERENCES public.medicine_form(id);
 e   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_id_medicine_form_fkey;
       public          postgres    false    205    2868    203            8           2606    16456 ?   storage_department storage_separtment_id_pharmacy_warhouse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_id_pharmacy_warhouse_fkey FOREIGN KEY (id_pharmacy_warhouse) REFERENCES public.pharmacy_warhouse(id);
 i   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_id_pharmacy_warhouse_fkey;
       public          postgres    false    2866    201    205            �   �   x�E���0F��� ��e!�H4�� Q��	$3�ۈ�)R�d��w�
��g�g\��L8h�F6N�iF��Ժ�2�5=�j�5��x�+����-��RO�G^&=� *����0��c�pM�.��v�����֪��s��݁q      �     x���MN�0�מS� �N���aJ��ؕJt���*DD��
on��4�Q��ƖG��|�lUum̥3r*�C�i��ƀ���4>x%�>�[�_�vX�S�#�Nd?hD&����6Qn�!���Յ�bb�U�}M�O������JeMl�Û��|+(5Z^i!���H��\��q�?���hq"č@�b��r������T��m���%�f�|}f�%])k#kq�'kTqd�
ے�������_��G���Ǘ�n2"��^      �   b   x��;BAC��^��Lf�E����h��:����[X���У����3�1uw��!��eh��R$ŉ��w��©�{q�Z��f_�\���{!�ԡM     