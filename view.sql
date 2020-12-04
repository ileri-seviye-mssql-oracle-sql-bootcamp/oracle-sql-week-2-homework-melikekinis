-- VIEW--

CREATE OR REPLACE VIEW movie.v_drama_actors
AS
SELECT DISTINCT 
    A.act_name, A.act_surname 
FROM 
    acts A
INNER JOIN brdg_mov_act B 
    ON A.act_id = B.act_id
INNER JOIN brdg_gen_mov C 
    ON B.mov_id = C.mov_id
INNER JOIN genres G 
    ON C.gen_id = G.gen_id
WHERE G.gen_title = 'Drama';