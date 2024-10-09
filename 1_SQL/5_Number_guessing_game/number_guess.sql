--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(22) NOT NULL,
    tries integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_1728422147082', 257, 256);
INSERT INTO public.games VALUES ('user_1728422147082', 710, 709);
INSERT INTO public.games VALUES ('user_1728422147081', 874, 873);
INSERT INTO public.games VALUES ('user_1728422147081', 349, 348);
INSERT INTO public.games VALUES ('user_1728422147082', 715, 712);
INSERT INTO public.games VALUES ('user_1728422147082', 31, 30);
INSERT INTO public.games VALUES ('user_1728422147082', 184, 183);
INSERT INTO public.games VALUES ('user_1728422156017', 748, 747);
INSERT INTO public.games VALUES ('user_1728422156017', 675, 674);
INSERT INTO public.games VALUES ('user_1728422156016', 893, 892);
INSERT INTO public.games VALUES ('user_1728422156016', 88, 87);
INSERT INTO public.games VALUES ('user_1728422156017', 229, 226);
INSERT INTO public.games VALUES ('user_1728422156017', 844, 843);
INSERT INTO public.games VALUES ('user_1728422156017', 655, 654);
INSERT INTO public.games VALUES ('Jack', 13, 387);
INSERT INTO public.games VALUES ('user_1728422537434', 840, 839);
INSERT INTO public.games VALUES ('user_1728422537434', 846, 845);
INSERT INTO public.games VALUES ('user_1728422537433', 669, 668);
INSERT INTO public.games VALUES ('user_1728422537433', 623, 622);
INSERT INTO public.games VALUES ('user_1728422537434', 716, 713);
INSERT INTO public.games VALUES ('user_1728422537434', 205, 204);
INSERT INTO public.games VALUES ('user_1728422537434', 37, 36);
INSERT INTO public.games VALUES ('user_1728423039086', 693, 692);
INSERT INTO public.games VALUES ('user_1728423039086', 402, 401);
INSERT INTO public.games VALUES ('user_1728423039085', 361, 360);
INSERT INTO public.games VALUES ('user_1728423039085', 963, 962);
INSERT INTO public.games VALUES ('user_1728423039086', 184, 181);
INSERT INTO public.games VALUES ('user_1728423039086', 658, 657);
INSERT INTO public.games VALUES ('user_1728423039086', 704, 703);
INSERT INTO public.games VALUES ('user_1728423192146', 32, 31);
INSERT INTO public.games VALUES ('user_1728423192146', 544, 543);
INSERT INTO public.games VALUES ('user_1728423192145', 631, 630);
INSERT INTO public.games VALUES ('user_1728423192145', 178, 177);
INSERT INTO public.games VALUES ('user_1728423192146', 675, 672);
INSERT INTO public.games VALUES ('user_1728423192146', 486, 485);
INSERT INTO public.games VALUES ('user_1728423192146', 204, 203);
INSERT INTO public.games VALUES ('user_1728423224792', 280, 279);
INSERT INTO public.games VALUES ('user_1728423224792', 909, 908);
INSERT INTO public.games VALUES ('user_1728423224791', 467, 466);
INSERT INTO public.games VALUES ('user_1728423224791', 41, 40);
INSERT INTO public.games VALUES ('user_1728423224792', 227, 224);
INSERT INTO public.games VALUES ('user_1728423224792', 627, 626);
INSERT INTO public.games VALUES ('user_1728423224792', 534, 533);
INSERT INTO public.games VALUES ('user_1728423292322', 618, 617);
INSERT INTO public.games VALUES ('user_1728423292322', 192, 191);
INSERT INTO public.games VALUES ('user_1728423292321', 301, 300);
INSERT INTO public.games VALUES ('user_1728423292321', 512, 511);
INSERT INTO public.games VALUES ('user_1728423292322', 142, 139);
INSERT INTO public.games VALUES ('user_1728423292322', 511, 510);
INSERT INTO public.games VALUES ('user_1728423292322', 828, 827);
INSERT INTO public.games VALUES ('user_1728423338945', 686, 685);
INSERT INTO public.games VALUES ('user_1728423338945', 926, 925);
INSERT INTO public.games VALUES ('user_1728423338944', 634, 633);
INSERT INTO public.games VALUES ('user_1728423338944', 2, 1);
INSERT INTO public.games VALUES ('user_1728423338945', 459, 456);
INSERT INTO public.games VALUES ('user_1728423338945', 543, 542);
INSERT INTO public.games VALUES ('user_1728423338945', 774, 773);
INSERT INTO public.games VALUES ('user_1728423347449', 482, 481);
INSERT INTO public.games VALUES ('user_1728423347449', 601, 600);
INSERT INTO public.games VALUES ('user_1728423347448', 230, 229);
INSERT INTO public.games VALUES ('user_1728423347448', 306, 305);
INSERT INTO public.games VALUES ('user_1728423347449', 637, 634);
INSERT INTO public.games VALUES ('user_1728423347449', 591, 590);
INSERT INTO public.games VALUES ('user_1728423347449', 739, 738);
INSERT INTO public.games VALUES ('user_1728423460654', 652, 651);
INSERT INTO public.games VALUES ('user_1728423460654', 331, 330);
INSERT INTO public.games VALUES ('user_1728423460653', 626, 625);
INSERT INTO public.games VALUES ('user_1728423460653', 758, 757);
INSERT INTO public.games VALUES ('user_1728423460654', 379, 376);
INSERT INTO public.games VALUES ('user_1728423460654', 223, 222);
INSERT INTO public.games VALUES ('user_1728423460654', 132, 131);
INSERT INTO public.games VALUES ('Hemant', 12, 269);
INSERT INTO public.games VALUES ('user_1728423639607', 948, 947);
INSERT INTO public.games VALUES ('user_1728423639607', 753, 752);
INSERT INTO public.games VALUES ('user_1728423639606', 676, 675);
INSERT INTO public.games VALUES ('user_1728423639606', 417, 416);
INSERT INTO public.games VALUES ('user_1728423639607', 972, 969);
INSERT INTO public.games VALUES ('user_1728423639607', 251, 250);
INSERT INTO public.games VALUES ('user_1728423639607', 167, 166);
INSERT INTO public.games VALUES ('user_1728423758386', 203, 202);
INSERT INTO public.games VALUES ('user_1728423758386', 237, 236);
INSERT INTO public.games VALUES ('user_1728423758385', 792, 791);
INSERT INTO public.games VALUES ('user_1728423758385', 97, 96);
INSERT INTO public.games VALUES ('user_1728423758386', 139, 136);
INSERT INTO public.games VALUES ('user_1728423758386', 906, 905);
INSERT INTO public.games VALUES ('user_1728423758386', 258, 257);
INSERT INTO public.games VALUES ('user_1728423878140', 467, 466);
INSERT INTO public.games VALUES ('user_1728423878140', 78, 77);
INSERT INTO public.games VALUES ('user_1728423878139', 267, 266);
INSERT INTO public.games VALUES ('user_1728423878139', 767, 766);
INSERT INTO public.games VALUES ('user_1728423878140', 169, 166);
INSERT INTO public.games VALUES ('user_1728423878140', 647, 646);
INSERT INTO public.games VALUES ('user_1728423878140', 79, 78);
INSERT INTO public.games VALUES ('user_1728424057202', 488, 487);
INSERT INTO public.games VALUES ('user_1728424057202', 897, 896);
INSERT INTO public.games VALUES ('user_1728424057201', 527, 526);
INSERT INTO public.games VALUES ('user_1728424057201', 599, 598);
INSERT INTO public.games VALUES ('user_1728424057202', 311, 308);
INSERT INTO public.games VALUES ('user_1728424057202', 504, 503);
INSERT INTO public.games VALUES ('user_1728424057202', 700, 699);
INSERT INTO public.games VALUES ('user_1728424145847', 99, 98);
INSERT INTO public.games VALUES ('user_1728424145847', 225, 224);
INSERT INTO public.games VALUES ('user_1728424145846', 897, 896);
INSERT INTO public.games VALUES ('user_1728424145846', 319, 318);
INSERT INTO public.games VALUES ('user_1728424145847', 450, 447);
INSERT INTO public.games VALUES ('user_1728424145847', 270, 268);
INSERT INTO public.games VALUES ('user_1728424145847', 158, 157);
INSERT INTO public.games VALUES ('user_1728424726675', 698, 697);
INSERT INTO public.games VALUES ('user_1728424726675', 921, 920);
INSERT INTO public.games VALUES ('user_1728424726674', 115, 114);
INSERT INTO public.games VALUES ('user_1728424726674', 550, 549);
INSERT INTO public.games VALUES ('user_1728424726675', 214, 211);
INSERT INTO public.games VALUES ('user_1728424726675', 71, 69);
INSERT INTO public.games VALUES ('user_1728424726675', 417, 416);
INSERT INTO public.games VALUES ('user_1728424808643', 68, 67);
INSERT INTO public.games VALUES ('user_1728424808643', 521, 520);
INSERT INTO public.games VALUES ('user_1728424808642', 921, 920);
INSERT INTO public.games VALUES ('user_1728424808642', 519, 518);
INSERT INTO public.games VALUES ('user_1728424808643', 356, 353);
INSERT INTO public.games VALUES ('user_1728424808643', 451, 449);
INSERT INTO public.games VALUES ('user_1728424808643', 445, 444);
INSERT INTO public.games VALUES ('user_1728424972265', 6, 5);
INSERT INTO public.games VALUES ('user_1728424972265', 992, 991);
INSERT INTO public.games VALUES ('user_1728424972264', 762, 761);
INSERT INTO public.games VALUES ('user_1728424972264', 646, 645);
INSERT INTO public.games VALUES ('user_1728424972265', 887, 884);
INSERT INTO public.games VALUES ('user_1728424972265', 411, 409);
INSERT INTO public.games VALUES ('user_1728424972265', 127, 126);
INSERT INTO public.games VALUES ('user_1728425078563', 814, 813);
INSERT INTO public.games VALUES ('user_1728425078563', 445, 444);
INSERT INTO public.games VALUES ('user_1728425078562', 821, 820);
INSERT INTO public.games VALUES ('user_1728425078562', 513, 512);
INSERT INTO public.games VALUES ('user_1728425078563', 1002, 999);
INSERT INTO public.games VALUES ('user_1728425078563', 758, 756);
INSERT INTO public.games VALUES ('user_1728425078563', 762, 761);
INSERT INTO public.games VALUES ('user_1728425165990', 678, 677);
INSERT INTO public.games VALUES ('user_1728425165990', 531, 530);
INSERT INTO public.games VALUES ('user_1728425165989', 273, 272);
INSERT INTO public.games VALUES ('user_1728425165989', 643, 642);
INSERT INTO public.games VALUES ('user_1728425165990', 393, 390);
INSERT INTO public.games VALUES ('user_1728425165990', 264, 262);
INSERT INTO public.games VALUES ('user_1728425165990', 475, 474);
INSERT INTO public.games VALUES ('user_1728425181803', 277, 276);
INSERT INTO public.games VALUES ('user_1728425181803', 915, 914);
INSERT INTO public.games VALUES ('user_1728425181802', 241, 240);
INSERT INTO public.games VALUES ('user_1728425181802', 814, 813);
INSERT INTO public.games VALUES ('user_1728425181803', 201, 198);
INSERT INTO public.games VALUES ('user_1728425181803', 852, 850);
INSERT INTO public.games VALUES ('user_1728425181803', 786, 785);
INSERT INTO public.games VALUES ('user_1728425198600', 66, 65);
INSERT INTO public.games VALUES ('user_1728425198600', 200, 199);
INSERT INTO public.games VALUES ('user_1728425198599', 778, 777);
INSERT INTO public.games VALUES ('user_1728425198599', 353, 352);
INSERT INTO public.games VALUES ('user_1728425198600', 183, 180);
INSERT INTO public.games VALUES ('user_1728425198600', 291, 289);
INSERT INTO public.games VALUES ('user_1728425198600', 198, 197);
INSERT INTO public.games VALUES ('user_1728425229069', 484, 483);
INSERT INTO public.games VALUES ('user_1728425229069', 17, 16);
INSERT INTO public.games VALUES ('user_1728425229068', 943, 942);
INSERT INTO public.games VALUES ('user_1728425229068', 3, 2);
INSERT INTO public.games VALUES ('user_1728425229069', 35, 32);
INSERT INTO public.games VALUES ('user_1728425229069', 630, 628);
INSERT INTO public.games VALUES ('user_1728425229069', 613, 612);
INSERT INTO public.games VALUES ('user_1728425293249', 40, 39);
INSERT INTO public.games VALUES ('user_1728425293249', 281, 280);
INSERT INTO public.games VALUES ('user_1728425293248', 89, 88);
INSERT INTO public.games VALUES ('user_1728425293248', 422, 421);
INSERT INTO public.games VALUES ('user_1728425293249', 628, 625);
INSERT INTO public.games VALUES ('user_1728425293249', 259, 257);
INSERT INTO public.games VALUES ('user_1728425293249', 973, 972);
INSERT INTO public.games VALUES ('user_1728425749159', 369, 368);
INSERT INTO public.games VALUES ('user_1728425749159', 682, 681);
INSERT INTO public.games VALUES ('user_1728425749158', 993, 992);
INSERT INTO public.games VALUES ('user_1728425749158', 872, 871);
INSERT INTO public.games VALUES ('user_1728425749159', 707, 704);
INSERT INTO public.games VALUES ('user_1728425749159', 3, 1);
INSERT INTO public.games VALUES ('user_1728425749159', 555, 554);


--
-- PostgreSQL database dump complete
--

