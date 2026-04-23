with orders as (
    select * from {{ ref('int_orders') }}
),

final as (
    select 
        ORDER_ID,
        CUSTOMER_ID,
        ORDER_DATE,
        date_part(month, ORDER_DATE) as order_month,
        date_part(day, ORDER_DATE) as order_day, 
        date_part(year, ORDER_DATE) as order_year,
        STATUS,
        TOTAL_AMOUNT_PAID,
        PAYMENT_FINALIZED_DATE,
    from orders
)

select * 
from final
