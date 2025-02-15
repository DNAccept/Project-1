toc.dat                                                                                             0000600 0004000 0002000 00000041421 14650423437 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           
            |            MIS    15.7    16.3 7    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         =           1262    16394    MIS    DATABASE     x   CREATE DATABASE "MIS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Ghana.1252';
    DROP DATABASE "MIS";
                postgres    false         �            1259    16426    auto_increment    SEQUENCE     w   CREATE SEQUENCE public.auto_increment
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.auto_increment;
       public          postgres    false         �            1259    16467    courses    TABLE     �   CREATE TABLE public.courses (
    course_id character varying(10) NOT NULL,
    course_name character varying(100),
    description text,
    credits integer,
    department_id integer NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false         �            1259    16595    courses_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.courses_department_id_seq;
       public          postgres    false    219         >           0    0    courses_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.courses_department_id_seq OWNED BY public.courses.department_id;
          public          postgres    false    225         �            1259    16557    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100),
    head_of_department integer
);
    DROP TABLE public.departments;
       public         heap    postgres    false         �            1259    16556    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public          postgres    false    223         ?           0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
          public          postgres    false    222         �            1259    16484    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollment_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    enrollment_date date
);
    DROP TABLE public.enrollments;
       public         heap    postgres    false         �            1259    16512    grades    TABLE     �   CREATE TABLE public.grades (
    grade_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    grade character(2),
    grade_date date
);
    DROP TABLE public.grades;
       public         heap    postgres    false         �            1259    16428    students    TABLE     i  CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    gender character(1),
    phone_number character varying(10),
    email character varying(100),
    enrollment_date date,
    user_id character varying(10),
    department_id integer NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false         �            1259    16615    students_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.students_department_id_seq;
       public          postgres    false    216         @           0    0    students_department_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.students_department_id_seq OWNED BY public.students.department_id;
          public          postgres    false    226         �            1259    16427    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    216         A           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public          postgres    false    215         �            1259    16435    teachers    TABLE       CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    gender character(1),
    address character varying(255),
    phone_number character varying(15),
    email character varying(100),
    hire_date date,
    department_id integer,
    user_id character varying(10),
    office_days character varying(3) NOT NULL,
    office_hours_start time without time zone NOT NULL,
    office_hours_end time without time zone NOT NULL
);
    DROP TABLE public.teachers;
       public         heap    postgres    false         �            1259    16434    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    218         B           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;
          public          postgres    false    217         �            1259    16571    users    TABLE     �   CREATE TABLE public.users (
    user_id character varying(10) NOT NULL,
    username character varying(50),
    password character varying(255),
    role character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false         �           2604    16596    courses department_id    DEFAULT     ~   ALTER TABLE ONLY public.courses ALTER COLUMN department_id SET DEFAULT nextval('public.courses_department_id_seq'::regclass);
 D   ALTER TABLE public.courses ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    225    219         �           2604    16560    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    223    222    223         �           2604    16431    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    215    216    216         �           2604    16616    students department_id    DEFAULT     �   ALTER TABLE ONLY public.students ALTER COLUMN department_id SET DEFAULT nextval('public.students_department_id_seq'::regclass);
 E   ALTER TABLE public.students ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    226    216         �           2604    16438    teachers teacher_id    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN teacher_id DROP DEFAULT;
       public          postgres    false    217    218    218         0          0    16467    courses 
   TABLE DATA           ^   COPY public.courses (course_id, course_name, description, credits, department_id) FROM stdin;
    public          postgres    false    219       3376.dat 4          0    16557    departments 
   TABLE DATA           Y   COPY public.departments (department_id, department_name, head_of_department) FROM stdin;
    public          postgres    false    223       3380.dat 1          0    16484    enrollments 
   TABLE DATA           \   COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
    public          postgres    false    220       3377.dat 2          0    16512    grades 
   TABLE DATA           T   COPY public.grades (grade_id, student_id, course_id, grade, grade_date) FROM stdin;
    public          postgres    false    221       3378.dat -          0    16428    students 
   TABLE DATA           �   COPY public.students (student_id, first_name, last_name, date_of_birth, gender, phone_number, email, enrollment_date, user_id, department_id) FROM stdin;
    public          postgres    false    216       3373.dat /          0    16435    teachers 
   TABLE DATA           �   COPY public.teachers (teacher_id, first_name, last_name, date_of_birth, gender, address, phone_number, email, hire_date, department_id, user_id, office_days, office_hours_start, office_hours_end) FROM stdin;
    public          postgres    false    218       3375.dat 5          0    16571    users 
   TABLE DATA           B   COPY public.users (user_id, username, password, role) FROM stdin;
    public          postgres    false    224       3381.dat C           0    0    auto_increment    SEQUENCE SET     =   SELECT pg_catalog.setval('public.auto_increment', 1, false);
          public          postgres    false    214         D           0    0    courses_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.courses_department_id_seq', 1, false);
          public          postgres    false    225         E           0    0    departments_department_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);
          public          postgres    false    222         F           0    0    students_department_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.students_department_id_seq', 1, false);
          public          postgres    false    226         G           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);
          public          postgres    false    215         H           0    0    teachers_teacher_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 1, false);
          public          postgres    false    217         �           2606    16473    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    219         �           2606    16562    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    223         �           2606    16488    enrollments enrollments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public            postgres    false    220         �           2606    16516    grades grades_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);
 <   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_pkey;
       public            postgres    false    221         �           2606    16433    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    216         �           2606    16609    teachers teacher_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id, office_days, office_hours_start, office_hours_end);
 ?   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teacher_pkey;
       public            postgres    false    218    218    218    218         �           2606    16579    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    224         �           2606    16494 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public          postgres    false    220    219    3212         �           2606    16489 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public          postgres    false    3208    220    216         �           2606    16603    courses fk_dpt    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT fk_dpt FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON DELETE SET NULL;
 8   ALTER TABLE ONLY public.courses DROP CONSTRAINT fk_dpt;
       public          postgres    false    219    3218    223         �           2606    16621    students fk_dptid    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_dptid FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON DELETE SET NULL;
 ;   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_dptid;
       public          postgres    false    3218    216    223         �           2606    16522    grades grades_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 F   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_course_id_fkey;
       public          postgres    false    3212    221    219         �           2606    16517    grades grades_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 G   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_student_id_fkey;
       public          postgres    false    3208    221    216         �           2606    16584    students user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT user_id;
       public          postgres    false    216    3220    224         �           2606    16590    teachers user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.teachers DROP CONSTRAINT user_id;
       public          postgres    false    218    3220    224                                                                                                                                                                                                                                                       3376.dat                                                                                            0000600 0004000 0002000 00000002004 14650423437 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        BMEN101	Introduction to Biomedical Engineering	An overview of the fundamentals of biomedical engineering.	3	101
BMEN102	Biomedical Instrumentation	Study of devices and techniques for biomedical measurements.	4	101
FPEN103	Food Process Engineering Principles	Fundamental principles and applications in food process engineering.	3	102
FPEN404	Advanced Food Processing	Techniques and technologies in advanced food processing.	4	102
CPEN105	Introduction to Computer Engineering	Basics of computer engineering including hardware and software.	3	103
CPEN306	Computer Networks	Design and implementation of computer networks.	4	103
MTEN107	Materials Science and Engineering	Introduction to the properties and applications of engineering materials.	3	104
MTEN208	Composite Materials	Study of composite materials and their applications.	4	104
BMEN109	Biomedical Imaging	Techniques and technologies used in biomedical imaging.	3	101
CPEN410	Digital Signal Processing	Introduction to digital signal processing with applications.	3	103
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3380.dat                                                                                            0000600 0004000 0002000 00000000214 14650423437 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	Biomedical Engineering	2020
102	Computer Engineering	2021
103	Food Process Engineering	2022
104	Materials Science Engineering	2023
\.


                                                                                                                                                                                                                                                                                                                                                                                    3377.dat                                                                                            0000600 0004000 0002000 00000000412 14650423437 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1001	BMEN101	2024-01-02
2	1002	BMEN102	2024-01-03
3	1003	FPEN103	2024-01-03
4	1004	FPEN404	2024-01-04
5	1005	CPEN105	2024-01-05
6	1006	CPEN306	2024-01-06
7	1007	MTEN107	2024-01-07
8	1008	MTEN208	2024-01-08
9	1009	BMEN109	2024-01-09
10	1010	CPEN410	2024-01-10
\.


                                                                                                                                                                                                                                                      3378.dat                                                                                            0000600 0004000 0002000 00000000450 14650423437 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1001	BMEN101	A 	2024-06-01
2	1002	BMEN102	B+	2024-06-02
3	1003	FPEN103	A-	2024-06-03
4	1004	FPEN404	B 	2024-06-04
5	1005	CPEN105	A 	2024-06-05
6	1006	CPEN306	C 	2024-06-06
7	1007	MTEN107	B-	2024-06-07
8	1008	MTEN208	A+	2024-06-08
9	1009	BMEN109	C+	2024-06-09
10	1010	CPEN410	A 	2024-06-10
\.


                                                                                                                                                                                                                        3373.dat                                                                                            0000600 0004000 0002000 00000003335 14650423437 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1001	John	Doe	2000-01-15	M	555-1234	john.doe@gmail.com	2023-09-01	U000000001	101
1002	Jane	Smith	2001-02-20	F	555-2345	jane.smith@gmail.com	2023-09-01	U000000002	102
1003	Alice	Johnson	2000-03-25	F	555-3456	alice.johnson@gmail.com	2023-09-01	U000000003	103
1004	Bob	Brown	2001-04-30	M	555-4567	bob.brown@gmail.com	2023-09-01	U000000004	104
1005	Charlie	Davis	2000-05-05	M	555-5678	charlie.davis@gmail.com	2023-09-01	U000000005	101
1006	Dana	Miller	2001-06-10	F	555-6789	dana.miller@gmail.com	2023-09-01	U000000006	102
1007	Eve	Wilson	2000-07-15	F	555-7890	eve.wilson@gmail.com	2023-09-01	U000000007	103
1008	Frank	Moore	2001-08-20	M	555-8901	frank.moore@gmail.com	2023-09-01	U000000008	104
1009	Grace	Taylor	2000-09-25	F	555-9012	grace.taylor@gmail.com	2023-09-01	U000000009	101
1010	Hank	Anderson	2001-10-30	M	555-0123	hank.anderson@gmail.com	2023-09-01	U000000010	102
1011	Ivy	Thomas	2000-11-05	F	555-1235	ivy.thomas@gmail.com	2023-09-01	U000000011	103
1012	Jack	Jackson	2001-12-10	M	555-2346	jack.jackson@gmail.com	2023-09-01	U000000012	104
1013	Kara	White	2000-01-15	F	555-3457	kara.white@gmail.com	2023-09-01	U000000013	101
1014	Leo	Harris	2001-02-20	M	555-4568	leo.harris@gmail.com	2023-09-01	U000000014	102
1015	Mia	Martin	2000-03-25	F	555-5679	mia.martin@gmail.com	2023-09-01	U000000015	103
1016	Ned	Garcia	2001-04-30	M	555-6780	ned.garcia@gmail.com	2023-09-01	U000000016	104
1017	Olivia	Martinez	2000-05-05	F	555-7891	olivia.martinez@gmail.com	2023-09-01	U000000017	101
1018	Paul	Robinson	2001-06-10	M	555-8902	paul.robinson@gmail.com	2023-09-01	U000000018	102
1019	Quinn	Clark	2000-07-15	F	555-9013	quinn.clark@gmail.com	2023-09-01	U000000019	103
1020	Rick	Rodriguez	2001-08-20	M	555-0124	rick.rodriguez@example.com	2023-09-01	U000000020	104
\.


                                                                                                                                                                                                                                                                                                   3375.dat                                                                                            0000600 0004000 0002000 00000002363 14650423437 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2020	Samuel	Wright	1980-02-15	M	123 Maple St, Springfield	123-456-7890	samuel_wright@example.com	2020-01-10	101	U000000021	MON	09:00:00	11:00:00
2021	Tracy	Evans	1985-03-20	F	456 Oak St, Springfield	123-456-7891	tracy_evans@example.com	2021-02-11	102	U000000022	WED	09:00:00	11:00:00
2022	Ursula	Kelly	1978-04-25	F	789 Pine St, Springfield	123-456-7892	ursula_kelly@example.com	2019-03-12	103	U000000023	FRI	09:00:00	11:00:00
2023	Victor	Hall	1982-05-30	M	101 Birch St, Springfield	123-456-7893	victor_hall@example.com	2018-04-13	104	U000000024	MON	09:00:00	11:00:00
2024	Wendy	Adams	1976-06-15	F	202 Cedar St, Springfield	123-456-7894	wendy_adams@example.com	2022-05-14	101	U000000025	WED	09:00:00	11:00:00
2025	Xander	King	1983-07-20	M	303 Elm St, Springfield	123-456-7895	xander_king@example.com	2021-06-15	102	U000000026	FRI	09:00:00	11:00:00
2026	Yara	Brown	1979-08-25	F	404 Spruce St, Springfield	123-456-7896	yara_brown@example.com	2020-07-16	103	U000000027	MON	09:00:00	11:00:00
2027	Zane	Green	1984-09-30	M	505 Willow St, Springfield	123-456-7897	zane_green@example.com	2019-08-17	104	U000000028	WED	09:00:00	11:00:00
2028	Amy	Clark	1981-10-15	F	606 Fir St, Springfield	123-456-7898	amy_clark@example.com	2018-09-18	101	U000000029	FRI	09:00:00	11:00:00
\.


                                                                                                                                                                                                                                                                             3381.dat                                                                                            0000600 0004000 0002000 00000002302 14650423437 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        U000000001	john_doe	password1	student
U000000002	jane_smith	password2	student
U000000003	alice_johnson	password3	student
U000000004	bob_brown	password4	student
U000000005	charlie_davis	password5	student
U000000006	dana_miller	password6	student
U000000007	eve_wilson	password7	student
U000000008	frank_moore	password8	student
U000000009	grace_taylor	password9	student
U000000010	hank_anderson	password10	student
U000000011	ivy_thomas	password11	student
U000000012	jack_jackson	password12	student
U000000013	kara_white	password13	student
U000000014	leo_harris	password14	student
U000000015	mia_martin	password15	student
U000000016	ned_garcia	password16	student
U000000017	olivia_martinez	password17	student
U000000018	paul_robinson	password18	student
U000000019	quinn_clark	password19	student
U000000020	rick_rodriguez	password20	student
U000000021	samuel_wright	password21	teacher
U000000022	tracy_evans	password22	teacher
U000000023	ursula_kelly	password23	teacher
U000000024	victor_hall	password24	teacher
U000000025	wendy_adams	password25	teacher
U000000026	xander_king	password26	teacher
U000000027	yara_brown	password27	teacher
U000000028	zane_green	password28	teacher
U000000029	amy_clark	password29	teacher
\.


                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000034004 14650423437 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7
-- Dumped by pg_dump version 16.3

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

DROP DATABASE "MIS";
--
-- Name: MIS; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "MIS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Ghana.1252';


ALTER DATABASE "MIS" OWNER TO postgres;

\connect "MIS"

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
-- Name: auto_increment; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auto_increment
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auto_increment OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id character varying(10) NOT NULL,
    course_name character varying(100),
    description text,
    credits integer,
    department_id integer NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_department_id_seq OWNER TO postgres;

--
-- Name: courses_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_department_id_seq OWNED BY public.courses.department_id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100),
    head_of_department integer
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_department_id_seq OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    enrollment_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    enrollment_date date
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    grade_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    grade character(2),
    grade_date date
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    gender character(1),
    phone_number character varying(10),
    email character varying(100),
    enrollment_date date,
    user_id character varying(10),
    department_id integer NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_department_id_seq OWNER TO postgres;

--
-- Name: students_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_department_id_seq OWNED BY public.students.department_id;


--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    teacher_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    gender character(1),
    address character varying(255),
    phone_number character varying(15),
    email character varying(100),
    hire_date date,
    department_id integer,
    user_id character varying(10),
    office_days character varying(3) NOT NULL,
    office_hours_start time without time zone NOT NULL,
    office_hours_end time without time zone NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_teacher_id_seq OWNER TO postgres;

--
-- Name: teachers_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id character varying(10) NOT NULL,
    username character varying(50),
    password character varying(255),
    role character varying(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: courses department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN department_id SET DEFAULT nextval('public.courses_department_id_seq'::regclass);


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Name: students department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN department_id SET DEFAULT nextval('public.students_department_id_seq'::regclass);


--
-- Name: teachers teacher_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_name, description, credits, department_id) FROM stdin;
\.
COPY public.courses (course_id, course_name, description, credits, department_id) FROM '$$PATH$$/3376.dat';

--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name, head_of_department) FROM stdin;
\.
COPY public.departments (department_id, department_name, head_of_department) FROM '$$PATH$$/3380.dat';

--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
\.
COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date) FROM '$$PATH$$/3377.dat';

--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (grade_id, student_id, course_id, grade, grade_date) FROM stdin;
\.
COPY public.grades (grade_id, student_id, course_id, grade, grade_date) FROM '$$PATH$$/3378.dat';

--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, date_of_birth, gender, phone_number, email, enrollment_date, user_id, department_id) FROM stdin;
\.
COPY public.students (student_id, first_name, last_name, date_of_birth, gender, phone_number, email, enrollment_date, user_id, department_id) FROM '$$PATH$$/3373.dat';

--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (teacher_id, first_name, last_name, date_of_birth, gender, address, phone_number, email, hire_date, department_id, user_id, office_days, office_hours_start, office_hours_end) FROM stdin;
\.
COPY public.teachers (teacher_id, first_name, last_name, date_of_birth, gender, address, phone_number, email, hire_date, department_id, user_id, office_days, office_hours_start, office_hours_end) FROM '$$PATH$$/3375.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password, role) FROM stdin;
\.
COPY public.users (user_id, username, password, role) FROM '$$PATH$$/3381.dat';

--
-- Name: auto_increment; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_increment', 1, false);


--
-- Name: courses_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_department_id_seq', 1, false);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);


--
-- Name: students_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_department_id_seq', 1, false);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);


--
-- Name: teachers_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 1, false);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: teachers teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id, office_days, office_hours_start, office_hours_end);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: courses fk_dpt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT fk_dpt FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON DELETE SET NULL;


--
-- Name: students fk_dptid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_dptid FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON DELETE SET NULL;


--
-- Name: grades grades_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: grades grades_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: students user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: teachers user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            