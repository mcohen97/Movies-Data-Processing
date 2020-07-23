ratings = LOAD '/obligatorio/datasets/ratings.csv' USING PigStorage(',') AS (userId:int, movieId:int, rating:float, timestamp:int);

by_movie_id = GROUP ratings BY movieId;

by_movie_id_avg = FOREACH by_movie_id GENERATE FLATTEN(group) AS movieId, AVG(ratings.rating) AS vote_average, COUNT(ratings.rating) AS vote_count;


STORE by_movie_id_avg INTO '/obligatorio/ratings' USING PigStorage(',');