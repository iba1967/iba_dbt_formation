------------------------------------------------------------
-- Compare Row Counts
------------------------------------------------------------

{% set old_relation = adapter.get_relation(
    database = target.database,
    schema = "DBT_IBA",
    identifier = "FCT_CUSTOMER_ORDERS_REFACT_V2"
) %}

{% set dbt_relation = ref('fct_customer_orders') %}

{{ audit_helper.compare_row_counts(
    a_relation = old_relation,
    b_relation = dbt_relation
) }}

 