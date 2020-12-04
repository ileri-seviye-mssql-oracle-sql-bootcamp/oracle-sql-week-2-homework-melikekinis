--INSERT STATEMENTS--

--DIRECTORS TABLE--

Insert into DIRECTORS
   (DIRECTOR_ID, DIRECTOR_NAME, DIRECTOR_SURNAME)
 Values
   (1, 'Fatih', 'Akin');
Insert into DIRECTORS
   (DIRECTOR_ID, DIRECTOR_NAME, DIRECTOR_SURNAME)
 Values
   (2, 'Zeki ', 'Demirkubuz');
Insert into DIRECTORS
   (DIRECTOR_ID, DIRECTOR_NAME, DIRECTOR_SURNAME)
 Values
   (3, 'Reha ', 'Erdem');
COMMIT;


--MOVIES TABLE--


Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (100, 'kurz und scherzlos', 1998, 94, 'DEU', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (101, 'im juli', 2000, 99, 'DEU', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (102, 'solino', 2002, 124, 'DEU', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (103, 'gegen die wand', 2004, 121, 'TR', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (104, 'soul kitchen', 2009, 99, 'DEU', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (105, 'the edge of heaven', 2007, 122, 'TR', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (106, 'aus dem nichts', 2017, 106, 'DEU', 
    'TR', 1);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (107, 'c blok', 1994, 92, 'TR', 
    'TR', 2);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (108, 'masumiyet', 1997, 110, 'TR', 
    'TR', 2);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (109, 'kader', 2006, 103, 'TR', 
    'TR', 2);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (110, 'yeralti', 2012, 107, 'TR', 
    'TR', 2);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (111, 'kac para kac', 1999, 100, 'TR', 
    'TR', 3);
Insert into MOVIES
   (MOV_ID, MOV_TITLE, MOV_YEAR, MOV_TIME, MOV_LANG, 
    MOV_REL_COUNTRY, DIRECTOR_ID)
 Values
   (112, 'korkuyorum anne', 2004, 128, 'TR', 
    'TR', 3);
COMMIT;


--ACTS TABLE--

Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A100', 'Mehmet', ' Kurtulus', TO_DATE('04/27/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A101', 'Aleksandar ', 'Jovanovic', TO_DATE('04/05/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A102', 'Adam ', 'Bousdoukos', TO_DATE('01/25/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A103', 'Regula ', 'Grauwiller', TO_DATE('10/12/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Switzerland');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A104', 'Idil ', 'Uner', TO_DATE('01/08/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A105', 'Moritz ', 'Bleibtreu', TO_DATE('08/13/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A106', 'Christiane ', 'Paul', TO_DATE('08/03/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A107', 'Birol ', 'Unel', TO_DATE('06/18/1961 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('03/09/2020 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A108', 'Christian ', 'Tasche', TO_DATE('08/16/1957 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/11/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A109', 'Barnaby ', 'Metschurat', TO_DATE('11/22/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A110', 'Tiziana ', 'Lodato', TO_DATE('10/11/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Italy');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A111', 'Antonella ', 'Attili', TO_DATE('03/04/1963 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Italy');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A112', 'Sibel', 'Kekilli', TO_DATE('06/16/1980 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A113', 'Güven ', 'Kiraç', TO_DATE('01/01/1968 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A114', 'Adam ', 'Bousdoukos', TO_DATE('01/25/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A115', 'Pheline ', 'Roggan', TO_DATE('06/13/1982 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A116', 'Baki', ' Davrak', TO_DATE('01/01/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A117', 'Nurgül', 'Yesilcay', TO_DATE('03/26/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A118', 'Tuncel ', 'Kurtiz', TO_DATE('01/01/1936 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('09/27/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A119', 'Patrycia ', 'Ziolkowska', TO_DATE('04/19/1979 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Poland');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A120', 'Numan', 'Acar', TO_DATE('07/02/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A121', 'Diage', 'Kruger', TO_DATE('07/15/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A122', 'Serap ', 'Aksoy', TO_DATE('06/24/1964 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A123', 'Fikret ', 'Kuskan', TO_DATE('04/22/1965 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A124', 'Haluk ', 'Bilginer', TO_DATE('05/06/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A125', 'Derya', 'Alabora', TO_DATE('08/19/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A126', 'Ufuk', 'Bayraktar', TO_DATE('12/09/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A127', 'Vildan ', 'Atasever', TO_DATE('07/26/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A128', 'Ozan', 'Bilen', TO_DATE('11/11/1984 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A129', 'Engin ', 'Gunaydin', TO_DATE('01/29/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A130', 'Serhat ', 'Tutumluer', TO_DATE('06/29/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A131', 'Nihal ', 'Yalcin', TO_DATE('03/29/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A132', 'Serkan ', 'Keskin', TO_DATE('01/01/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A133', 'Taner ', 'Birsel', TO_DATE('01/01/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A134', 'Bennu ', 'Yildirimlar', TO_DATE('11/22/1969 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A135', 'Zuhal ', 'Gencer', TO_DATE('07/13/1961 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A136', 'Turgay ', 'Aydin', TO_DATE('01/01/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Turkey');
Insert into ACTS
   (ACT_ID, ACT_NAME, ACT_SURNAME, ACT_BDATE, DEATH_DATE, 
    BIRTH_PLACE)
 Values
   ('A137', 'Arzu ', 'Bazman', TO_DATE('12/12/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), NULL, 
    'Germany');
COMMIT;

--BRDG_MOV_ACT TABLE--

SET DEFINE OFF;
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (100, 'A100', 'Gabriel');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (100, 'A101', 'Bobby');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (100, 'A102', 'Costa');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (100, 'A103', 'Alice');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (100, 'A104', 'Ceyda');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (101, 'A100', 'Isa');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (101, 'A105', 'Danniel Bannier');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (101, 'A104', 'Melek');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (101, 'A106', 'Juli');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (101, 'A107', 'Kellner');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (102, 'A108', 'Jos Vater');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (102, 'A109', 'Gigi');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (102, 'A110', 'Ada');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (102, 'A111', 'Rosa');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (102, 'A105', 'Giancarlo');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (103, 'A107', 'Cahit Tomruk');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (103, 'A112', 'Sibel');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (103, 'A113', 'Seref');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (104, 'A114', 'Zinos Kazantsakis');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (104, 'A105', 'Illias Kazantsakis');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (104, 'A115', 'Nadine Krüger');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (104, 'A107', 'Shayn Weiss');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (105, 'A116', 'Nejat');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (105, 'A117', 'Ayten ');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (105, 'A118', 'Ali');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (105, 'A119', 'Lotte');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (106, 'A120', 'Nuri Sekerci');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (106, 'A114', 'Knacki');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (106, 'A121', 'Katja Sekerci');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (107, 'A122', 'Tulay');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (107, 'A123', 'Haled');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (108, 'A113', 'Yusuf');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (108, 'A124', 'Bekir');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (108, 'A125', 'Ugur');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (109, 'A126', 'Bekir');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (109, 'A127', 'Ugur');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (109, 'A128', 'Zagor');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (110, 'A129', 'Muharrem');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (110, 'A130', 'Cevat');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (110, 'A131', 'Turkan');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (110, 'A132', 'Tarik');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (111, 'A133', 'Selim');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (111, 'A134', 'Ayla');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (111, 'A135', 'Nihal');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (112, 'A136', 'Keten');
Insert into BRDG_MOV_ACT
   (MOV_ID, ACT_ID, MAIN_ROLE)
 Values
   (112, 'A137', 'Umit');
COMMIT;


--GENRES TABLE--

Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (1, 'Drama');
Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (2, 'Comedy');
Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (3, 'Crime');
Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (4, 'Thriller');
Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (5, 'Adventure');
Insert into GENRES
   (GEN_ID, GEN_TITLE)
 Values
   (6, 'Romance');
COMMIT;

--BRDG_GEN_MOV TABLE--

Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (100, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (100, 3);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (100, 4);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (101, 5);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (101, 2);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (101, 6);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (102, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (102, 2);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (103, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (103, 6);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (104, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (104, 2);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (105, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (106, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (106, 3);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (106, 4);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (107, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (108, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (109, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (110, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (111, 1);
Insert into BRDG_GEN_MOV
   (MOV_ID, GEN_ID)
 Values
   (112, 2);
COMMIT;