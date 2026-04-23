select CUSTOMER_ID from {{ ref('customers') }}
group by customer_id having count(*) > 1