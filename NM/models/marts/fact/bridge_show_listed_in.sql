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
    listed_in_id,
    description
from {{ref('int_listed_in')}} ili 
left join {{ref('dim_listed_in')}} dli on ili.listed_in = dli.listed_in