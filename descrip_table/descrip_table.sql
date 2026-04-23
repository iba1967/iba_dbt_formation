
select column_name 
from raw.information_schema.columns
where table_name = 'CUSTOMERS'
  and table_schema = 'JAFFLE_SHOP'
