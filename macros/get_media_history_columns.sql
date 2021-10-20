{% macro get_media_history_columns() %}

{% set columns = [
    {"name": "_fivetran_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "caption", "datatype": dbt_utils.type_string()},
    {"name": "carousel_album_id", "datatype": dbt_utils.type_int()},
    {"name": "created_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "ig_id", "datatype": dbt_utils.type_int()},
    {"name": "is_comment_enabled", "datatype": "boolean"},
    {"name": "is_story", "datatype": "boolean"},
    {"name": "media_type", "datatype": dbt_utils.type_string()},
    {"name": "media_url", "datatype": dbt_utils.type_string()},
    {"name": "permalink", "datatype": dbt_utils.type_string()},
    {"name": "shortcode", "datatype": dbt_utils.type_string()},
    {"name": "thumbnail_url", "datatype": dbt_utils.type_string()},
    {"name": "user_id", "datatype": dbt_utils.type_int()},
    {"name": "username", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
