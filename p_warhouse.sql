PGDMP                         y         
   p_warhouse    13.2    13.2 o    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16394 
   p_warhouse    DATABASE     g   CREATE DATABASE p_warhouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE p_warhouse;
                postgres    false            �            1259    16577    contract    TABLE     �   CREATE TABLE public.contract (
    id integer NOT NULL,
    sending_receiving boolean DEFAULT false NOT NULL,
    documents character varying(100) NOT NULL,
    voyage_payment money NOT NULL,
    id_worker integer NOT NULL
);
    DROP TABLE public.contract;
       public         heap    postgres    false            �            1259    16575    contract_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contract_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contract_id_seq;
       public          postgres    false    221            R           0    0    contract_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contract_id_seq OWNED BY public.contract.id;
          public          postgres    false    220            �            1259    16513    department_stores_medicine    TABLE     �   CREATE TABLE public.department_stores_medicine (
    id_medicine integer NOT NULL,
    id_storage_department integer NOT NULL,
    number integer DEFAULT 1 NOT NULL
);
 .   DROP TABLE public.department_stores_medicine;
       public         heap    postgres    false            �            1259    16463    manufacturer_firm    TABLE     �   CREATE TABLE public.manufacturer_firm (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    address character varying(80) NOT NULL
);
 %   DROP TABLE public.manufacturer_firm;
       public         heap    postgres    false            �            1259    16461    manufacturer_firm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.manufacturer_firm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.manufacturer_firm_id_seq;
       public          postgres    false    207            S           0    0    manufacturer_firm_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.manufacturer_firm_id_seq OWNED BY public.manufacturer_firm.id;
          public          postgres    false    206            �            1259    16487    medicine    TABLE     �  CREATE TABLE public.medicine (
    id integer NOT NULL,
    price money NOT NULL,
    name character varying(80) NOT NULL,
    expiration_date date NOT NULL,
    series character varying(5) NOT NULL,
    date_quarantine_zone date,
    return_distruction_date date,
    gross_weight smallint NOT NULL,
    id_medicine_form integer NOT NULL,
    id_manufacturer_firm integer NOT NULL,
    id_storage_method integer NOT NULL,
    id_pharmacological_group integer NOT NULL
);
    DROP TABLE public.medicine;
       public         heap    postgres    false            �            1259    16531    medicine_equipment    TABLE     �   CREATE TABLE public.medicine_equipment (
    id integer NOT NULL,
    price money NOT NULL,
    name character varying(100) NOT NULL
);
 &   DROP TABLE public.medicine_equipment;
       public         heap    postgres    false            �            1259    16529    medicine_equipment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicine_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.medicine_equipment_id_seq;
       public          postgres    false    216            T           0    0    medicine_equipment_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.medicine_equipment_id_seq OWNED BY public.medicine_equipment.id;
          public          postgres    false    215            �            1259    16437    medicine_form    TABLE     h   CREATE TABLE public.medicine_form (
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
       public          postgres    false    203            U           0    0    medicine_form_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medicine_form_id_seq OWNED BY public.medicine_form.id;
          public          postgres    false    202            �            1259    16485    medicine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medicine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.medicine_id_seq;
       public          postgres    false    213            V           0    0    medicine_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.medicine_id_seq OWNED BY public.medicine.id;
          public          postgres    false    212            �            1259    16479    pharmacological_group    TABLE     p   CREATE TABLE public.pharmacological_group (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 )   DROP TABLE public.pharmacological_group;
       public         heap    postgres    false            �            1259    16477    pharmacological_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pharmacological_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pharmacological_group_id_seq;
       public          postgres    false    211            W           0    0    pharmacological_group_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pharmacological_group_id_seq OWNED BY public.pharmacological_group.id;
          public          postgres    false    210            �            1259    16429    pharmacy_warhouse    TABLE     �   CREATE TABLE public.pharmacy_warhouse (
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
       public          postgres    false    201            X           0    0    pharmacy_warhouse_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pharmacy_warhouse_id_seq OWNED BY public.pharmacy_warhouse.id;
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
       public          postgres    false    205            Y           0    0    storage_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.storage_department_id_seq OWNED BY public.storage_department.id;
          public          postgres    false    204            �            1259    16471    storage_method    TABLE     i   CREATE TABLE public.storage_method (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);
 "   DROP TABLE public.storage_method;
       public         heap    postgres    false            �            1259    16469    storage_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.storage_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.storage_method_id_seq;
       public          postgres    false    209            Z           0    0    storage_method_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.storage_method_id_seq OWNED BY public.storage_method.id;
          public          postgres    false    208            �            1259    16591    voyage    TABLE     '  CREATE TABLE public.voyage (
    id integer NOT NULL,
    voyage_number character varying(7) NOT NULL,
    car_number character varying(6) NOT NULL,
    destination_point character varying(70) NOT NULL,
    date_and_time timestamp without time zone NOT NULL,
    id_contract integer NOT NULL
);
    DROP TABLE public.voyage;
       public         heap    postgres    false            �            1259    16589    voyage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.voyage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.voyage_id_seq;
       public          postgres    false    223            [           0    0    voyage_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.voyage_id_seq OWNED BY public.voyage.id;
          public          postgres    false    222            �            1259    16648    voyage_transports_m_equipment    TABLE     �   CREATE TABLE public.voyage_transports_m_equipment (
    id_voyage integer NOT NULL,
    id_p_warehouse integer NOT NULL,
    id_m_equipment integer NOT NULL,
    number integer NOT NULL,
    in_out boolean DEFAULT true
);
 1   DROP TABLE public.voyage_transports_m_equipment;
       public         heap    postgres    false            �            1259    16664    voyage_transports_medicine    TABLE     �   CREATE TABLE public.voyage_transports_medicine (
    id_voyage integer NOT NULL,
    id_medicine integer NOT NULL,
    id_storage_department integer NOT NULL,
    number integer DEFAULT 1 NOT NULL,
    in_out boolean DEFAULT true NOT NULL
);
 .   DROP TABLE public.voyage_transports_medicine;
       public         heap    postgres    false            �            1259    16537    warhouse_stores_m_equipment    TABLE     �   CREATE TABLE public.warhouse_stores_m_equipment (
    id_pharmacy_warhouse integer NOT NULL,
    id_medicine_equipment integer NOT NULL,
    number integer DEFAULT 1 NOT NULL
);
 /   DROP TABLE public.warhouse_stores_m_equipment;
       public         heap    postgres    false            �            1259    16555    worker    TABLE     �   CREATE TABLE public.worker (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    surname character varying(30) NOT NULL,
    "position" character varying(50) NOT NULL,
    id_warhouse integer NOT NULL
);
    DROP TABLE public.worker;
       public         heap    postgres    false            �            1259    16553    worker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.worker_id_seq;
       public          postgres    false    219            \           0    0    worker_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.worker_id_seq OWNED BY public.worker.id;
          public          postgres    false    218            y           2604    16580    contract id    DEFAULT     j   ALTER TABLE ONLY public.contract ALTER COLUMN id SET DEFAULT nextval('public.contract_id_seq'::regclass);
 :   ALTER TABLE public.contract ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            q           2604    16466    manufacturer_firm id    DEFAULT     |   ALTER TABLE ONLY public.manufacturer_firm ALTER COLUMN id SET DEFAULT nextval('public.manufacturer_firm_id_seq'::regclass);
 C   ALTER TABLE public.manufacturer_firm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            t           2604    16490    medicine id    DEFAULT     j   ALTER TABLE ONLY public.medicine ALTER COLUMN id SET DEFAULT nextval('public.medicine_id_seq'::regclass);
 :   ALTER TABLE public.medicine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            v           2604    16534    medicine_equipment id    DEFAULT     ~   ALTER TABLE ONLY public.medicine_equipment ALTER COLUMN id SET DEFAULT nextval('public.medicine_equipment_id_seq'::regclass);
 D   ALTER TABLE public.medicine_equipment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            o           2604    16440    medicine_form id    DEFAULT     t   ALTER TABLE ONLY public.medicine_form ALTER COLUMN id SET DEFAULT nextval('public.medicine_form_id_seq'::regclass);
 ?   ALTER TABLE public.medicine_form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            s           2604    16482    pharmacological_group id    DEFAULT     �   ALTER TABLE ONLY public.pharmacological_group ALTER COLUMN id SET DEFAULT nextval('public.pharmacological_group_id_seq'::regclass);
 G   ALTER TABLE public.pharmacological_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            n           2604    16432    pharmacy_warhouse id    DEFAULT     |   ALTER TABLE ONLY public.pharmacy_warhouse ALTER COLUMN id SET DEFAULT nextval('public.pharmacy_warhouse_id_seq'::regclass);
 C   ALTER TABLE public.pharmacy_warhouse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            p           2604    16448    storage_department id    DEFAULT     ~   ALTER TABLE ONLY public.storage_department ALTER COLUMN id SET DEFAULT nextval('public.storage_department_id_seq'::regclass);
 D   ALTER TABLE public.storage_department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            r           2604    16474    storage_method id    DEFAULT     v   ALTER TABLE ONLY public.storage_method ALTER COLUMN id SET DEFAULT nextval('public.storage_method_id_seq'::regclass);
 @   ALTER TABLE public.storage_method ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            {           2604    16594 	   voyage id    DEFAULT     f   ALTER TABLE ONLY public.voyage ALTER COLUMN id SET DEFAULT nextval('public.voyage_id_seq'::regclass);
 8   ALTER TABLE public.voyage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            x           2604    16558 	   worker id    DEFAULT     f   ALTER TABLE ONLY public.worker ALTER COLUMN id SET DEFAULT nextval('public.worker_id_seq'::regclass);
 8   ALTER TABLE public.worker ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            G          0    16577    contract 
   TABLE DATA           _   COPY public.contract (id, sending_receiving, documents, voyage_payment, id_worker) FROM stdin;
    public          postgres    false    221   4�       @          0    16513    department_stores_medicine 
   TABLE DATA           `   COPY public.department_stores_medicine (id_medicine, id_storage_department, number) FROM stdin;
    public          postgres    false    214   `�       9          0    16463    manufacturer_firm 
   TABLE DATA           >   COPY public.manufacturer_firm (id, name, address) FROM stdin;
    public          postgres    false    207   ��       ?          0    16487    medicine 
   TABLE DATA           �   COPY public.medicine (id, price, name, expiration_date, series, date_quarantine_zone, return_distruction_date, gross_weight, id_medicine_form, id_manufacturer_firm, id_storage_method, id_pharmacological_group) FROM stdin;
    public          postgres    false    213   �       B          0    16531    medicine_equipment 
   TABLE DATA           =   COPY public.medicine_equipment (id, price, name) FROM stdin;
    public          postgres    false    216   k�       5          0    16437    medicine_form 
   TABLE DATA           1   COPY public.medicine_form (id, name) FROM stdin;
    public          postgres    false    203   ��       =          0    16479    pharmacological_group 
   TABLE DATA           9   COPY public.pharmacological_group (id, name) FROM stdin;
    public          postgres    false    211   6�       3          0    16429    pharmacy_warhouse 
   TABLE DATA           G   COPY public.pharmacy_warhouse (id, opening_hours, address) FROM stdin;
    public          postgres    false    201   :�       7          0    16445    storage_department 
   TABLE DATA           ^   COPY public.storage_department (id, name, id_medicine_form, id_pharmacy_warhouse) FROM stdin;
    public          postgres    false    205   M�       ;          0    16471    storage_method 
   TABLE DATA           2   COPY public.storage_method (id, name) FROM stdin;
    public          postgres    false    209   ��       I          0    16591    voyage 
   TABLE DATA           n   COPY public.voyage (id, voyage_number, car_number, destination_point, date_and_time, id_contract) FROM stdin;
    public          postgres    false    223   �       J          0    16648    voyage_transports_m_equipment 
   TABLE DATA           r   COPY public.voyage_transports_m_equipment (id_voyage, id_p_warehouse, id_m_equipment, number, in_out) FROM stdin;
    public          postgres    false    224   Λ       K          0    16664    voyage_transports_medicine 
   TABLE DATA           s   COPY public.voyage_transports_medicine (id_voyage, id_medicine, id_storage_department, number, in_out) FROM stdin;
    public          postgres    false    225   '�       C          0    16537    warhouse_stores_m_equipment 
   TABLE DATA           j   COPY public.warhouse_stores_m_equipment (id_pharmacy_warhouse, id_medicine_equipment, number) FROM stdin;
    public          postgres    false    217   ��       E          0    16555    worker 
   TABLE DATA           L   COPY public.worker (id, name, surname, "position", id_warhouse) FROM stdin;
    public          postgres    false    219   ќ       ]           0    0    contract_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contract_id_seq', 10, true);
          public          postgres    false    220            ^           0    0    manufacturer_firm_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.manufacturer_firm_id_seq', 10, true);
          public          postgres    false    206            _           0    0    medicine_equipment_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.medicine_equipment_id_seq', 10, true);
          public          postgres    false    215            `           0    0    medicine_form_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.medicine_form_id_seq', 7, true);
          public          postgres    false    202            a           0    0    medicine_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.medicine_id_seq', 10, true);
          public          postgres    false    212            b           0    0    pharmacological_group_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pharmacological_group_id_seq', 12, true);
          public          postgres    false    210            c           0    0    pharmacy_warhouse_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pharmacy_warhouse_id_seq', 10, true);
          public          postgres    false    200            d           0    0    storage_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.storage_department_id_seq', 10, true);
          public          postgres    false    204            e           0    0    storage_method_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.storage_method_id_seq', 4, true);
          public          postgres    false    208            f           0    0    voyage_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.voyage_id_seq', 10, true);
          public          postgres    false    222            g           0    0    worker_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.worker_id_seq', 10, true);
          public          postgres    false    218            �           2606    16583    contract contract_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public            postgres    false    221            �           2606    16518 :   department_stores_medicine department_stores_medicine_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.department_stores_medicine
    ADD CONSTRAINT department_stores_medicine_pkey PRIMARY KEY (id_medicine, id_storage_department);
 d   ALTER TABLE ONLY public.department_stores_medicine DROP CONSTRAINT department_stores_medicine_pkey;
       public            postgres    false    214    214            �           2606    16468 (   manufacturer_firm manufacturer_firm_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.manufacturer_firm
    ADD CONSTRAINT manufacturer_firm_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.manufacturer_firm DROP CONSTRAINT manufacturer_firm_pkey;
       public            postgres    false    207            �           2606    16536 *   medicine_equipment medicine_equipment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.medicine_equipment
    ADD CONSTRAINT medicine_equipment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.medicine_equipment DROP CONSTRAINT medicine_equipment_pkey;
       public            postgres    false    216            �           2606    16442     medicine_form medicine_form_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.medicine_form
    ADD CONSTRAINT medicine_form_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.medicine_form DROP CONSTRAINT medicine_form_pkey;
       public            postgres    false    203            �           2606    16492    medicine medicine_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.medicine DROP CONSTRAINT medicine_pkey;
       public            postgres    false    213            �           2606    16484 0   pharmacological_group pharmacological_group_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.pharmacological_group
    ADD CONSTRAINT pharmacological_group_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pharmacological_group DROP CONSTRAINT pharmacological_group_pkey;
       public            postgres    false    211            �           2606    16434 (   pharmacy_warhouse pharmacy_warhouse_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pharmacy_warhouse
    ADD CONSTRAINT pharmacy_warhouse_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pharmacy_warhouse DROP CONSTRAINT pharmacy_warhouse_pkey;
       public            postgres    false    201            �           2606    16476 "   storage_method storage_method_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.storage_method
    ADD CONSTRAINT storage_method_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.storage_method DROP CONSTRAINT storage_method_pkey;
       public            postgres    false    209            �           2606    16450 *   storage_department storage_separtment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_pkey;
       public            postgres    false    205            �           2606    16596    voyage voyage_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.voyage
    ADD CONSTRAINT voyage_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.voyage DROP CONSTRAINT voyage_pkey;
       public            postgres    false    223            �           2606    16653 @   voyage_transports_m_equipment voyage_transports_m_equipment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.voyage_transports_m_equipment
    ADD CONSTRAINT voyage_transports_m_equipment_pkey PRIMARY KEY (id_voyage, id_p_warehouse, id_m_equipment);
 j   ALTER TABLE ONLY public.voyage_transports_m_equipment DROP CONSTRAINT voyage_transports_m_equipment_pkey;
       public            postgres    false    224    224    224            �           2606    16670 :   voyage_transports_medicine voyage_transports_medicine_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.voyage_transports_medicine
    ADD CONSTRAINT voyage_transports_medicine_pkey PRIMARY KEY (id_voyage, id_medicine, id_storage_department);
 d   ALTER TABLE ONLY public.voyage_transports_medicine DROP CONSTRAINT voyage_transports_medicine_pkey;
       public            postgres    false    225    225    225            �           2606    16625 [   warhouse_stores_m_equipment warhouse_stores_m_equipment_id_pharmacy_warhouse_id_medicin_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.warhouse_stores_m_equipment
    ADD CONSTRAINT warhouse_stores_m_equipment_id_pharmacy_warhouse_id_medicin_key UNIQUE (id_pharmacy_warhouse, id_medicine_equipment);
 �   ALTER TABLE ONLY public.warhouse_stores_m_equipment DROP CONSTRAINT warhouse_stores_m_equipment_id_pharmacy_warhouse_id_medicin_key;
       public            postgres    false    217    217            �           2606    16542 <   warhouse_stores_m_equipment warhouse_stores_m_equipment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.warhouse_stores_m_equipment
    ADD CONSTRAINT warhouse_stores_m_equipment_pkey PRIMARY KEY (id_pharmacy_warhouse, id_medicine_equipment);
 f   ALTER TABLE ONLY public.warhouse_stores_m_equipment DROP CONSTRAINT warhouse_stores_m_equipment_pkey;
       public            postgres    false    217    217            �           2606    16560    worker worker_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_pkey;
       public            postgres    false    219            �           2606    16584     contract contract_id_worker_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_id_worker_fkey FOREIGN KEY (id_worker) REFERENCES public.worker(id);
 J   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_id_worker_fkey;
       public          postgres    false    2966    221    219            �           2606    16519 F   department_stores_medicine department_stores_medicine_id_medicine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_stores_medicine
    ADD CONSTRAINT department_stores_medicine_id_medicine_fkey FOREIGN KEY (id_medicine) REFERENCES public.medicine(id);
 p   ALTER TABLE ONLY public.department_stores_medicine DROP CONSTRAINT department_stores_medicine_id_medicine_fkey;
       public          postgres    false    213    2956    214            �           2606    16524 P   department_stores_medicine department_stores_medicine_id_storage_department_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_stores_medicine
    ADD CONSTRAINT department_stores_medicine_id_storage_department_fkey FOREIGN KEY (id_storage_department) REFERENCES public.storage_department(id);
 z   ALTER TABLE ONLY public.department_stores_medicine DROP CONSTRAINT department_stores_medicine_id_storage_department_fkey;
       public          postgres    false    2948    205    214            �           2606    16498 +   medicine medicine_id_manufacturer_firm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_id_manufacturer_firm_fkey FOREIGN KEY (id_manufacturer_firm) REFERENCES public.manufacturer_firm(id);
 U   ALTER TABLE ONLY public.medicine DROP CONSTRAINT medicine_id_manufacturer_firm_fkey;
       public          postgres    false    213    2950    207            �           2606    16493 '   medicine medicine_id_medicine_form_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_id_medicine_form_fkey FOREIGN KEY (id_medicine_form) REFERENCES public.medicine_form(id);
 Q   ALTER TABLE ONLY public.medicine DROP CONSTRAINT medicine_id_medicine_form_fkey;
       public          postgres    false    203    2946    213            �           2606    16508 /   medicine medicine_id_pharmacological_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_id_pharmacological_group_fkey FOREIGN KEY (id_pharmacological_group) REFERENCES public.pharmacological_group(id);
 Y   ALTER TABLE ONLY public.medicine DROP CONSTRAINT medicine_id_pharmacological_group_fkey;
       public          postgres    false    213    211    2954            �           2606    16503 (   medicine medicine_id_storage_method_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicine
    ADD CONSTRAINT medicine_id_storage_method_fkey FOREIGN KEY (id_storage_method) REFERENCES public.storage_method(id);
 R   ALTER TABLE ONLY public.medicine DROP CONSTRAINT medicine_id_storage_method_fkey;
       public          postgres    false    213    209    2952            �           2606    16451 ;   storage_department storage_separtment_id_medicine_form_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_id_medicine_form_fkey FOREIGN KEY (id_medicine_form) REFERENCES public.medicine_form(id);
 e   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_id_medicine_form_fkey;
       public          postgres    false    2946    205    203            �           2606    16456 ?   storage_department storage_separtment_id_pharmacy_warhouse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.storage_department
    ADD CONSTRAINT storage_separtment_id_pharmacy_warhouse_fkey FOREIGN KEY (id_pharmacy_warhouse) REFERENCES public.pharmacy_warhouse(id);
 i   ALTER TABLE ONLY public.storage_department DROP CONSTRAINT storage_separtment_id_pharmacy_warhouse_fkey;
       public          postgres    false    201    2944    205            �           2606    16597    voyage voyage_id_contract_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.voyage
    ADD CONSTRAINT voyage_id_contract_fkey FOREIGN KEY (id_contract) REFERENCES public.contract(id);
 H   ALTER TABLE ONLY public.voyage DROP CONSTRAINT voyage_id_contract_fkey;
       public          postgres    false    223    221    2968            �           2606    16659 ]   voyage_transports_m_equipment voyage_transports_m_equipment_id_p_warehouse_id_m_equipmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.voyage_transports_m_equipment
    ADD CONSTRAINT voyage_transports_m_equipment_id_p_warehouse_id_m_equipmen_fkey FOREIGN KEY (id_p_warehouse, id_m_equipment) REFERENCES public.warhouse_stores_m_equipment(id_pharmacy_warhouse, id_medicine_equipment);
 �   ALTER TABLE ONLY public.voyage_transports_m_equipment DROP CONSTRAINT voyage_transports_m_equipment_id_p_warehouse_id_m_equipmen_fkey;
       public          postgres    false    2964    224    217    217    224            �           2606    16654 J   voyage_transports_m_equipment voyage_transports_m_equipment_id_voyage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.voyage_transports_m_equipment
    ADD CONSTRAINT voyage_transports_m_equipment_id_voyage_fkey FOREIGN KEY (id_voyage) REFERENCES public.voyage(id);
 t   ALTER TABLE ONLY public.voyage_transports_m_equipment DROP CONSTRAINT voyage_transports_m_equipment_id_voyage_fkey;
       public          postgres    false    2970    224    223            �           2606    16676 Z   voyage_transports_medicine voyage_transports_medicine_id_medicine_id_storage_departme_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY public.voyage_transports_medicine
    ADD CONSTRAINT voyage_transports_medicine_id_medicine_id_storage_departme_fkey FOREIGN KEY (id_medicine, id_storage_department) REFERENCES public.department_stores_medicine(id_medicine, id_storage_department);
 �   ALTER TABLE ONLY public.voyage_transports_medicine DROP CONSTRAINT voyage_transports_medicine_id_medicine_id_storage_departme_fkey;
       public          postgres    false    225    214    214    2958    225            �           2606    16671 D   voyage_transports_medicine voyage_transports_medicine_id_voyage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.voyage_transports_medicine
    ADD CONSTRAINT voyage_transports_medicine_id_voyage_fkey FOREIGN KEY (id_voyage) REFERENCES public.voyage(id);
 n   ALTER TABLE ONLY public.voyage_transports_medicine DROP CONSTRAINT voyage_transports_medicine_id_voyage_fkey;
       public          postgres    false    223    225    2970            �           2606    16548 R   warhouse_stores_m_equipment warhouse_stores_m_equipment_id_medicine_equipment_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.warhouse_stores_m_equipment
    ADD CONSTRAINT warhouse_stores_m_equipment_id_medicine_equipment_fkey FOREIGN KEY (id_medicine_equipment) REFERENCES public.medicine_equipment(id);
 |   ALTER TABLE ONLY public.warhouse_stores_m_equipment DROP CONSTRAINT warhouse_stores_m_equipment_id_medicine_equipment_fkey;
       public          postgres    false    216    2960    217            �           2606    16543 Q   warhouse_stores_m_equipment warhouse_stores_m_equipment_id_pharmacy_warhouse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.warhouse_stores_m_equipment
    ADD CONSTRAINT warhouse_stores_m_equipment_id_pharmacy_warhouse_fkey FOREIGN KEY (id_pharmacy_warhouse) REFERENCES public.pharmacy_warhouse(id);
 {   ALTER TABLE ONLY public.warhouse_stores_m_equipment DROP CONSTRAINT warhouse_stores_m_equipment_id_pharmacy_warhouse_fkey;
       public          postgres    false    2944    201    217            �           2606    16570    worker worker_id_warhouse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_id_warhouse_fkey FOREIGN KEY (id_warhouse) REFERENCES public.pharmacy_warhouse(id);
 H   ALTER TABLE ONLY public.worker DROP CONSTRAINT worker_id_warhouse_fkey;
       public          postgres    false    201    219    2944            G     x���MN�0�מS� Ue�iW�란Ж���U/��BR�'x�3�I`%�y�߼�U�
[T�ʯ��5�(�J�F��*|s�/�G�l~~4ƌ��se)�+o����m>�o|r���G4�4?��0p��F���P���l,�.6R�H(U��C�p�,9�4PN��$a�{e�%�淃V��[[�y�0�;�0�������c�4�v��*�7�F����!چ�.����o>6��ɔf����o~����挬X�@Zi�?6t1&�w[�      @   A   x���� Cѳ�0�$�]��%�'}ˡ��
���Zf]ʤR���}c�x�������[
�      9   -  x�]��J�@��g����]V��P+u�fH(rٷ��Q�֍�P-.\�Hl�<�?o�i��&$3_����DxC��xE�C�A��0�R����+s��L?��(���5��Ix4rd�1�d���1��&�\O2�:��CvL�#=F�5��*���'� �]��ئ��'���B__�1��Xٙ�[kܡJ�Q=2���3|3��oi��RMz�Q�,�a������=�9w�(0��]f���u���$�b�O����(X&p}9��[m��:+�[u(�;-���{�[ʓ���/ք�	�n      ?   m  x�]��J1�ϓ���d&���Iz�Q�*�Ї�U<y��
�B��m�����3��m����2���Bx�waqa��d�A^p��
�ѹ,�`� Q�a:qX�iXƧ���ʏ.�&9_Dl���2�?Ü�����厜4Y��B*�A�i�����4��*�K��V6q*>%�R4N����[o�-B��B�bw*�S�װb$b�7Tq��B�~ϡO��9dEy�N�QǙ��J�ĉ�ك՘��W4�yq6W9��ƨ���9��)kXݠu�?������3��ٙ����qE۞�Ht�F��;��f��� $AȽO��Ku���BnK�+����� �mG����.}���i~��@)����      B     x�uQ1N�@�o_q t�1�����;	 �HG@Q�V������9[&qA�w�����\d��2qn�9{j���Q�DS�x�t�G�B�Zg(����T���j�)�'X�KlF��%>�6��Q�m1����F�@�Ғ�ᮜ���:4�s�p�L�t
X�&+ۡ��u0�J+-Ol\����NB�Ԇa��H���v�>�T��	�u��锶��M����Ȋ�sA��������L�rb��� :��J"g�;��g���tq "���      5   �   x�E���0F��� ��e!�H4�� Q��	$3�ۈ�)R�d��w�
��g�g\��L8h�F6N�iF��Ժ�2�5=�j�5��x�+����-��RO�G^&=� *����0��c�pM�.��v�����֪��s��݁q      =   �   x��RIn�@<ϼ�/@1KH��c��@N�C	|a�3�c�|��G�ns!
ɲ5յM˩�%�d�$�%:�he��Ȋǈo~3~�'� <(�#ؐEN����3�K�B�~������:��d�f+���I�9|н���}��g٥f³�5:Z+ZY^kùç�!�D�3G��/_d�����:��y��>9[f�6�i��MQ�W��em�#���^C7Qҫ�Z߀��]���ꋑ���j�      3     x���MN�0�מS� �N���aJ��ؕJt���*DD��
on��4�Q��ƖG��|�lUum̥3r*�C�i��ƀ���4>x%�>�[�_�vX�S�#�Nd?hD&����6Qn�!���Յ�bb�U�}M�O������JeMl�Û��|+(5Z^i!���H��\��q�?���hq"č@�b��r������T��m���%�f�|}f�%])k#kq�'kTqd�
ے�������_��G���Ǘ�n2"��^      7   b   x��;BAC��^��Lf�E����h��:����[X���У����3�1uw��!��eh��R$ŉ��w��©�{q�Z��f_�\���{!�ԡM      ;   N   x�3�0���x�Ş{/v_��e�a��1��@�-@�[/6^�d��2ἰ�bӅ�v�۠jc���� �_8�      I   �  x�Uұ�1�z�~ 6�{�vj@(��a �������~r��&��o���N��(�b����<Iĝw =����!/e��`峬���d#�����A��{de3���������b�#��0�VS��:�P��}^H/�y��/��'�]Ẇ��T86�%�"1Ȋ8�&��O�'��χ���d+Vh�,�b9�����h������j��}�Xwޑ�%?w�M/����2D�:��НB��#8U��۲c[8�0[ƒ�5<g�cH�iwy������R~k����R�|Cl�+Tg<�4f� %Mvn����aJvUU��k��@�Dx��t�L������5��-Ć����M�7c����q����S����_�A2��x�Sׂ���|#�J��=����A��.���羝n�ۙ1��M/T      J   I   x�-�K�@B�pc?3�]\�	�c^C	���XLib�ai�Xli#v���	S���;a��L���T��H�^��      K   Q   x����0�K1c��
��Dx�c�Ӊ±J����W�]��cA��p0�d`2��R؛p����4��꽏�����      C   9   x����0��n1(���B�u`YcY.�ip<m�y+�%q�Y5��f�ߥ�'��      E   �   x�uQ�N�P]�|���?�@��aa4���T����7��#�\ &��I��6<c���R��ól�z�,�G�%Ҏ`�kN��� x�{|�A��.M-��-P
^��2C.��-�Lu;�jO�djœ %xp A�{p�����rAYn����)�{�e}0>Ⱦ�sVؼN�P�t.��K��2��u$xAF�v(�Ay�c�t,�d��"�䓞8vW�5j;��xz�-B�/P5���޴T��1u     