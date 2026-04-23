{{ 
  config(
    store_failures = true
  ) 
}}

select
    payment_id,
    payment_amount
from {{ ref('fct_payments') }}
where payment_amount <= 0
