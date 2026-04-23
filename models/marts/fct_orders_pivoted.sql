with orders as (
    select * from {{ ref('int_orders__pivoted') }}
),

final as (
    select
        ORDER_ID ,
        BANK_TRANSFER_AMOUNT,
        CREDIT_CARD_AMOUNT,
        COUPON_AMOUNT,
        GIFT_CARD_AMOUNT
    from orders
)

select * 
from final