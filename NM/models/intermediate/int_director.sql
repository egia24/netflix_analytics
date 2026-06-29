select
    show_id,
    type,
    title,
    actor,
    country,
    date_added,
    release_year,
    rating,
    duration,
    listed_in,
    description,
    trim(unnest(string_to_array(director,','))) as director
from {{ref('stg_netflix_titles')}}
where director is not null