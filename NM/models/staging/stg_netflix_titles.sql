select 
    show_id::VARCHAR(32),
    type::VARCHAR(32),
    title,
    director,
    "cast" as actor,
    country,
    date_added::DATE,
    release_year::INTEGER,
    rating::VARCHAR(10),
    duration:: VARCHAR(100),
    listed_in,
    description
from {{ source('source_nm', 'netflix_titles') }}