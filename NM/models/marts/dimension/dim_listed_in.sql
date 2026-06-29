select distinct
    {{dbt_utils.generate_surrogate_key(['listed_in'])}} as listed_in_id,
    listed_in
from {{ref('int_listed_in')}}