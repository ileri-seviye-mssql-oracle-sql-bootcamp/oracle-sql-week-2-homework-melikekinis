--DROP TABLE movie.directors;
--DROP TABLE movie.movies;
--DROP TABLE movie.brdg_mov_act;
--DROP TABLE movie.genres;
--DROP TABLE movie.brdg_gen_mov;


CREATE TABLE movie.directors (
    director_id  INT PRIMARY KEY,  
    director_name VARCHAR2(50),   
    director_surname VARCHAR2(50)
);



CREATE TABLE movie.movies (
    mov_id INT PRIMARY KEY,
    mov_title VARCHAR2(250),
    mov_year INT,
    mov_time INT   ,
    mov_lang VARCHAR2(5),
    mov_rel_country VARCHAR2(5),
    director_id INT,
    CONSTRAINT director_id FOREIGN KEY (director_id)
    REFERENCES movie.directors(director_id)
);

   
    
CREATE TABLE movie.acts (
    act_id VARCHAR2(4) PRIMARY KEY, 
    act_name VARCHAR2(50),   
    act_surname VARCHAR2(50),
    act_bdate DATE,   
    death_date DATE,  
    birth_place VARCHAR2(50)
);
    
    
CREATE TABLE movie.brdg_mov_act (
    mov_id INT, 
    act_id VARCHAR2(4), 
    main_role VARCHAR2(50)
);
    

CREATE TABLE movie.genres (
    gen_id INT PRIMARY KEY,  
    gen_title VARCHAR2(50)
);
    
    
CREATE TABLE movie.brdg_gen_mov (
    mov_id INT,  
    gen_id INT
);
