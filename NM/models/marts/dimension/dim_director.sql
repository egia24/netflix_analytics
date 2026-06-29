select distinct
    {{dbt_utils.generate_surrogate_key(['director'])}} as director_id,
    director
from {{ref('int_director')}}