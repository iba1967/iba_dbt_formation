select
    max(_etl_loaded_at) as max_loaded_at,
    current_timestamp() as current_time,
    datediff('minute', max(_etl_loaded_at), current_timestamp()) as freshness_minutes
from {{ source('jaffle_shop', 'orders') }}
