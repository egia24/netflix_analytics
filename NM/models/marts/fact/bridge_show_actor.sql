select 
    show_id,
    actor_id
from {{ref('int_actor')}} ia
left join {{ref('dim_actor')}} da on ia.actor = da.actor