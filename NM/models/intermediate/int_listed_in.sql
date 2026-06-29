select 
    show_id,
    type,
    title,
    director,
    actor,
    country,
    date_added,
    release_year,
    rating,
    duration,
    description,
    trim(unnest(string_to_array(listed_in, ','))) as listed_in
from {{ref('stg_netflix_titles')}}
where listed_in is not null
