{% macro get_user_history_columns() %}

{% set columns = [
    {"name": "_fivetran_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "followers_count", "datatype": dbt_utils.type_int()},
    {"name": "follows_count", "datatype": dbt_utils.type_int()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "ig_id", "datatype": dbt_utils.type_int()},
    {"name": "media_count", "datatype": dbt_utils.type_int()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "username", "datatype": dbt_utils.type_string()},
    {"name": "website", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
