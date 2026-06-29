select 
    show_id,
    type,
    title,
    director_id,
    actor,
    country,
    date_added,
    release_year,
    rating,
    duration,
    listed_in,
    description
from {{ref('int_director')}} id
left join {{ref('dim_director')}} dd on id.director = dd.director