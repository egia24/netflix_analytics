select 
    show_id,
    trim(unnest(string_to_array(actor, ','))) as actor
from {{ref('stg_netflix_titles')}}
where actor is not null