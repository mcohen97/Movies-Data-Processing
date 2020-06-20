ratings = LOAD '/obligatorio/datasets/ratings.csv' USING PigStorage(',') AS (userId:int, movieId:int, rating:float, timestamp:int);

by_movie_id = GROUP ratings BY movieId;

by_movie_id_avg = FOREACH by_movie_id GENERATE FLATTEN(group) AS movieId, AVG(ratings.rating) AS average;


STORE by_movie_id_avg INTO '/obligatorio/ratings' USING PigStorage(',');

--filtered = FILTER ratings BY moveId == 139385;
--count_group = group filtered all;
--avg = FOREACH count_group GENERATE SUM(filtered.rating)/COUNT(filtered);
--dump avg;  --> 3.625




