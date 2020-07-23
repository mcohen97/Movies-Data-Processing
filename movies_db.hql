USE movies_big_data;

CREATE EXTERNAL TABLE IF NOT EXISTS movies (
  adult boolean,
  budget int,
  movie_id int,
  original_language string,
  original_title string,
  overview string,
  popularity float,
  release_date date,
  revenue int,
  title string,
  vote_count int,
  rating float
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies';

CREATE EXTERNAL TABLE IF NOT EXISTS genres (
  id int,
  name string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/genres';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_genres (
  id_movie int,
  id_genre int
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_genres';

CREATE EXTERNAL TABLE IF NOT EXISTS prod_companies (
  id int,
  name string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/prod_companies';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_prod_companies (
  id_movie int,
  id_prod_company int
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_prod_companies';

CREATE EXTERNAL TABLE IF NOT EXISTS prod_countries (
  id string,
  name string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/prod_countries';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_prod_countries (
  id_movie int,
  id_prod_country string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_prod_countries';

CREATE EXTERNAL TABLE IF NOT EXISTS spoken_languages (
  id string,
  name string
)
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/spoken_languages';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_spoken_languages (
  id_movie int,
  id_spoken_language string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_spoken_languages';

CREATE EXTERNAL TABLE IF NOT EXISTS keywords (
  id int,
  name string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/keywords';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_keywords (
  id_movie int,
  id_keyword int
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_keywords';

CREATE EXTERNAL TABLE IF NOT EXISTS cast_actors (
  id int,
  cast_id int, 
  character string,
  gender int,
  name string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/cast';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_cast (
  id_movie int,
  cast_id int
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_cast';

CREATE EXTERNAL TABLE IF NOT EXISTS crew (
  id int,
  department string,
  gender int,
  job string
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/crew';

CREATE EXTERNAL TABLE IF NOT EXISTS movies_crew (
  id_movie int,
  crew_id int
) 
STORED AS PARQUET 
LOCATION '/obligatorio/processed_tables/movies_crew';