PGDMP          	            }            hg2    17.4    17.4 6    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    45792    hg2    DATABASE     i   CREATE DATABASE hg2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE hg2;
                     postgres    false            �            1259    45823    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap r       postgres    false            �            1259    46289    country    TABLE     �   CREATE TABLE public.country (
    country_name character varying(30) NOT NULL,
    language character varying(30) NOT NULL,
    region character varying(30) NOT NULL
);
    DROP TABLE public.country;
       public         heap r       postgres    false            �            1259    45793    course    TABLE     �   CREATE TABLE public.course (
    crse_code character varying(5) NOT NULL,
    crse_name character varying(100) NOT NULL,
    offered_by character varying(5) NOT NULL,
    crse_fee numeric(7,2) NOT NULL,
    lab_fee numeric(7,2)
);
    DROP TABLE public.course;
       public         heap r       postgres    false            �            1259    45796 
   department    TABLE     &  CREATE TABLE public.department (
    dept_code character varying(5) NOT NULL,
    dept_name character varying(100) NOT NULL,
    hod character(4) NOT NULL,
    no_of_staff integer,
    max_staff_strength integer,
    budget numeric(9,2),
    expenditure numeric(9,2),
    hod_appt_date date
);
    DROP TABLE public.department;
       public         heap r       postgres    false            �            1259    45956    module    TABLE     �   CREATE TABLE public.module (
    mod_code character varying(10) NOT NULL,
    mod_name character varying(100) NOT NULL,
    credit_unit integer NOT NULL,
    mod_coord character(4)
);
    DROP TABLE public.module;
       public         heap r       postgres    false            �            1259    46284    pre_requisite    TABLE     �   CREATE TABLE public.pre_requisite (
    mod_code character varying(10) NOT NULL,
    requisite character varying(10) NOT NULL
);
 !   DROP TABLE public.pre_requisite;
       public         heap r       postgres    false            �            1259    45799    staff    TABLE     �  CREATE TABLE public.staff (
    staff_no character(4) NOT NULL,
    staff_name character varying(100) NOT NULL,
    supervisor_staff_no character(4),
    dob date NOT NULL,
    grade character varying(5) NOT NULL,
    marital_status character varying(1) NOT NULL,
    pay numeric(7,2),
    allowance numeric(7,2),
    hourly_rate numeric(7,2),
    gender character(1) NOT NULL,
    citizenship character varying(10) NOT NULL,
    join_yr integer NOT NULL,
    dept_code character varying(5) NOT NULL,
    type_of_employment character varying(2) NOT NULL,
    highest_qln character varying(10) NOT NULL,
    designation character varying(20) NOT NULL
);
    DROP TABLE public.staff;
       public         heap r       postgres    false            �            1259    45802    staff_backup    TABLE     �  CREATE TABLE public.staff_backup (
    staff_no character(4) NOT NULL,
    staff_name character varying(100) NOT NULL,
    supervisor character(4),
    dob date NOT NULL,
    grade character varying(5) NOT NULL,
    marital_status character varying(1) NOT NULL,
    pay numeric(7,2),
    allowance numeric(7,2),
    hourly_rate numeric(7,2),
    gender character(1) NOT NULL,
    citizenship character varying(10) NOT NULL,
    join_yr integer NOT NULL,
    dept_code character varying(5) NOT NULL,
    type_of_employment character varying(2) NOT NULL,
    highest_qln character varying(10) NOT NULL,
    designation character varying(20) NOT NULL
);
     DROP TABLE public.staff_backup;
       public         heap r       postgres    false            �            1259    46279    staff_dependent    TABLE     �   CREATE TABLE public.staff_dependent (
    staff_no character(4) NOT NULL,
    dependent_name character varying(30) NOT NULL,
    relationship character varying(20) NOT NULL
);
 #   DROP TABLE public.staff_dependent;
       public         heap r       postgres    false            �            1259    46299    stud_mod_performance    TABLE     �   CREATE TABLE public.stud_mod_performance (
    adm_no character(4) NOT NULL,
    mod_registered character varying(10) NOT NULL,
    mark integer,
    grade character(2)
);
 (   DROP TABLE public.stud_mod_performance;
       public         heap r       postgres    false            �            1259    46294    student    TABLE     o  CREATE TABLE public.student (
    adm_no character(4) NOT NULL,
    stud_name character varying(30) NOT NULL,
    gender character(1) NOT NULL,
    address character varying(100) NOT NULL,
    mobile_phone character(8),
    home_phone character(8),
    dob date NOT NULL,
    nationality character varying(30) NOT NULL,
    crse_code character varying(5) NOT NULL
);
    DROP TABLE public.student;
       public         heap r       postgres    false            �            1259    45805    user_account    TABLE     �   CREATE TABLE public.user_account (
    id integer NOT NULL,
    account_no character varying(6) NOT NULL,
    role integer NOT NULL,
    password character varying(255) NOT NULL
);
     DROP TABLE public.user_account;
       public         heap r       postgres    false            �            1259    45808 	   user_role    TABLE     d   CREATE TABLE public.user_role (
    id integer NOT NULL,
    name character varying(25) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap r       postgres    false            s          0    45823    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public               postgres    false    223   7J       w          0    46289    country 
   TABLE DATA           A   COPY public.country (country_name, language, region) FROM stdin;
    public               postgres    false    227   M       m          0    45793    course 
   TABLE DATA           U   COPY public.course (crse_code, crse_name, offered_by, crse_fee, lab_fee) FROM stdin;
    public               postgres    false    217   ,M       n          0    45796 
   department 
   TABLE DATA           �   COPY public.department (dept_code, dept_name, hod, no_of_staff, max_staff_strength, budget, expenditure, hod_appt_date) FROM stdin;
    public               postgres    false    218   �M       t          0    45956    module 
   TABLE DATA           L   COPY public.module (mod_code, mod_name, credit_unit, mod_coord) FROM stdin;
    public               postgres    false    224   �N       v          0    46284    pre_requisite 
   TABLE DATA           <   COPY public.pre_requisite (mod_code, requisite) FROM stdin;
    public               postgres    false    226   �N       o          0    45799    staff 
   TABLE DATA           �   COPY public.staff (staff_no, staff_name, supervisor_staff_no, dob, grade, marital_status, pay, allowance, hourly_rate, gender, citizenship, join_yr, dept_code, type_of_employment, highest_qln, designation) FROM stdin;
    public               postgres    false    219   �N       p          0    45802    staff_backup 
   TABLE DATA           �   COPY public.staff_backup (staff_no, staff_name, supervisor, dob, grade, marital_status, pay, allowance, hourly_rate, gender, citizenship, join_yr, dept_code, type_of_employment, highest_qln, designation) FROM stdin;
    public               postgres    false    220   �Q       u          0    46279    staff_dependent 
   TABLE DATA           Q   COPY public.staff_dependent (staff_no, dependent_name, relationship) FROM stdin;
    public               postgres    false    225   8T       y          0    46299    stud_mod_performance 
   TABLE DATA           S   COPY public.stud_mod_performance (adm_no, mod_registered, mark, grade) FROM stdin;
    public               postgres    false    229   UT       x          0    46294    student 
   TABLE DATA           |   COPY public.student (adm_no, stud_name, gender, address, mobile_phone, home_phone, dob, nationality, crse_code) FROM stdin;
    public               postgres    false    228   rT       q          0    45805    user_account 
   TABLE DATA           F   COPY public.user_account (id, account_no, role, password) FROM stdin;
    public               postgres    false    221   �T       r          0    45808 	   user_role 
   TABLE DATA           -   COPY public.user_role (id, name) FROM stdin;
    public               postgres    false    222   �T       �           2606    45831 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public                 postgres    false    223            �           2606    46293    country country_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_name);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public                 postgres    false    227            �           2606    45812    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (crse_code);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public                 postgres    false    217            �           2606    45814    department department_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_code);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public                 postgres    false    218            �           2606    46106    module module_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (mod_code);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public                 postgres    false    224            �           2606    46288     pre_requisite pre_requisite_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_pkey PRIMARY KEY (mod_code, requisite);
 J   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_pkey;
       public                 postgres    false    226    226            �           2606    45816    staff_backup staff_backup_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.staff_backup
    ADD CONSTRAINT staff_backup_pkey PRIMARY KEY (staff_no);
 H   ALTER TABLE ONLY public.staff_backup DROP CONSTRAINT staff_backup_pkey;
       public                 postgres    false    220            �           2606    46283 $   staff_dependent staff_dependent_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.staff_dependent
    ADD CONSTRAINT staff_dependent_pkey PRIMARY KEY (staff_no, dependent_name);
 N   ALTER TABLE ONLY public.staff_dependent DROP CONSTRAINT staff_dependent_pkey;
       public                 postgres    false    225    225            �           2606    45818    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_no);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public                 postgres    false    219            �           2606    46303 .   stud_mod_performance stud_mod_performance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_pkey PRIMARY KEY (adm_no, mod_registered);
 X   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_pkey;
       public                 postgres    false    229    229            �           2606    46298    student student_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (adm_no);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public                 postgres    false    228            �           2606    45820    user_account user_account_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public                 postgres    false    221            �           2606    45822    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public                 postgres    false    222            �           2606    47203    course course_offered_by_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_offered_by_fk FOREIGN KEY (offered_by) REFERENCES public.department(dept_code);
 E   ALTER TABLE ONLY public.course DROP CONSTRAINT course_offered_by_fk;
       public               postgres    false    218    4794    217            �           2606    46865    department dept_hod_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.department
    ADD CONSTRAINT dept_hod_fk FOREIGN KEY (hod) REFERENCES public.staff(staff_no);
 @   ALTER TABLE ONLY public.department DROP CONSTRAINT dept_hod_fk;
       public               postgres    false    4796    218    219            �           2606    47208    module mod_mod_coord_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.module
    ADD CONSTRAINT mod_mod_coord_fk FOREIGN KEY (mod_coord) REFERENCES public.staff(staff_no);
 A   ALTER TABLE ONLY public.module DROP CONSTRAINT mod_mod_coord_fk;
       public               postgres    false    224    219    4796            �           2606    47213 '   pre_requisite pre_requisite_mod_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_mod_code_fk FOREIGN KEY (mod_code) REFERENCES public.module(mod_code);
 Q   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_mod_code_fk;
       public               postgres    false    226    224    4806            �           2606    47218 (   pre_requisite pre_requisite_requisite_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_requisite_fk FOREIGN KEY (requisite) REFERENCES public.module(mod_code);
 R   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_requisite_fk;
       public               postgres    false    226    224    4806            �           2606    47223 +   staff_dependent staff_dependent_staff_no_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_dependent
    ADD CONSTRAINT staff_dependent_staff_no_fk FOREIGN KEY (staff_no) REFERENCES public.staff(staff_no);
 U   ALTER TABLE ONLY public.staff_dependent DROP CONSTRAINT staff_dependent_staff_no_fk;
       public               postgres    false    225    219    4796            �           2606    46870    staff staff_dept_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_dept_code_fk FOREIGN KEY (dept_code) REFERENCES public.department(dept_code);
 B   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_dept_code_fk;
       public               postgres    false    219    218    4794            �           2606    47228 5   stud_mod_performance stud_mod_performance_adm_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_adm_no_fkey FOREIGN KEY (adm_no) REFERENCES public.student(adm_no);
 _   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_adm_no_fkey;
       public               postgres    false    228    4814    229            �           2606    47233 =   stud_mod_performance stud_mod_performance_mod_registered_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_mod_registered_fkey FOREIGN KEY (mod_registered) REFERENCES public.module(mod_code);
 g   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_mod_registered_fkey;
       public               postgres    false    4806    224    229            �           2606    47238    student student_crse_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_crse_code_fk FOREIGN KEY (crse_code) REFERENCES public.course(crse_code);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_crse_code_fk;
       public               postgres    false    4792    217    228            �           2606    47243    student student_nationality_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_nationality_fk FOREIGN KEY (nationality) REFERENCES public.country(country_name);
 H   ALTER TABLE ONLY public.student DROP CONSTRAINT student_nationality_fk;
       public               postgres    false    4812    228    227            s   �  x���[��7�����R���"�� �.T`t�8��>�8�`�)Z��$���P��qpO�
&��SUk����VΔ�6,���.4��8M��JHԹ`����ݭ�����/�2dIP�o��d���x:���������Jk�do#���p%Y%�B�%D� ���\Ԅph�UKܛG�`��{�b�'�1/X.r9@�W��zsq;��r.����������ɏj������JB�Uw�Q[%KujI\��&�S�]"�.e�Ƶ��������U���(���a]�hڜ��#�����x4a�}����Ƅ�߾��M�*����Von�ḠA!Un3I��>J�����;��$u�u-mq˭z|�D�4Ōt5qS�n�-����HKKy�C�oӑ��L���C�"�1�;
�+5H<�&�C�Ҍin��3��ӣ?�J�*�츖im��l�X���6��>���[���h��F���֚�������z�����O��C��&Wf�����k�WIVR���g�BK��p2ĺS&���z,�}b�y1�Kc�Q�ֵ��!�n<���	|m
E��"��(:G?���]��7�v�w��~�q��iu��>)'����FN6�b��ĳ��T�5k�N=K��� ���Z�ŀ����� QlYL�CvZt�<��u�ZU�*���u:��������6�M�H���|��v�ﴵde      w      x������ � �      m   �   x�}ν�0�}�>�Q�	�0�T�z�rK(��ؒ��q����92DBgl� KF��c�i���")sqN�+�Y�5���a9>l�΢vq^E��?k6���J]����HqK�)$���R�����膉��Tf
�3����ŦŖ��]�N�cC�
d����3�{w��V��OLe�      n   �   x�Mα�0���lN%W,�]�H��bh�����{�H���[���M	�x?%~LJ�\ַ��`�5R�� �m�G�Q0[x�7!D�@+���Z�m�(.0궁����-��h�����\���xR���"U��'9�f��)
w�լKc_?�9u      t      x������ � �      v      x������ � �      o   �  x�u��n�0�����R�&N�����l�&����J�bm�AT��w�I @+!�����93�3���5�֐3�׉�����l@r�����>˝7���xZi��.`�� ��Y�Gk�	�a-qq%qE/O	?\��|���)���f�vy<��Eg������hƐ��zX�q����{�|~���s�8e�"#Bų��X^*.v���W >�
������G��b�:"bd����ƿO�񋠼�n�u�P���@Bc*�El���B3&^�"!]�����*Xڶu�_�J�ɃN�'3�+ȯ���wM;�5�jk|Ӟ5�ر@4�.�.(A����Wc�O�x�/����� ���\�9=oOH����2��U�D��+{S���k���öu�t{SX���q�
�c44��WQ�M5��Wy�1,{t^b@���sz��Dͼ;Wql�0NhG~��aL���dn��`�Z��!����u���K��{�$	�t�}F"M�br$yL�a����̎àa�	4�4��1��<t���fqzf>�J�$��ʥ8g��!J�;����nwI�e�/�@W�KhI��aN��ba܇�V�ٻ_�	���C�ԁ:�b��#�#KRկ�l�]e��W�NlBTq\j�3:��;��|p�޺��0�L�b�z�      p   �  x�u�Ko�0�ח_�He�8�%�i�d��H���"V�&� ����^�y0�����s�o���5gcx*Y�x 8l9d��=1�1���ȍ�TǺѸ<� [¦�ݡ��i��\7��`��Ґ��K�#nQ9^<¾"Q�ʄu�E���>^���1y˃j*}��a�y�$lj�I�Q�� S��>§~Y�=�� �����{G��	�@�R�X���Dt�����H5��>kU[º4�z�'��`;����߽�B�/e	������FY��a�i���"�Y#xA��r~�a?L�[�QE�>�ё/�#���f��=�Q�����P�xJN`�ނ�W>�����z�횗W�F��W	.v/�l����!�n�wi4����T>��U�]�KT�a��{i����X\�貕�݉c�z������r��A�Jْ����o��K�eH#��K
�\��=�1�k�9}���.�k�1�|q,�m��hB�P��69�����&؂�1�?����N����b��a�����n�cx
�J+[7�f;M�I�JP������X��Unm��S���? {\e� ��i��3T��WKY?T��awo���5���QUw��/��,��8D^#$��+��y���a�����d�k9z�      u      x������ � �      y      x������ � �      x      x������ � �      q   [   x�3�600�4�T1JR14P�w5,*�2.7M�p3�0�K�6�vsI76�)�u�N,����2q�t��2�b�iH�)1z\\\ A�(h      r      x�3�v�2�tt�������� ,>�     