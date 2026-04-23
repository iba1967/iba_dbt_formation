select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents, convert it to dollars (Original Model)
   -- amount / 100 as amount,
   -----Refactored stg_payments.sql : utilisation da la macro cents_to_dollars.sql
   --{{ cents_to_dollars('amount', 4) }} as amount,
   ---- amount stored in cents, convert to dollars
   {{ cents_to_dollars('amount') }} as amount,
    created as created_at
from {{ source('stripe', 'payment') }}