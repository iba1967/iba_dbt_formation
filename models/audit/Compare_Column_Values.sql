------------------------------------------------------------
-- Compare Column Values
------------------------------------------------------------

{% set old_relation = adapter.get_relation(
    database = "ANALYTICS",
    schema = "DBT_IBA",
    identifier = "FCT_CUSTOMER_ORDERS_REFACT_V2"
) %}

{% set dbt_relation = ref('fct_customer_orders') %}

{% if execute %}

{{ audit_helper.compare_all_columns(
    a_relation = old_relation,
    b_relation = dbt_relation,
    primary_key = "order_id"
) }}


{{ log("OLD_RELATION = " ~ old_relation, info=True) }}
{{ log("DBT_RELATION = " ~ dbt_relation, info=True) }}


{{ log("DEBUG: target.database = " ~ target.database, info=True) }}
{{ log("DEBUG: target.schema = " ~ target.schema, info=True) }}

{% endif %}