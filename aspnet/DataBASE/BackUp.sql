PGDMP                          |            medProfi    15.4    15.3 M    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    84193    medProfi    DATABASE     ~   CREATE DATABASE "medProfi" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "medProfi";
                postgres    false            �            1259    84194    client    TABLE     �  CREATE TABLE public.client (
    id integer NOT NULL,
    lastname character varying(50),
    name character varying(50),
    midname character varying(50),
    photo_path text,
    gender boolean,
    birth_date date,
    age integer,
    phone character varying(50),
    adress text,
    passport character varying(11),
    snils character varying(50),
    email character varying(50)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    84199    client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false    214            \           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
          public          postgres    false    215            �            1259    84200    doctor    TABLE     |   CREATE TABLE public.doctor (
    id integer NOT NULL,
    name text,
    login text,
    password text,
    role integer
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    84205    doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.doctor_id_seq;
       public          postgres    false    216            ]           0    0    doctor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;
          public          postgres    false    217            �            1259    84206    list_med_event    TABLE     �   CREATE TABLE public.list_med_event (
    id integer NOT NULL,
    price double precision,
    id_type integer,
    name text
);
 "   DROP TABLE public.list_med_event;
       public         heap    postgres    false            �            1259    84211    list_med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.list_med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.list_med_event_id_seq;
       public          postgres    false    218            ^           0    0    list_med_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.list_med_event_id_seq OWNED BY public.list_med_event.id;
          public          postgres    false    219            �            1259    84212 
   list_roles    TABLE     K   CREATE TABLE public.list_roles (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.list_roles;
       public         heap    postgres    false            �            1259    84217    list_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.list_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.list_roles_id_seq;
       public          postgres    false    220            _           0    0    list_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.list_roles_id_seq OWNED BY public.list_roles.id;
          public          postgres    false    221            �            1259    84218    med_card    TABLE       CREATE TABLE public.med_card (
    id integer NOT NULL,
    id_client integer,
    num_polis bigint,
    type_polis character varying(50),
    date_get date,
    date_last_msg date,
    date_next_visit date,
    diagnoz text,
    doc_history text,
    id_gostopoliz integer
);
    DROP TABLE public.med_card;
       public         heap    postgres    false            �            1259    84223    med_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.med_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.med_card_id_seq;
       public          postgres    false    222            `           0    0    med_card_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.med_card_id_seq OWNED BY public.med_card.id;
          public          postgres    false    223            �            1259    84224 	   med_event    TABLE     �   CREATE TABLE public.med_event (
    id integer NOT NULL,
    id_client integer,
    date date DEFAULT CURRENT_DATE,
    doctor character varying(100),
    id_event integer,
    result_event text,
    result_review text
);
    DROP TABLE public.med_event;
       public         heap    postgres    false            �            1259    84230    med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.med_event_id_seq;
       public          postgres    false    224            a           0    0    med_event_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.med_event_id_seq OWNED BY public.med_event.id;
          public          postgres    false    225            �            1259    84231    room    TABLE     E   CREATE TABLE public.room (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    84236    room_control    TABLE     4   CREATE TABLE public.room_control (
    name text
);
     DROP TABLE public.room_control;
       public         heap    postgres    false            �            1259    84241    room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public          postgres    false    226            b           0    0    room_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;
          public          postgres    false    228            �            1259    84242    time_table_med    TABLE     �   CREATE TABLE public.time_table_med (
    id integer NOT NULL,
    id_doctor integer,
    date date,
    room_rent integer,
    id_type_event integer,
    why_rent_room text
);
 "   DROP TABLE public.time_table_med;
       public         heap    postgres    false            �            1259    84247    time_table_med_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_table_med_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.time_table_med_id_seq;
       public          postgres    false    229            c           0    0    time_table_med_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.time_table_med_id_seq OWNED BY public.time_table_med.id;
          public          postgres    false    230            �            1259    84248    type_med_event    TABLE     O   CREATE TABLE public.type_med_event (
    id integer NOT NULL,
    name text
);
 "   DROP TABLE public.type_med_event;
       public         heap    postgres    false            �            1259    84253    type_med_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_med_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.type_med_event_id_seq;
       public          postgres    false    231            d           0    0    type_med_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.type_med_event_id_seq OWNED BY public.type_med_event.id;
          public          postgres    false    232            �           2604    84254 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    84255 	   doctor id    DEFAULT     f   ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);
 8   ALTER TABLE public.doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    84256    list_med_event id    DEFAULT     v   ALTER TABLE ONLY public.list_med_event ALTER COLUMN id SET DEFAULT nextval('public.list_med_event_id_seq'::regclass);
 @   ALTER TABLE public.list_med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    84257    list_roles id    DEFAULT     n   ALTER TABLE ONLY public.list_roles ALTER COLUMN id SET DEFAULT nextval('public.list_roles_id_seq'::regclass);
 <   ALTER TABLE public.list_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    84258    med_card id    DEFAULT     j   ALTER TABLE ONLY public.med_card ALTER COLUMN id SET DEFAULT nextval('public.med_card_id_seq'::regclass);
 :   ALTER TABLE public.med_card ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    84259    med_event id    DEFAULT     l   ALTER TABLE ONLY public.med_event ALTER COLUMN id SET DEFAULT nextval('public.med_event_id_seq'::regclass);
 ;   ALTER TABLE public.med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    84260    room id    DEFAULT     b   ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    226            �           2604    84261    time_table_med id    DEFAULT     v   ALTER TABLE ONLY public.time_table_med ALTER COLUMN id SET DEFAULT nextval('public.time_table_med_id_seq'::regclass);
 @   ALTER TABLE public.time_table_med ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    84262    type_med_event id    DEFAULT     v   ALTER TABLE ONLY public.type_med_event ALTER COLUMN id SET DEFAULT nextval('public.type_med_event_id_seq'::regclass);
 @   ALTER TABLE public.type_med_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            C          0    84194    client 
   TABLE DATA           �   COPY public.client (id, lastname, name, midname, photo_path, gender, birth_date, age, phone, adress, passport, snils, email) FROM stdin;
    public          postgres    false    214   SV       E          0    84200    doctor 
   TABLE DATA           A   COPY public.doctor (id, name, login, password, role) FROM stdin;
    public          postgres    false    216   �w       G          0    84206    list_med_event 
   TABLE DATA           B   COPY public.list_med_event (id, price, id_type, name) FROM stdin;
    public          postgres    false    218   nx       I          0    84212 
   list_roles 
   TABLE DATA           .   COPY public.list_roles (id, name) FROM stdin;
    public          postgres    false    220   /y       K          0    84218    med_card 
   TABLE DATA           �   COPY public.med_card (id, id_client, num_polis, type_polis, date_get, date_last_msg, date_next_visit, diagnoz, doc_history, id_gostopoliz) FROM stdin;
    public          postgres    false    222   �y       M          0    84224 	   med_event 
   TABLE DATA           g   COPY public.med_event (id, id_client, date, doctor, id_event, result_event, result_review) FROM stdin;
    public          postgres    false    224   |�       O          0    84231    room 
   TABLE DATA           (   COPY public.room (id, name) FROM stdin;
    public          postgres    false    226   �       P          0    84236    room_control 
   TABLE DATA           ,   COPY public.room_control (name) FROM stdin;
    public          postgres    false    227   `�       R          0    84242    time_table_med 
   TABLE DATA           f   COPY public.time_table_med (id, id_doctor, date, room_rent, id_type_event, why_rent_room) FROM stdin;
    public          postgres    false    229   ��       T          0    84248    type_med_event 
   TABLE DATA           2   COPY public.type_med_event (id, name) FROM stdin;
    public          postgres    false    231   ��       e           0    0    client_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.client_id_seq', 1, true);
          public          postgres    false    215            f           0    0    doctor_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.doctor_id_seq', 6, true);
          public          postgres    false    217            g           0    0    list_med_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.list_med_event_id_seq', 5, true);
          public          postgres    false    219            h           0    0    list_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.list_roles_id_seq', 3, true);
          public          postgres    false    221            i           0    0    med_card_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.med_card_id_seq', 1, false);
          public          postgres    false    223            j           0    0    med_event_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.med_event_id_seq', 1, false);
          public          postgres    false    225            k           0    0    room_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.room_id_seq', 11, true);
          public          postgres    false    228            l           0    0    time_table_med_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.time_table_med_id_seq', 10, true);
          public          postgres    false    230            m           0    0    type_med_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.type_med_event_id_seq', 5, true);
          public          postgres    false    232            �           2606    84264    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    214            �           2606    84266    doctor doctor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    216            �           2606    84268 "   list_med_event list_med_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.list_med_event
    ADD CONSTRAINT list_med_event_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.list_med_event DROP CONSTRAINT list_med_event_pkey;
       public            postgres    false    218            �           2606    84270    list_roles list_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.list_roles
    ADD CONSTRAINT list_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.list_roles DROP CONSTRAINT list_roles_pkey;
       public            postgres    false    220            �           2606    84272    med_card med_card_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.med_card
    ADD CONSTRAINT med_card_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.med_card DROP CONSTRAINT med_card_pkey;
       public            postgres    false    222            �           2606    84274    med_event med_event_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_pkey;
       public            postgres    false    224            �           2606    84276    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    226            �           2606    84278 "   time_table_med time_table_med_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_pkey;
       public            postgres    false    229            �           2606    84280 "   type_med_event type_med_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.type_med_event
    ADD CONSTRAINT type_med_event_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.type_med_event DROP CONSTRAINT type_med_event_pkey;
       public            postgres    false    231            �           2606    84281    doctor doctor_role_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_role_fkey FOREIGN KEY (role) REFERENCES public.list_roles(id);
 A   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_role_fkey;
       public          postgres    false    216    3234    220            �           2606    84286 *   list_med_event list_med_event_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.list_med_event
    ADD CONSTRAINT list_med_event_id_type_fkey FOREIGN KEY (id_type) REFERENCES public.type_med_event(id);
 T   ALTER TABLE ONLY public.list_med_event DROP CONSTRAINT list_med_event_id_type_fkey;
       public          postgres    false    3244    218    231            �           2606    84291     med_card med_card_id_client_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_card
    ADD CONSTRAINT med_card_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 J   ALTER TABLE ONLY public.med_card DROP CONSTRAINT med_card_id_client_fkey;
       public          postgres    false    3228    214    222            �           2606    84296 "   med_event med_event_id_client_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);
 L   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_id_client_fkey;
       public          postgres    false    214    3228    224            �           2606    84301 !   med_event med_event_id_event_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.med_event
    ADD CONSTRAINT med_event_id_event_fkey FOREIGN KEY (id_event) REFERENCES public.list_med_event(id);
 K   ALTER TABLE ONLY public.med_event DROP CONSTRAINT med_event_id_event_fkey;
       public          postgres    false    218    3232    224            �           2606    84306 ,   time_table_med time_table_med_id_doctor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_id_doctor_fkey FOREIGN KEY (id_doctor) REFERENCES public.doctor(id);
 V   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_id_doctor_fkey;
       public          postgres    false    216    3230    229            �           2606    84311 0   time_table_med time_table_med_id_type_event_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_id_type_event_fkey FOREIGN KEY (id_type_event) REFERENCES public.list_med_event(id);
 Z   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_id_type_event_fkey;
       public          postgres    false    218    229    3232            �           2606    84316 ,   time_table_med time_table_med_room_rent_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.time_table_med
    ADD CONSTRAINT time_table_med_room_rent_fkey FOREIGN KEY (room_rent) REFERENCES public.room(id);
 V   ALTER TABLE ONLY public.time_table_med DROP CONSTRAINT time_table_med_room_rent_fkey;
       public          postgres    false    226    3240    229            C      x��|�vǕ�s�+�ci�R+c�x�SE�uWH I� O$U��K��h�Z�%�v�_Z���	���?�}"#2#/��[ْI�M�<����������n~��\<Y<�����o_-�n>�?.����7���
����~��;[�fƜ.��LgZf�����Y���H�;�K�-~^\���G��>�-�~8[|�����o��l����ͽ��G���/>�ߺ�p����'2�2i���B��̨B��Jg]�Y��y}���}�Wֻ���l���z��>��t�v�Џ���3�{�t=�e�T^��0���]Z�?�Z�媘����?����C�;|��x�����	k�*54�Ifr�gV*�d�%��
em�^o�w�|��l��h�۹��'臸���>�=��~�?S�U|���^j�̴6/T�\&Tg&+ޟ	-serc�����s|���)}j���a�<���?�t��,�F���Q���N�f����zyPY�Q�\�W��N�з��G�u����{כ��y�7�cl0��@�Qt��L
�K�K;e���#���)�����GN��^�|�x6[��r/�ɋ$b�3Ό.��Ya,���%o6{y�ݮ���"VQ�}�.�}�^G'���_�_�dIZ�(͙Ȅ��g����?S�y�2��|�}��c<X��0��!i�!׵P�	Qd��y{To�˳��-����&w<�?|H7�������K���IU���mػ����J�l2���9�"���0���C�K.��q�ʔ3H8c����3o6��v�r�Ր��"$�����7�{��$�O����ԃE�ٜ�\�)�(�&5�{�������Fi����F���X'�(x�Wn��~sޜ�\�[���]�}L�O}���������}!{2`�11؇zOC�2�>*���(1n�Lq�����Ƞ��b*؆t�Ȯ���+�i�4sB!��
���o�;�d}b��;O�J��"��c��TF����ȹ�S�D9�9׹�S&}�x�KB_��D�g�8^-�N `0��f�� Q0e
kQHP5�˭*�[nT�Gʄ��!��V]�v�P�}p9��vK�$s2�E�'���.�Pjqbp���<ƃ.n>9��Z��P���<sR2����I�V����v��<dc>0���.��/�~�ˢ�c��c�M��H����ɲ���}��*�<�V�/)lfla���c�֜��N�U����� \��4���Q��?\��m]�|�K}g�1Q�Ñe���]B�M���	��g��d���߽\<��q��Q�L
k��ځq��ϥD�e����.�6\��B�����T��2� N�m�0�X�x�y�`&̤B	3��@I
D��<�nE!�������}*�x���B�H��R*�%�/d��@0fw���l^�W��u20J8梳����w�_)�{�,�EN��]�� Y� x֊X���5�T�P�o>��4����nf+4��1�c��<�*����$�����c�.!�~����ӭ@L"���fhc޾���Q���� ],\��&h1�x&�)@�@Y�Y�";/ﶰm�:�A˦#�x������y�^�`��gA�qrp~~��+���8�ٱS�}P�Ii|S9��?H��Kv��	ɘQ
�j��(w�|�=��r�d>&{���goM���(s�4������VL���f��|�S첳k���|8"���/�4��+6��0R�7FΌ΁3[���3�T'�޼>�6Kn�xk͙��R9!�ѡ8�����G�H;
T� :tq0��w��ޟ�U疭�`��L/WW��ޓ��`_�E���
N	� �n���i;?j�Je�8�>B�"Us���W�EԙT�/�ˆ&�g�;T�Pq�!��is1�~_y"D��D�8xW��� 	h~d(�
L<�Ϡ����&����W��1Dzv��mi�j�f`-��`��de�{���}(���q��,���K� ���-
�/�����߭O�v/�6&G��̇%0�ӱ+��m}��J�I;�A�CG,�
��r�m��AE�W��gt���(����>la�bfx5�PϹ����:�Yy�4F}������>R<HSI���31��	��"�M��M���<^|���b�^��$~�N�s F�(p�7$�P`��H�l�<ʫ��=��@f�%�b�3-f��7^�<[�e��$��Ϡ�Pj�d6���'=���AOH�!�V��\=a�,P���f�tk��iT*�Q����)���������5��B3+��Ro�K$[�֙�ԑ0�0T�ޡ�����E~��F��Pk,4t�@�7 e�߮W��)*O�t�q�q<^E.�U�G]�u$���Oi�J�)'b
e���oI��Z�\��(�>�z��e�מ�N֨�TAZ^�� 1�ok�>p�";�Κ���nw*��`�Wo��N_�տ�+����wb�3XfƔ�ˢ؛`��R���N��W�j�#~��co��T�%�C#��F�P�h؇����Iy7��+3���:���q7�F _+����hk*��D3Q�X�2��Z��%^��2���os��Y��  PU �s��=(���j~Z�m��97=��x�k<�G����wy����d�U
����eDM��s+r;�?w����]P,�p��P��{6��J��K� ��:���H���T�yu�n�g��&��O��?��z�7�j���҃�`)��i3�����r�s7���V�S��b[�S���LJ�YV�F�d��^y��k�Nix/*D�Q��Ls0��TS)Fd"���ت o9{f8��R���1�B���gji��VxaNsÄa<����a����oT�SF&\vĞhCנ�Y&�ŧ�����CԘ���0D�0WL��~�Q�q��}��Q�D#/Ū�#���
�a�C�)��;�V�3o��)��@`�%��1aH�1�q�9�H�ˡ�B;��P��R��&��:�a^�]x��Qo���̂~Y]("
�\��E	Yo��v`'m�Z]�J:��a��`KU����%@F��%�<x�4�}�_�K���/�W>r~�ӑU��H
=C\��8��Lhԫ��̷�;�~���_���#��{�?zUB/����!F��7���^.�.D��L�o�쫥�R�ݶ�FN�@5 %�/�F3��v*�k��v�9��jI	v�u�D�n7��aVy�+��%�w��z��N���p����
r=i�d��O��}�\v�+�12˂���)!�3��Q���m�����k�J��N��c�����}�Q��fn�&Bс�Ӥy"�0������i���y��=�)r����҃�e7���M5�l�=e���9�"í�K�܄�m��N3h#�3W]�3�1������/#�˄�9�MU}��Ϟ�T��������!�(S=��g��CM�|Fh�I]�2��ؓ������f�����O@���K׈hf�c^��^1F='�C���F!	�g���~�������e3e�tkH<��:����>k�L�O�������A���,<�,��(�b��[��0b&�Kx��dr�S"&C����# d0���`�mWwڣz-�6[kC}A����]�.C�_���}`$3�$Qfh�sP����������o?N�CC�i@�vޢ`�(7ZC�Y��6���\�N*��hS�u�<��K�Z��|���� �S���jS��RY�P���B�w%���� l�͌r����h d� �f~=tVK=�Rjp=D��T9��au�����nm	�qkEQ�"!�>�K<vK],�(����`4gg�y�6�V�s��)7�����bK?Fz2(�@Gct���Xj�2�#}9�# �W,��&]�h���ؿ�Ɍ�g.�ⳘQ�Q��N���Nu����öl�N�_���w�ٷ�ƃ�\,�iR�W���B	�=M�^u���]��    ��%�3�,�'�ŋu��]��A3?�3;�Ku]�O������+�u/�*��DD~�� ��&8[�&�[�8��\v���0��f#�&"�B�[�%`���r0p���:�v�r��(�K0D�ׯ�h��˾�����7�p��Q����d
�'w+�/T2��ٯ'�Ѻ�(r�p����0%�	O�rc^�g�;Qa�y�!.��ʪM��$���Z��-��*���n������O�n)�8^�6u!$�t
�4� ��P��Tg�6-�l7,)&~ft�x���q��&;�_�|�u�<.�[��㾣��A u݊a�w>,^�a���G�#��4�(��`3d�*h?d�:��wʭJ��t�H�7�z�|a�x����2�DF�nY�w�$�3|	do�p�^��F����8Х=9�f�x(�Fk��Ԯ>[ۜ�'�a��G��q��H����$�g�|��ѯ��M�>W��aP�F��*�� �,6�\�i��_|���Qӎ�d��-�q�� &�f��qMk��ikT��up�[��!S��g�(��y��yD�J���%�/�e��\���I�[�7�],)�MC7(C����<jO���=�܈�Y��|7��I��K�П�"����Di�QDp/"t.�
�5���&�u�oi���'bGRۙ�@PB�B;��f��(�r��.�^}���ey@�Wo���q�DT'9z�bh�pn�Դ���4��i�nAF\��Q<L�����1�e�F���v�����n6�dP����D��T���e쉮��*�_^��� ������Nw�~N����7�Tֳ5Hy��+h��˹�~��ݫ���qyܤpO����f�{��Б��c�Upy
�}q�v�԰�E�	R�'�b��P6euվ|��D��(�'��C�Q�D�[����f�\ot�KC��)gh��3�(�L�<;nk�h���|���+������%1a�A�"�px2	0P�f�VE�g�o�Af���r�>�����n�4ʲ[�]��֤��|c"vմ�A&ϥ&?�Sw?O7��9�C;��!2&�dpZ�9hw�9m��4ڎ�В��ˤ˸������㉅N�]�"� �(,Q�TqIFe�F��uѤ�鑣am�𞡔N�՝r�T��/��_��Rptx#�-�f"m7~���Nc��|24W�m��ߓ[�+g��g�P0�J��Ev؜�w��F��j=���l���uz��&0=w]ޝL�����>f�+B�q�CG;]�����"o*���ԸPJ̀�fɥa @�:(�N�T���� ߞy��Q$9IOty�7�Q��\G[M�g���[�C5g���eW���c	�D�0V	�"t(l���Hųv~Po�땋�&�O��K�*Q����Z��Ki��8��DN�����֓����?�c�ݰj��Ȩw	cio"_R�����l�ns���F�]K�P�qv���X���Wqekb�П�H+)�nL?��}4��8��)��nؤ��	2�0|���՜ը6�i�6����f%#:P�Kz5!�}�Ձ�vbdX��uƑ9('lE����0C������I<�)�h�,C@��K���[�F=�,�j�$ϔ�.����`b�}���:Ż|����z�)�������Z���UЎ�?Ȼq��a{�k���y4M@������Xa���/��h���`~'/Z9^��`1��(+��v�{��F{t�;�7\�^.}�p:�笖�1�q'���p�iu�ѩ#��V�-�P��g��_&mP��g+wDBʨ�d�&� ��i�ܬd��Cm�*o2��1� E)�������Tmz�Ԍ�m&�M�hl���E�:ܲ2=%�Z���!E�{�<b���@��훫w�Ī$�%�R b���Q����N{���9�Q�]�{��26	��q���r�t�߯����҉��n��!�w���B�e�Y^�8� ����j�֞�KG4MA��/�Q���� �	�凂�ok��f&���^>{��4l�m3���$5Y�uh�t"I��w��&_+�K�F۰X>;��1A�ۭ�ha����Ì�����B�Ӗ�t����D(n3�ۃ��[�W� � �DH��@&���h7��Q�FVrZ��O��h2	���j�A�v]��Jl��ptP�HI9���{�p|�#n��߽����5����9A�*�JK}�@۪O�|�9�v�8#������ �N�ڦѽ�F��jv�����z���ֆո�x�:̣W�����Y蠐hǄ���f�ګ6����,�H�FM�7��>�H���ޟ��}}���;S.�C�/}�t5���8��|�I=YigZ;	06B�FG�G�Fs��o����%�"�x�A��/%L�9����D���f��7p���x���m��S{�XIC�Bp<�Z4�B���mJ��j�l0J���Kt5�b���`7���?]�����#]j���nԼ�SM[���R�J��`@C|Z[�#��f��4`:��� d�4~��\�A7�x�6u�%�a˴�v�����?�>}����G]3���h��hEF[;sLT���pm���࿻y�N�46D�Y=�	�ӗ��}�+/�~�
G�;
�WS��~Pq�Xyl��&��[�	�7�v�Ⱦ�.�����`C�";����9jw��l5����w%.���Q*X�9�mތ��`iAdGZ� ���!��7i�v�v/81&>"�tF㹤eR��Ë�P�{�yyg^Җl���K��C_�m��f\����ؑ�v�#�����������]t��-!��ǅEȪ��pPC6n����n�_9���.㓭���4V�:��Lu4�����j��o:�عlu�����i,���F%>Zq�E���7{�n^oU�Y3�foī�i?��
�c죦����a[}����(������2K%w�h�

qa3[��e���r�� �#[��w���E�M�G�yݔкCT?�%U��f���+�O{����GW���ZY��$� �z#�PM�d�z%�p��t͉�_��.atYڵ�}<�����f�����F���-�eD�'s(�,�3��dM�fB�J -����q}���DЪ�^'�����A�B�?�H#e3�50�ڴ���O��$��d����f�pZ?� ���E�^�7�����k��Rwy�'��'Nr����9�*n4���h�wz)���&�����%wy�,^M�K��?����
�q.�P�A�g'�qyT����ҩ�2: q/l�x�Mh����I�*]���2	R&,��[1�m������Ph��E���rj"�Z�w�|���]R�v3�x
���z�u"���I݄3N��K{�7}�`̣�TT����3Ʉ��7e�r��Z���NsPo7Ҧ����/%�h���mXڿ�2^��:m��e���}�>H�hO�����(�	�t�
�U4��?��Y=ߩ6*>�i�W�,����4��Z���V�p�@�!2����흟d�~�ȸ�C�@��	!@��Z��d���k���94��:��M�]����;ξ��fH�7��E�����@p�b�i�����>�m#�h$���4x����r��/���v��
(��;ȡ	���rc>gO*ǁ9Z�^	��B�]�&Ln&��wa��'(?������`�IGWK	  ��Da]-�Ѯ��a)���D�=ʪ���֔`��:V6��`t��M�l{�����6{�+ۆ���e;��H����0LPPf��ּ<��ڻ��p��ѷ��Z���J�t��|W���;�h�IL�����n8���e� �@YG[��p�Wn�T���V�MLE̤�~�]���N&bTE��ľ�DN	�[uSʘ��)�~���1a]r&G�g��JjT+d���* �f{�l5�'-0�c;�w�b��,�2�oS��¥Y29�n���^��gX������zy�����#�K�vO��� 1�I��B�)7J9l�!V�aɩ�?�����q�ZY�:Hwj(�;*� 8  #�U���Zy{�:Ƥ�8K�⺢
80a@�eP�~��8�M9��8����9����x����Q�=���8�3�/(�;�����(N�T�$]� ���t2
�k=�wk!w9:�r��)�=[fe�ur�y��d�<��
)�L�t3��z��1GI~�����>���� �ҝ��z29�2Fd��ݚFC�.]��_.U�u�݄$����`NO��q#���P��k�p����1�	�����C��t�F�@	c�ES���-4�8-�an�U��6	U�����g�q�������/��_���{�xo]�      E   �   x�3�0��/�\l������.�S�0I��=ΐ��r��"N �4�2�0�{�x��z@U�Q���y�\Ɯf]l���u/,��¾�.lP��^��d=���|�Z#.���.�+ R��=?'�,1�8� '59f�)�	6^l ��NG'gW�B3쎀�:��=... 5�xy      G   �   x�]�Q�0D�������]<���R�F"�0{#��/?�vv��n�XW�b3�X�A�n�V���ڲ�ba �0!'���*���r��>H�'Ɯ�A���r��˖���9��I�F�r��Tr���2�ͳ����D-z��>�|�I���}��ra���`��MX��      I   D   x�3�0�{.츰�ˈ�[/l���b�Ŧ�6 �f�e�yaʅ}v]l���bW� ^"�      K   �  x��Zˎ%�]����II�'d�/0�0ċd��=�� 6;�";Y$�L<�L{<�_��G9��K�}��X�(��^)��J)��$s��U[��b��3=���>���?�^OoŔw�w)�xێxyLqk��<=����'���Ï~������O~���~��_������?�����T������Ki���.���G�%	�ߦ�陙�^�??1Gs8��D�ERIml.�Hom����{���b�vzz=��4}7������]	H�j�[�Ԙ.�%�Xv���$���X6'���\���F�U9h�-��T(�����:�<l!u�b�/�7����B{=}3=��_�E^cs��KN���K(���ŒSJ�D~��Q��w���_ǲ�3e�NO�'���\5�����$a��ƌ�v���x����������W�O��ȟ:]o�^��4K-J������验b[W��W8�
{s=}{ȴ��ӫk��GӋ�g��'o��7i�i�OE$!0���A0�����w����9$�l�����l��k,M�H�X�略AM������O�$r
 �����[an0V�dm�xvǞ��� �?��������k��}��,FW�!,IZk�dгlei�7wDH31>��h:�!bX�ȩ�-3�p(�e��K��h6_cS_]���|�B*�;�f5�N��e��r�^d��Ws��ޞZ���An>
�z ]FKݾ��vt��v�ɥr��_b�(�2��$qTl-��;�}(�}�k�=�5�v�7gp�� �X\�E�VT�A�X09���!���vQ/��x���%����;� Ҁ+ �X�O0���?Z�}}9��^���©�;�l����n��U����ٽ�����Ȣ���J\���:�������������O��`��/�;������j�(ʕ5��Aja��;&�-��'��A�!�
�X�"�4�X�b{n��4��4���o�3���k���?`#f�����O�����T���D	-�n`�ܓW,��H���>��،\	^�4�1V��T$�-���qB@��� g�vV�6��aS���h�	:��GSr�F_B�W�,��&N����X��}[�3�̽�[���υ8�~V .���n+���0�;�����qG�������̑��2�`ȿ���������ל�I	9�2�l�j�Be�j��ㆲ��A]��]�ơ�a�-���
<�2�6�z[1<�!3#�8;�!��(Z�0vu�y�3,��
��G[[�°WX�(tH����(5B����e������N:a	�2AGDPx����X6-��%<4B��\:
1 HB����N�2���9U��%��eK'�#�+�E�K���F"�;�[���H�&<�`�%`U�K��09���ݻ���e;x9Sf��U ���Ԅa@5�<���D�g�|���p�+z
 G��)e�lc�u|~V��H�*�h����]�C�b���rɤ��0;��i�Ǻ��1�$"�Pf"�cA��1�1�\�f����$	R�4�{�]���_b|w5tq����B/d�G�fi�����UV����^����5Um�?Nl3�i5]2Vw�Q��Y�  �(qa���ܣ9a��b�t�i�c��Uc�T��(P�Cѻ q���Ճ[¤@C~C2Y�U*"1��l��x��h���Z�c4=�3��L,\�����G�eq��b�Z�-�|��#�j:w���i�rx���V� c��P��X��t�D�� ��8���eͳ�����W*蝔� ��SS���/Þ!��g�X-i51�'c擺R8oP�ّư���:�rUw���Ӻ�X�oO��cp	Ѽ`:��y<�YO�h�4A6�[�-�{�8���5��-�N=��V�/�c����Lh����`,��gUDǔdk���r����R�D�uU��u]˺�}7�ˎ[�X`�M�Q��̑�����yO/���neG�����4,30{�X^��lü�r��� Ib6&��-c�K���f�hZ�"%;��ڴ�$C��1���ڹN?t��}�t�8>��jI�V�zķ�������R5^��s:���S��܎�R�Y~�:~q�B��A��S�`�a�1�-�����X�6Nǩbg��Ia-l��q(�����v�u@����� V}�bg��5;DU9-��	B?0��)�A����ὥ7�8Ѥ�����]������rҦ�F �����a�2�;]$ս�P��X���J��ڟ��3�~�q~�w7xG���B�	�2���q4v�=�-�Q\6p),�Q@���`��S��܇W���xV#�}@�W;����O��I5��[?D���Ձ�����ՔD�p���J�[�-_�*�j %0%�h��,��~����Ѽ�SW��VV%�eɱ?b:o�ETǥ*��h�H,����wȜ==�>����K�V�
�hg��_0-�
��6Nt=s��-��uA�zUzc��4��k5�?������k��PC�a(%RZ����0_�-�C�e$�cVՀ�D`�Z+�}|�`��1�w��~�����Vm�Aڭj��*�z�C}�?�bVG-D���	h �@�~��^�8qR�/MK`��Ԛ�֩��Ң��&s�{�g���*X5�|� ޱ1��N�V�c����XQ��F���2zu��i?�p���2u�S	XHKt�j���+��cť���u�;s�1OsPs�tz�@���Ǌ���n�V����y�|����f��Mj:���~�!��XQ�"%M�!�
$�i�6C�
e�#mHy�� v
�R�@VR�Za�D����.n�+��6�4����`T،_������֠Y�Y��$�U���xx�>L<m_&e�A��� '�� �8�akO^�p�-���A4!�vW��e�	��^���і�i�Pz�C�;j�Uje*yC�I����B�A[`H�4��GĜ7��D[�t�8c���.nr���@�@�*�UR���^!�vVһ���^����M+��>���P�qHrm�u��{��X�9�4(�2���0
���B��8k��o����C�6�fh�f�b���qVs�vI!̷݇~���f���&�H'��a�_�R��P?~I�9~i��v��Dh�:���F]>�PK��q�'R[��f����w����z�T      M   �  x��[�n�}.}?`)L���u��C� y���{��h
$�2�c`Z�dS�0��Tu�t�H4B����8=��U�N]�-@��d���Y(�/���I1+&�ۼ����^q���~���^����,�]�q��b��8,���9]�,����Y1��I��Y_�P���?/���p��a�O���)�[�x������z��W�-��_/�׽����yq����A�f�l/���R�L�3\��}�'厏�P(-M�_�\���9i���I��*|Mz��4rG" �Gcp�sǑ$	���D���a�k���`O��:�|�(�G�Q$\�x��������W3|�<����0����#��lGr��7��YP�1�����/�V������5� Ӡ�r�z�~�kza�jπI�|�Ye�h�S��_~�G�ɾw�#҂-�ƍ�jW�)���_��\R�D�Fa�9j����#�҃g4�I^ ��:;�>"E��",aX�t1�*���2G%�6��l�����	�"�k SH["�]�Q��v�K$m���~�r�[^<".���Q�k%r����A��+JqJ�,�YF��vPi@���1XD�ԙү�G��JԬ�H4	Z*M�'��{D:̕��b�c>��T&2���Ĥ���ؒDL��/%�e��4A9�r�LJ��Zf�y�cO*T2O��K�$).)
\���{$���C���z�&
L�NYІ`��G�Y���Qf��N�W��5�����ndܧT2I����@l�ț��p��J�q$�D�"˖�y��}���^�u�Do6-t�)�1(19
:
��Dz�� ���9����M�u�pw��3ȳF�0��7�;?,1��E����s�2��4�\.E%~��D��9��>���r=5��9��9�V�t�4HÒk}��0�+�Ué�IF)�!�~gՐkf(4��K�Q�ݣ�@nR�K�� ��'�c��_�����G��(��[ƊoĪ*�v�N�K�
�A��uX5��U'�c�z�=#"'D�x��L+��IU*K)9��I�ﰓ<s}�*J��EL�>Ǖ+F����{���J���$z\�f�2tu�Q���[���q��v��@�3J�p�B����J����ݺ�ҠtJ3(Y,^Y�sb�?���m���b@�ڛ��7�(��QL��M�`AY����vԐ��U*��^�@q.j4�;��Ӄ���y���>4�$�lC�ݢ�{�S�����[��>�+�2��t� F�����%"�K�GN�� -�"$R�|�G�DY����47)�,�uRb�bb�T�9��)�����4B��+�kZqi2(2ԯQ�R���{�A��Dyob%K��q�I�tDЦq�ШI�ao��~\ZМ�.ߑ��|�e�P���.Ŧ�˼犊��h�z�}�C�z����T;!�<Ci�?.RM���j
���Arb t�жƪ`�A Ž���x$So���R#�Ժ���J�)3t����`rF���[�p����(0\��<�$n�u�3\>X^�����f	���v�ɉf�~b�0]�)̒��
��>���`l#����9�d�c���Tm�<��K1�-o��Z�5�O�S�:A1'�۾�Bm6���7����;>w)C�7�R+�
�R5X�{>��L�gT��F���V�����������Jm�v`�k0���y�`>�����1fn�l-���Te��Cv��4`M2Uy &N%��(v�j�J�rn�ˮ<�X�-���T:��Wx͙uQ��n�,7M)Ħ��^q�U�t�w�F�_��o
�N��򜄮������R�52�'�����e�Ӫ.�.]�y�"�z��6��)p��9.=�'/�'�j௎IN7��%����0�@��0�Y�=��V��������;�3�%.�I�Ɋ���������J�8ɯ�j�|��M�����W��L]�|�6���g�����v��>R� /!�2��FO�p�M�p�%x�'*�?|?�5l�>���T���,�\W��Q��ZZ�C��[�Z��S�g���^��[�<�f"�����B�t�O,q��vK�&z�C`:s�]�Z�?{l K�+tb�a���e�I����:�\�"U�.-n~&�2T������?�HA       O   9   x�ȹ�@��xY�q��_/�+�h	W�������<ռ5h������
y      P   0   x�S.����5R��K�M�����N�5��R�"l�]���Q,W� 	F_      R   �   x���M�0�ׯ��0���]<�?�M\��
�HDz�y7r�&w`^B�h�ufZ'^|��$�?��^ghP㌓չ.t��V��h��`q�9�:�5�r��Ae�
v8���-B��5&@���5+NnM&�PI��(	xV��G���k،�,��>E7T�Gֲ���֊�A���qd���oȽ�MbkNB;�Zٽ�2���Zս�jp�.�_b%.�_Jӑ1�	JD�w      T   �   x�]���0���� ��6���Z""J�
�7�K������N��Z�U����E�Q��:�'��,+)���e��Z;� ���$���H S�*B���߻ǈ��c��X�З˃?8�`{Q�utve�8��t�os� 볧����י�     