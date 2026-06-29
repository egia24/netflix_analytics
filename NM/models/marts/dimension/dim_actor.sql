select distinct
    {{dbt_utils.generate_surrogate_key(['actor'])}} as actor_id,
    actor
from {{ref('int_actor')}}