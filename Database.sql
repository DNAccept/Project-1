PGDMP      .                |            MIS    15.7    16.3 6    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    16394    MIS    DATABASE     x   CREATE DATABASE "MIS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Ghana.1252';
    DROP DATABASE "MIS";
                postgres    false            �            1259    16426    auto_increment    SEQUENCE     w   CREATE SEQUENCE public.auto_increment
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.auto_increment;
       public          postgres    false            �            1259    16444    classes    TABLE     �   CREATE TABLE public.classes (
    class_id character varying(5) NOT NULL,
    class_name character varying(50),
    teacher_id integer,
    schedule character varying(255)
);
    DROP TABLE public.classes;
       public         heap    postgres    false            �            1259    16467    courses    TABLE     �   CREATE TABLE public.courses (
    course_id character varying(10) NOT NULL,
    course_name character varying(100),
    description text,
    credits integer,
    department_id integer NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16595    courses_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.courses_department_id_seq;
       public          postgres    false    220            B           0    0    courses_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.courses_department_id_seq OWNED BY public.courses.department_id;
          public          postgres    false    226            �            1259    16557    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100),
    head_of_department integer
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16556    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public          postgres    false    224            C           0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
          public          postgres    false    223            �            1259    16484    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollment_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    enrollment_date date
);
    DROP TABLE public.enrollments;
       public         heap    postgres    false            �            1259    16512    grades    TABLE     �   CREATE TABLE public.grades (
    grade_id character varying(10) NOT NULL,
    student_id integer,
    course_id character varying(10),
    grade character(2),
    grade_date date
);
    DROP TABLE public.grades;
       public         heap    postgres    false            �            1259    16428    students    TABLE     �  CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    gender character(1),
    phone_number character varying(15),
    email character varying(100),
    enrollment_date date,
    class_id integer,
    user_id character varying(10),
    course_id character varying(10)
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16427    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public          postgres    false    216            D           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public          postgres    false    215            �            1259    16435    teachers    TABLE       CREATE TABLE public.teachers (
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
       public         heap    postgres    false            �            1259    16434    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    218            E           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers.teacher_id;
          public          postgres    false    217            �            1259    16571    users    TABLE     �   CREATE TABLE public.users (
    user_id character varying(10) NOT NULL,
    username character varying(50),
    password_hash character varying(255),
    role character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �           2604    16596    courses department_id    DEFAULT     ~   ALTER TABLE ONLY public.courses ALTER COLUMN department_id SET DEFAULT nextval('public.courses_department_id_seq'::regclass);
 D   ALTER TABLE public.courses ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    226    220            �           2604    16560    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16431    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16438    teachers teacher_id    DEFAULT     z   ALTER TABLE ONLY public.teachers ALTER COLUMN teacher_id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers ALTER COLUMN teacher_id DROP DEFAULT;
       public          postgres    false    218    217    218            4          0    16444    classes 
   TABLE DATA           M   COPY public.classes (class_id, class_name, teacher_id, schedule) FROM stdin;
    public          postgres    false    219   �B       5          0    16467    courses 
   TABLE DATA           ^   COPY public.courses (course_id, course_name, description, credits, department_id) FROM stdin;
    public          postgres    false    220   �B       9          0    16557    departments 
   TABLE DATA           Y   COPY public.departments (department_id, department_name, head_of_department) FROM stdin;
    public          postgres    false    224   �B       6          0    16484    enrollments 
   TABLE DATA           \   COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
    public          postgres    false    221   �B       7          0    16512    grades 
   TABLE DATA           T   COPY public.grades (grade_id, student_id, course_id, grade, grade_date) FROM stdin;
    public          postgres    false    222   �B       1          0    16428    students 
   TABLE DATA           �   COPY public.students (student_id, first_name, last_name, date_of_birth, gender, phone_number, email, enrollment_date, class_id, user_id, course_id) FROM stdin;
    public          postgres    false    216   C       3          0    16435    teachers 
   TABLE DATA           �   COPY public.teachers (teacher_id, first_name, last_name, date_of_birth, gender, address, phone_number, email, hire_date, department_id, user_id, office_days, office_hours_start, office_hours_end) FROM stdin;
    public          postgres    false    218   4C       :          0    16571    users 
   TABLE DATA           G   COPY public.users (user_id, username, password_hash, role) FROM stdin;
    public          postgres    false    225   QC       F           0    0    auto_increment    SEQUENCE SET     =   SELECT pg_catalog.setval('public.auto_increment', 1, false);
          public          postgres    false    214            G           0    0    courses_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.courses_department_id_seq', 1, false);
          public          postgres    false    226            H           0    0    departments_department_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);
          public          postgres    false    223            I           0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);
          public          postgres    false    215            J           0    0    teachers_teacher_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 1, false);
          public          postgres    false    217            �           2606    16448    classes classes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (class_id);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    219            �           2606    16473    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    220            �           2606    16562    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    224            �           2606    16488    enrollments enrollments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public            postgres    false    221            �           2606    16516    grades grades_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (grade_id);
 <   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_pkey;
       public            postgres    false    222            �           2606    16433    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    216            �           2606    16609    teachers teacher_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id, office_days, office_hours_start, office_hours_end);
 ?   ALTER TABLE ONLY public.teachers DROP CONSTRAINT teacher_pkey;
       public            postgres    false    218    218    218    218            �           2606    16579    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225            �           2606    16494 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public          postgres    false    220    3216    221            �           2606    16489 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public          postgres    false    3210    216    221            �           2606    16610    students fk_courses    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT fk_courses FOREIGN KEY (course_id) REFERENCES public.courses(course_id) ON DELETE SET NULL;
 =   ALTER TABLE ONLY public.students DROP CONSTRAINT fk_courses;
       public          postgres    false    220    3216    216            �           2606    16603    courses fk_dpt    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT fk_dpt FOREIGN KEY (department_id) REFERENCES public.departments(department_id) ON DELETE SET NULL;
 8   ALTER TABLE ONLY public.courses DROP CONSTRAINT fk_dpt;
       public          postgres    false    224    3222    220            �           2606    16522    grades grades_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 F   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_course_id_fkey;
       public          postgres    false    220    222    3216            �           2606    16517    grades grades_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 G   ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_student_id_fkey;
       public          postgres    false    3210    222    216            �           2606    16584    students user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.students DROP CONSTRAINT user_id;
       public          postgres    false    225    3224    216            �           2606    16590    teachers user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.teachers DROP CONSTRAINT user_id;
       public          postgres    false    3224    225    218            4      x������ � �      5      x������ � �      9      x������ � �      6      x������ � �      7      x������ � �      1      x������ � �      3      x������ � �      :      x������ � �     